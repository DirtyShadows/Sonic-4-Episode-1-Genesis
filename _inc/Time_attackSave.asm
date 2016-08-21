; ---------------------------------------------------------------------------
; Subroutine to save time attack records
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Timeattack_save:
		cmpi.b	#1,($FFFFFFFE).l	; is original mode ?
		beq.w	time_rts			; if yes, branch

		move.l	($FFFFFE22).w,d0	; set time to d0
		move.w	($FFFFFE20).w,d1	; set rings to d1
		move.l	($FFFFFE26).l,d4	; set score to d4
		move.w	($FFFFFF96).w,d5	; set monitors broken to d5
		move.w	($FFFFFF98).w,d6	; set rings collected to d6

		lea	($200040).l,a6			; begin of the Time attack SRAM Slot

		moveq	#0,d2					
		move.w	($FFFFFE10).w,d2	; load level number
									; ((Act*2^6)"+Level*$100")/2^2
		lsl.b	#6,d2				; Act*2^6
		lsr.w	#2,d2				; /2^2
		lea	(a6,d2.w),a6			; go to Level Time attack Slot

		tst.b	($FFFFFF89).w		; "Play with Super" is turned?
		beq.s	time_tailstest		; if not, branch
		lea	$170(a6),a6				; go to Super Time attack Slot

time_tailstest:
		tst.b	($FFFFFF8B).w		; is Tails?
		beq.s	time_test			; if not, branch
		lea	$2E0(a6),a6				; go to Tails Time attack Slot

; ---------------------------------------------------------------------------
time_test:
		tst.b	6(a6)			; did you play the level?
		beq.s	time_save_all	; if not, save all

;time_save_time:
		cmp.l	(a6),d0			; is time, higher than the recorded time?
		bge.s	time_save_ring	; if yes, don't save
		move.l	d0,(a6)			; save time

time_save_ring:
		cmp.w	4(a6),d1		; is rings, lower than the recorded rings?
		ble.s	time_save_score	; if yes, don't save
		move.w	d1,4(a6)		; save rings

time_save_score:
		cmp.l	7(a6),d4			; is score, lower than the recorded score?
		ble.s	time_save_monitors	; if yes, don't save
		move.l	d4,7(a6)			; save score

time_save_monitors:
		cmp.w	11(a6),d5				; is monitors broken, lower than the recorded monitors broken?
		ble.s	time_save_ringcollected	; if yes, don't save
		move.w	d5,11(a6)				; save monitors broken

time_save_ringcollected:
		cmp.w	13(a6),d6		; is rings collected, lower than the recorded rings collected?
		ble.s	time_rts		; if yes, don't save
		move.w	d6,13(a6)		; save rings collected
		rts

time_save_all:
		move.l	d0,(a6)			; save time
		move.w	d1,4(a6)		; save rings
		move.b	#1,6(a6)		; save if you played the level
		move.l	d4,7(a6)		; save score
		move.w	d5,11(a6)		; save monitors broken
		move.w	d6,13(a6)		; save rings collected

time_rts:
		rts
; End of function Timeattack_save