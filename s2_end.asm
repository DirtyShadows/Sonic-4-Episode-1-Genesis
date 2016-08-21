; ---------------------------------------------------------------------------
; Subroutine to	code test in the Sound Test
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Menu_Code_Test:
		move.w	($FFFFFF0C).w,d0	; Get the number of correct sound IDs entered so far
		adda.w	d0,a0				; Skip to the next entry
		move.w	($FFFFFF84).w,d0	; get sound selected
		cmp.b	(a0),d0				; does sound selected match the cheat code?
		bne.s	Menu_Reset_Code_Counter	; if not, branch
		addq.w	#1,($FFFFFF0C).w	; Add 1 to the number of correct entries
		tst.b	1(a0)				; Is the next entry 0?
		bne.s	Menu_Code_Test_2	; If not, branch
		tst.w	d2					; Test this to determine which cheat to enable
		bne.s	Menu_Set_DebugMode	; If not 0, branch

		move.b	#$01,(a1)			; Enable the cheat (Level Select)		
		bra.s	Menu_Test_1_Sound
; ===========================================================================
Menu_Set_DebugMode:
	;	move.w	#$0101,(a1)			; Enable the cheat (Debug Mode)	
		move.b	#$01,(Slow_Motion_Flag).w	; activate slow motion & frame advance cheat flag
		move.b	#$01,(Debug_Mode_Flag).w	; activate debug mode cheat flag

Menu_Test_1_Sound:
		move.b	#Ring_Snd,d0
		bsr.w	PlaySound		; play ring sound

Menu_Reset_Code_Counter:
		move.w	#0,($FFFFFF0C).w	; Clear the number of correct entries

; ===========================================================================
Menu_Code_Test_2:		; Do the same procedure with the other cheat
		move.w	($FFFFFF0E).w,d0	; Get the number of correct sound IDs entered so far
		adda.w	d0,a2				; Skip to the next entry
		move.w	($FFFFFF84).w,d0	; get sound selected
		cmp.b	(a2),d0				; does sound selected match the cheat code?
		bne.s	Menu_Reset_Code_Counter_2	; if not, branch
		addq.w	#1,($FFFFFF0E).w	; Add 1 to the number of correct entries
		tst.b	1(a2)				; Is the next entry 0?
		bne.s	Menu_Code_Not_0xFF 
		tst.w	d2					; Test this to determine which cheat to enable
		bne.s	Menu_Set_All_Emeralds	; If not 0, branch

		move.b	#$F,(Continue_count).w		; Give 15 continues
		; The next line causes the bug where the OOZ music plays until reset.
		; Remove "&$7F" to fix the bug.
		move.b	#SndID_ContinueJingle,d0
		bsr.w	PlaySound					; play extra continue sound
		bra.s	Menu_Reset_Code_Counter_2
; ===========================================================================
Menu_Set_All_Emeralds:
		move.b	#$06,($FFFFFE57).w	; set number of chaos emeralds to 6
		move.b	#Emerald_Snd,d0
		bsr.w	PlaySound			; play emerald music

Menu_Reset_Code_Counter_2:
		move.w	#0,($FFFFFF0E).w	; Clear the number of correct entries

Menu_Code_Not_0xFF:
		rts
; End of function Menu_Code_Test
; ===========================================================================
; ---------------------------------------------------------------------------
; Level	select codes
; ---------------------------------------------------------------------------
Code_Level_Select:
		dc.b	$19, $65, 9, $17, 0
		even
Code_Continues:
		dc.b	1, 1, 2, 4, 0	; byte_97B7
		even
Code_Debug_Mode:
		dc.b	1, 9, 9, 2, 1, 1, 2, 4, 0
		even
Code_All_Emeralds:
		dc.b	4, 1, 2, 6, 0
		even
; ===========================================================================

; ---------------------------------------------------------------------------
; Subroutine to	Dynamic Menu
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Dynamic_Menu:
		subq.b	#$01,($FFFFF7B9).w			; Decrementa em 1 o Tempo
		bpl.s	Exit_Dinamic_Menu			; Se for maior ou igual a 0 sai da função
		move.b	#$07,($FFFFF7B9).w			; Inicializa o tempo de duração de cada frame
		move.b	($FFFFF7B8).w,d0			; Carrega o Id do Frame Atual em D0
		addq.b	#$01,($FFFFF7B8).w			; Carrega o próximo frame em $FFFFFFB8
		andi.w	#$001F,d0
		move.b	Sonic_Miles_Frame_Select(pc,d0),d0	; Carrega o Id do frame em D0
	;	muls.w	#$0140,d0			; Multiplica o Id pelo tamanho em bytes de cada frame
		lsl.w	#$06,d0
		lea		($00C00000),a6
		move.l	#$40200000,$0004(a6)
		lea		(Art_Sonic_Miles),a1
		lea		$00(a1,d0),a1
		move.w	#$0009,d0		; Tiles-1 a serem carregados por vez 

Menu_Loop_Load_Tiles:
		move.l	(a1)+,(a6)
		move.l	(a1)+,(a6)
		move.l	(a1)+,(a6)
		move.l	(a1)+,(a6)
		move.l	(a1)+,(a6)
		move.l	(a1)+,(a6)
		move.l	(a1)+,(a6)
		move.l	(a1)+,(a6)
		dbra	d0,Menu_Loop_Load_Tiles

Exit_Dinamic_Menu:
		rts
; End of function Dynamic_Menu


;-------------------------------------------------------------------------------
Sonic_Miles_Frame_Select:
		dc.b	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b	$05,$0A
		dc.b	$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
		dc.b	$0A,$05
		even
		; 0 = 0000000000  ; 1 = 0101000000  ; 2 = 1010000000 ; 3 = 1111000000