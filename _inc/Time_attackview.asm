; ---------------------------------------------------------------------------
; Subroutine to view time attack records
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Timeattack_view:
		lea	($200040).l,a5			; begin of the Time attack SRAM Slot
		tst.b	($FFFFFF89).w		; "Play with Super" is turned?
		beq.s	timeview_tailstest	; if not, branch
		lea	$170(a5),a5				; go to Super Time attack Slot

timeview_tailstest:
		tst.b	($FFFFFF8B).w		; is Tails?
		beq.s	timeview_level		; if not, branch
		lea	$2E0(a5),a5				; go to Tails Time attack Slot

; ---------------------------------------------------------------------------

timeview_level:
		move.l	#$60B00003,d4		; first position in screen, all other positions in screen depend on this

; Green hill
		move.w	#3,d5	; load all 4 acts of Green Hill
		bsr.s	TimAtk_get_min_sec_cen

; Marble
		lea	$40(a5),a5	; Load Marble Slot
		move.w	#3,d5	; load all 4 acts of Marble
		bsr.s	TimAtk_get_min_sec_cen

; Spring Yard
		lea	$40(a5),a5	; Load Spring Yard Slot
		move.w	#3,d5	; load all 4 acts of Spring Yard
		bsr.s	TimAtk_get_min_sec_cen

; Star Light
		lea	-$80(a5),a5	; Load Star Light Slot
		move.w	#3,d5	; load all 4 acts of Star Light
		bsr.s	TimAtk_get_min_sec_cen

; Labyrinth
		lea	-$C0(a5),a5	; Load Labyrinth Slot
		move.w	#2,d5	; load all acts of Labyrinth without the SBZ3/LZ4
		bsr.s	TimAtk_get_min_sec_cen

; Scrap Brain
		lea	$D0(a5),a5	; Load Scrap Brain Slot
		move.w	#1,d5	; load all 4 acts of Scrap Brain without the FZ and without the unused SBZ4
		bsr.s	TimAtk_get_min_sec_cen

; Scrap Brain 3 / Labyrinth 4
		lea	-$F0(a5),a5	; Load Scrap Brain 3 / Labyrinth 4 Slot
		move.w	#0,d5	; only load SBZ3/LZ4
		bsr.s	TimAtk_get_min_sec_cen

; Final Zone
		lea	$E0(a5),a5	; Load Final Zone Slot
		move.w	#0,d5	; only load Final Zone
	;	bsr.s	TimAtk_get_min_sec_cen
	;	rts
; ---------------------------------------------------------------------------

TimAtk_get_min_sec_cen:
		move.l	d4,4(a6)	; screen position (minutes)
		move.b	1(a5),d0	; set the minutes to d0
		move.b	6(a5),d2	; set if you played the level or not
		bsr.s	Hex2dec_minutes
		add.l	#$60000,d4	; next screen position

		move.l	d4,4(a6)	; screen position (seconds)
		move.b	2(a5),d0	; set the seconds to d0
		move.b	6(a5),d2	; set if you played the level or not
		bsr.s	Hex2dec_seconds
		add.l	#$60000,d4	; next screen position

		move.l	d4,4(a6)	; screen position (centiseconds)
		move.b	3(a5),d0	; set the centiseconds to d0
		move.b	6(a5),d2	; set if you played the level or not
		bsr.s	Hex2dec_centiseconds
		lea	$10(a5),a5		; next Slot
		add.l	#$740000,d4

		dbf	d5,TimAtk_get_min_sec_cen
		rts
; End of function Timeattack_view