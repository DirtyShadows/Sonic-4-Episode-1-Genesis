; d4 = 0 - save all
; d4 = 1 - save all with a predetermined level 
; d4 = 2 - only save the Time Attack, if was time attack flag set
; d5 = number of the predetermined level 
; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to Save to SRAM the information needed to Load Auto Save and Time Attack
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Save_Progress:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		cmpi.b	#$63,($200001).l				; number of lives in sram is more than 99?
		bgt.w	Livesfix		; if yes, branch
		cmpi.b	#0,($200001).l				; number of lives in sram is more than 99?
		blt.w	Livesfix2		; if yes, branch
		cmpi.b	#$18,($FFFFF600).w ; is	scene number $18 (ending)?
		beq.w UnlockLevels
		move.b ($FFFFFE12).w,($200001).l
		move.b ($200001).l,($20011F).l
		move.b	($FFFFFE56).w,($20012D).l ; save emeralds
		move.b	($FFFFFE57).w,($200121).l ; save emeralds
		move.b	($FFFFFE58).w,($200123).l ; save emeralds
		move.b	($FFFFFE59).w,($200125).l ; save emeralds
		move.b	($FFFFFE5A).w,($200127).l ; save emeralds
		move.b	($FFFFFE5B).w,($200129).l ; save emeralds
		move.b	($FFFFFE5C).w,($20012B).l ; save emeralds
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
		bra.s	Save_to_SRAM_rts
Livesfix:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	#$63,($200001).l ; set lives in sram to 99
		move.b	($200001).l,($20011F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
		bra.w	Save_to_SRAM_rts
Livesfix2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	#3,($200001).l ; set lives in sram to 99
		move.b	($200001).l,($20011F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
		bra.s	Save_to_SRAM_rts
UnlockLevels:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b 	#$01,($20002D).l			; add 1 to number of act in sram
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
;		bra.s	Save_to_SRAM_rts

Save_to_SRAM_rts:
		rts
; End of function Save_to_SRAM