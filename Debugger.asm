WHITE EQU 0<<13
BLUE  EQU 1<<13
RED   EQU 2<<13
GREEN EQU 3<<13
; ===========================================================================
; Make sure these point to the correct locations.
;----------------------------------------------------------------------------
; Kosinski compressed art (60 tiles)
; Terminal font; contains all ASCII characters. For the full list of characters,
; see https://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
ArtKos_TerminalFont:	incbin	"_debugger/TerminalFont.bin"
	even
;----------------------------------------------------------------------------
; Palette
; The terminal palette
TerminalPalette:		incbin	"_debugger/TerminalPal.bin"
	even

; =============== S U B	R O U T	I N E =======================================


InitTerminal:				; CODE XREF: CommonErrorInit+2p
		move.w	#$100,($A11100).l

loc_E2226:				; CODE XREF: InitTerminal+10j
		btst	#0,($A11100).l
		bne.s	loc_E2226
		lea	($C00004).l,a3
		move.w	#$8004,(a3)
		move.w	#$8114,(a3)
		move.w	#$8230,(a3)
		move.w	#$833C,(a3)
		move.w	#$8407,(a3)
		move.w	#$857C,(a3)
		move.w	#$8600,(a3)
		move.w	#$8700,(a3)
		move.w	#$8800,(a3)
		move.w	#$8900,(a3)
		move.w	#$8AFF,(a3)
		move.w	#$8B00,(a3)
		move.w	#$8C81,(a3)
		move.w	#$8D37,(a3)
		move.w	#$8E00,(a3)
		move.w	#$8F02,(a3)
		move.w	#$9001,(a3)
		move.w	#$9100,(a3)
		move.w	#$9200,(a3)
		lea	($C00004).l,a5
		move.l	#$94009340,(a5)
		lea	TerminalPalette,a1
		move.l	a1,d1
		move.w	#$9500,d0
		lsr.l	#1,d1
		move.b	d1,d0
		move.w	d0,(a5)
		move.w	#$9600,d0
		lsr.w	#8,d1
		move.b	d1,d0
		move.w	d0,(a5)
		move.w	#$9700,d0
		swap	d1
		move.b	d1,d0
		move.w	d0,(a5)
		move.w	#$C000,(a5)
		move.w	#$80,(a5) ; '€'
		moveq	#0,d0
		lea	($C00000).l,a1
		move.l	#$40000010,(a3)
		move.l	d0,(a1)
		lea	($C00004).l,a5
		move.w	#$8F01,(a5)
		move.l	#$94FF93FF,(a5)
		move.w	#$9780,(a5)
		move.l	#$40000080,(a5)
		move.w	#0,($C00000).l

loc_E22EC:				; CODE XREF: InitTerminal+D4j
		move.w	(a5),d1
		btst	#1,d1
		bne.s	loc_E22EC
		move.w	#$8F02,(a5)
		lea	ArtKos_TerminalFont,a0
		lea	($FFFF0000).l,a1
		jsr	KosDec
		lea	($C00004).l,a5
		move.l	#$94069300,(a5)
		move.l	#$96809500,(a5)
		move.w	#$977F,(a5)
		move.w	#$4420,(a5)
		move.w	#$80,(a5) ; '€'
		move.w	#$22F,d0
		moveq	#0,d1
		lea	($FFFF0000).l,a5

loc_E2330:				; CODE XREF: InitTerminal+114j
		move.l	d1,(a5)+
		dbf	d0,loc_E2330
		rts
; End of function InitTerminal


; =============== S U B	R O U T	I N E =======================================


DrawTerminal:				; CODE XREF: ROM:loc_E3FA6p
		lea	($FFFF0000).l,a1
		lea	($C00000).l,a3
		lea	($C00004).l,a2
		move.l	#$800000,d4
		move.l	#$40000003,d0
		moveq	#$27,d1	; '''
		moveq	#$1B,d2

loc_E235A:				; CODE XREF: DrawTerminal+2Ej
		move.l	d0,(a2)
		move.w	d1,d3

loc_E235E:				; CODE XREF: DrawTerminal+28j
		move.w	(a1)+,(a3)
		dbf	d3,loc_E235E
		add.l	d4,d0
		dbf	d2,loc_E235A
		move.w	#$8154,(a2)
		rts
; End of function DrawTerminal


; =============== S U B	R O U T	I N E =======================================


Print_Message:				; CODE XREF: ROM:000E24E0p
					; ROM:loc_E24F8p ...
		move.w	d1,-(sp)
		move.w	(a1)+,d1
		beq.s	loc_E237E
		subq.w	#1,d1

loc_E2378:				; CODE XREF: Print_Message+Aj
		move.w	(a1)+,(a5)+
		dbf	d1,loc_E2378

loc_E237E:				; CODE XREF: Print_Message+4j
		move.w	(sp)+,d1
		rts
; End of function Print_Message


; =============== S U B	R O U T	I N E =======================================


sub_E2382:				; CODE XREF: ROM:000E2EA4p
					; Reg_Addr_Index_Indirect+6p
		tst.b	d0
		bpl.s	sub_E238C
		move.w	#$2D,(a5)+ ; '-'
		neg.b	d0
; End of function sub_E2382


; =============== S U B	R O U T	I N E =======================================


sub_E238C:				; CODE XREF: sub_E2382+2j
					; ROM:000E2552p ...
		move.w	#$24,(a5)+ ; '$'
; End of function sub_E238C


; =============== S U B	R O U T	I N E =======================================


sub_E2390:				; CODE XREF: ROM:000E3F68p
		moveq	#1,d2
		move.w	d1,-(sp)

loc_E2394:				; CODE XREF: sub_E2390+16j
		rol.b	#4,d0
		move.b	d0,d1
		andi.w	#$F,d1
		move.b	Hex2Char(pc,d1.w),d1
		addi.w	#$4000,d1
		move.w	d1,(a5)+
		dbf	d2,loc_E2394
		move.w	(sp)+,d1
		rts
; End of function sub_E2390


; =============== S U B	R O U T	I N E =======================================


Print_Word_Signed:			; CODE XREF: ROM:000E25A0p
					; Reg_Addr_Disp_Indirect+4p ...
		tst.w	d0
		bpl.s	Print_Word
		move.w	#$2D,(a5)+ ; '-'
		neg.w	d0
; End of function Print_Word_Signed


; =============== S U B	R O U T	I N E =======================================


Print_Word:				; CODE XREF: Print_Word_Signed+2j
					; ROM:000E330Ej ...
		move.w	#$24,(a5)+ ; '$'
		moveq	#3,d2
		move.w	d1,-(sp)

loc_E23C0:				; CODE XREF: Print_Word+1Aj
		rol.w	#4,d0
		move.b	d0,d1
		andi.w	#$F,d1
		move.b	Hex2Char(pc,d1.w),d1
		addi.w	#$4000,d1
		move.w	d1,(a5)+
		dbf	d2,loc_E23C0
		move.w	(sp)+,d1
		rts
; End of function Print_Word

; ---------------------------------------------------------------------------
Hex2Char:	dc.b $30		; DATA XREF: sub_E2390+Cr
					; Print_Word+10r ...
		dc.b $31 ; 1
		dc.b $32 ; 2
		dc.b $33 ; 3
		dc.b $34 ; 4
		dc.b $35 ; 5
		dc.b $36 ; 6
		dc.b $37 ; 7
		dc.b $38 ; 8
		dc.b $39 ; 9
		dc.b $41 ; A
		dc.b $42 ; B
		dc.b $43 ; C
		dc.b $44 ; D
		dc.b $45 ; E
		dc.b $46 ; F

; =============== S U B	R O U T	I N E =======================================


Print_Address:				; CODE XREF: ROM:000E2D12j
					; ROM:000E2E00j ...
		move.w	#$24,(a5)+ ; '$'
		swap	d0
		moveq	#1,d2
		move.w	d1,-(sp)

loc_E23F4:				; CODE XREF: Print_Address+1Cj
		rol.b	#4,d0
		move.b	d0,d1
		andi.w	#$F,d1
		move.b	Hex2Char(pc,d1.w),d1
		addi.w	#$4000,d1
		move.w	d1,(a5)+
		dbf	d2,loc_E23F4
		move.w	(sp)+,d1
		swap	d0
		moveq	#3,d2
		move.w	d1,-(sp)

loc_E2412:				; CODE XREF: Print_Address+3Aj
		rol.w	#4,d0
		move.b	d0,d1
		andi.w	#$F,d1
		move.b	Hex2Char(pc,d1.w),d1
		addi.w	#$4000,d1
		move.w	d1,(a5)+
		dbf	d2,loc_E2412
		move.w	(sp)+,d1
		rts
; End of function Print_Address

; ---------------------------------------------------------------------------
		tst.l	d0
		bpl.s	Print_Long
		move.w	#$2D,(a5)+ ; '-'
		neg.l	d0

; =============== S U B	R O U T	I N E =======================================


Print_Long:				; CODE XREF: ROM:000E242Ej
					; Immediate+18j ...
		move.w	#$24,(a5)+ ; '$'

loc_E243A:				; CODE XREF: ROM:000E3F78p
		moveq	#7,d2
		move.w	d1,-(sp)

loc_E243E:				; CODE XREF: Print_Long+1Aj
		rol.l	#4,d0
		move.b	d0,d1
		andi.w	#$F,d1
		move.b	Hex2Char(pc,d1.w),d1
		addi.w	#$4000,d1
		move.w	d1,(a5)+
		dbf	d2,loc_E243E
		move.w	(sp)+,d1
		rts
; End of function Print_Long

; ---------------------------------------------------------------------------

Disassemble_Opcode:			; CODE XREF: ROM:000E3E54j
					; ROM:000E3F16p
		moveq	#0,d4
		move.w	d5,d0
		andi.w	#$F000,d0
		rol.w	#5,d0
		move.w	OpCodeMap(pc,d0.w),d0
		jmp	OpCodeMap(pc,d0.w)
; ---------------------------------------------------------------------------
OpCodeMap:	dc.w Dis_BitMan_MoveP_Immed-OpCodeMap ;	DATA XREF: ROM:000E2462r
					; ROM:OpCodeMapo ...
		dc.w Dis_MoveByte-OpCodeMap
		dc.w Dis_MoveByte-OpCodeMap
		dc.w Dis_MoveByte-OpCodeMap
		dc.w Dis_Miscellaneous-OpCodeMap
		dc.w Dis_AddQ_SubQ_Scc_DBcc-OpCodeMap
		dc.w Dis_Bcc_Bsr_Bra-OpCodeMap
		dc.w Dis_MoveQ-OpCodeMap
		dc.w Dis_Or_Div_Sbcd-OpCodeMap
		dc.w Dis_Sub_SubX-OpCodeMap
		dc.w Line1010Emulator-OpCodeMap
		dc.w Dis_Cmp_Eor-OpCodeMap
		dc.w Dis_And_Mul_Abcd_Exg-OpCodeMap
		dc.w Dis_Add_AddX-OpCodeMap
		dc.w Dis_Shift_Rotate-OpCodeMap
		dc.w Line1010Emulator-OpCodeMap
; ---------------------------------------------------------------------------

Dis_BitMan_MoveP_Immed:			; DATA XREF: ROM:OpCodeMapo
		move.w	d5,d0
		andi.w	#$5BF,d0
		cmpi.w	#$3C,d0	; '<'
		beq.w	loc_E260E
		move.w	d5,d0
		andi.w	#$F00,d0
		cmpi.w	#$800,d0
		beq.s	loc_E2518
		cmpi.w	#$E00,d0
		beq.w	IllegalInstruction
		move.w	d5,d0
		andi.w	#$1C0,d0
		cmpi.w	#$C0,d0	; 'À'
		beq.w	IllegalInstruction
		btst	#8,d5
		beq.w	loc_E25C8
		move.w	d5,d0
		andi.w	#$38,d0	; '8'
		cmpi.w	#8,d0
		beq.w	loc_E255E
		move.w	d5,d2
		andi.w	#$C0,d2	; 'À'
		lsr.w	#5,d2
		lea	Bitman_Msgs(pc),a1
		adda.w	(a1,d2.w),a1
		bsr.w	Print_Message
		lea	LongSize(pc),a1
		moveq	#2,d3
		move.b	d5,d1
		andi.b	#$38,d1	; '8'
		beq.s	loc_E24F8
		lea	ByteSize(pc),a1
		moveq	#0,d3

loc_E24F8:				; CODE XREF: ROM:000E24F0j
		bsr.w	Print_Message
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		bsr.w	Reg_Data_Direct
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E2518:				; CODE XREF: ROM:000E24A2j
		move.w	d5,d2
		andi.w	#$C0,d2	; 'À'
		lsr.w	#5,d2
		lea	Bitman_Msgs(pc),a1
		adda.w	(a1,d2.w),a1
		bsr.w	Print_Message
		lea	LongSize(pc),a1
		moveq	#2,d3
		move.b	d5,d1
		andi.b	#$38,d1	; '8'
		beq.s	loc_E2540
		lea	ByteSize(pc),a1
		moveq	#0,d3

loc_E2540:				; CODE XREF: ROM:000E2538j
		bsr.w	Print_Message
		move.w	d5,d1
		moveq	#2,d4
		jsr	(a4)
		lea	(a3),a2
		move.w	(a2)+,d0
		move.w	#$23,(a5)+ ; '#'
		bsr.w	sub_E238C
		move.w	#$2C,(a5)+ ; ','
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E255E:				; CODE XREF: ROM:000E24CCj
		lea	MovePmsg(pc),a1
		bsr.w	Print_Message
		lea	WordSize(pc),a1
		moveq	#1,d3
		btst	#6,d5
		beq.s	loc_E257A
		add.b	d3,d3
		lea	LongSize(pc),a1
		moveq	#2,d3

loc_E257A:				; CODE XREF: ROM:000E2570j
		bsr.w	Print_Message
		btst	#7,d5
		beq.s	loc_E2594
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		bsr.w	Reg_Data_Direct
		move.w	#$2C,(a5)+ ; ','

loc_E2594:				; CODE XREF: ROM:000E2582j
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		move.w	(a2)+,d0
		beq.s	loc_E25A4
		bsr.w	Print_Word_Signed

loc_E25A4:				; CODE XREF: ROM:000E259Ej
		move.w	d5,d1
		andi.w	#7,d1
		moveq	#2,d4
		btst	#7,d5
		bne.w	Reg_Addr_Indirect
		bsr.w	Reg_Addr_Indirect
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		bra.w	Reg_Data_Direct
; ---------------------------------------------------------------------------

loc_E25C8:				; CODE XREF: ROM:000E24BEj
		move.w	d5,d1
		andi.w	#$E00,d1
		lsr.w	#8,d1
		cmpi.b	#8,d1
		beq.w	IllegalInstruction
		lea	Immed_Msgs(pc),a1
		adda.w	(a1,d1.w),a1
		bsr.w	Print_Message
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message
		lsr.w	#1,d3
		move.w	d5,d1
		moveq	#2,d4
		jsr	(a4)
		lea	(a3),a2
		bsr.w	Immediate
		move.w	#$2C,(a5)+ ; ','
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E260E:				; CODE XREF: ROM:000E2494j
		move.w	d5,d1
		andi.w	#$E00,d1
		lsr.w	#8,d1
		cmpi.b	#8,d1
		beq.w	IllegalInstruction
		lea	Immed_Msgs(pc),a1
		adda.w	(a1,d1.w),a1
		bsr.w	Print_Message
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message
		eori.w	#2,d3
		lea	Immed_to_CCR_SR_Msgs(pc),a1
		adda.w	(a1,d3.w),a1
		lsr.w	#1,d3
		move.w	d5,d1
		moveq	#2,d4
		jsr	(a4)
		lea	(a3),a2
		bsr.w	Immediate
		move.w	#$2C,(a5)+ ; ','
		bra.w	Print_Message
; ---------------------------------------------------------------------------
Bitman_Msgs:	dc.w Btstmsg-Bitman_Msgs ; DATA	XREF: ROM:000E24D8o
					; ROM:000E2520o ...
		dc.w Bchgmsg-Bitman_Msgs
		dc.w Bclrmsg-Bitman_Msgs
		dc.w Bsetmsg-Bitman_Msgs
Immed_Msgs:	dc.w Orimsg-Immed_Msgs	; DATA XREF: ROM:000E25D8o
					; ROM:000E261Eo ...
		dc.w Andimsg-Immed_Msgs
		dc.w Subimsg-Immed_Msgs
		dc.w Addimsg-Immed_Msgs
		dc.w IllegalInstructionMsg-Immed_Msgs
		dc.w Eorimsg-Immed_Msgs
		dc.w Cmpimsg-Immed_Msgs
		dc.w IllegalInstructionMsg-Immed_Msgs
Immed_to_CCR_SR_Msgs:dc.w SRegmsg-Immed_to_CCR_SR_Msgs ; DATA XREF: ROM:000E2642o
					; ROM:Immed_to_CCR_SR_Msgso ...
		dc.w CCRmsg-Immed_to_CCR_SR_Msgs
		dc.w CCRmsg-Immed_to_CCR_SR_Msgs
		dc.w SRegmsg-Immed_to_CCR_SR_Msgs
Btstmsg:	dc.b 0			; DATA XREF: ROM:Bitman_Msgso
		dc.b   4
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $74 ; t
Bchgmsg:	dc.b   0		; DATA XREF: ROM:000E2662o
		dc.b   4
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $68 ; h
		dc.b $20
		dc.b $67 ; g
Bclrmsg:	dc.b   0		; DATA XREF: ROM:000E2664o
		dc.b   4
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $72 ; r
Bsetmsg:	dc.b   0		; DATA XREF: ROM:000E2666o
		dc.b   4
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $74 ; t
Orimsg:		dc.b 0			; DATA XREF: ROM:Immed_Msgso
		dc.b   3
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $69 ; i
Andimsg:	dc.b 0			; DATA XREF: ROM:000E266Ao
		dc.b   4
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $69 ; i
Subimsg:	dc.b 0			; DATA XREF: ROM:000E266Co
		dc.b   4
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $69 ; i
Addimsg:	dc.b   0		; DATA XREF: ROM:000E266Eo
		dc.b   4
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $69 ; i
Eorimsg:	dc.b 0			; DATA XREF: ROM:000E2672o
		dc.b   4
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $69 ; i
Cmpimsg:	dc.b 0			; DATA XREF: ROM:000E2674o
		dc.b   4
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $69 ; i
SRegmsg:	dc.b 0			; DATA XREF: ROM:Immed_to_CCR_SR_Msgso
					; ROM:000E267Eo
		dc.b   2
		dc.b $60 ; `
		dc.b $73 ; s
		dc.b $60 ; `
		dc.b $72 ; r
CCRmsg:		dc.b 0			; DATA XREF: ROM:000E267Ao
					; ROM:000E267Co
		dc.b   3
		dc.b $60 ; `
		dc.b $63 ; c
		dc.b $60 ; `
		dc.b $63 ; c
		dc.b $60 ; `
		dc.b $72 ; r
MovePmsg:	dc.b   0		; DATA XREF: ROM:loc_E255Eo
		dc.b   5
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $76 ; v
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $70 ; p
; ---------------------------------------------------------------------------

Dis_MoveByte:				; DATA XREF: ROM:000E246Co
					; ROM:000E246Eo ...
		lea	Movemsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d1
		lsr.w	#3,d1
		move.w	d1,d2
		andi.w	#$38,d2	; '8'
		lsr.w	#6,d1
		andi.w	#7,d1
		or.w	d2,d1
		cmpi.b	#8,d2
		bne.s	loc_E2720
		move.w	#$2061,(a5)+

loc_E2720:				; CODE XREF: ROM:000E271Aj
		move.w	d5,d3
		andi.w	#$3000,d3
		rol.w	#4,d3
		move.b	MoveSizeMsgs(pc,d3.w),d3
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message
		move.w	d1,-(sp)
		lsr.w	#1,d3
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		move.w	d5,d1
		bsr.w	loc_E33A8
		move.w	#$2C,(a5)+ ; ','
		move.w	(sp)+,d0
		move.w	d0,d1
		bra.w	loc_E33AC
; ---------------------------------------------------------------------------
Movemsg:	dc.b   0		; DATA XREF: ROM:Dis_MoveByteo
					; ROM:loc_E2836o ...
		dc.b   4
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $76 ; v
		dc.b $20
		dc.b $65 ; e
MoveSizeMsgs:	dc.b 6			; DATA XREF: ROM:000E2728r
		dc.b   0
		dc.b   4
		dc.b   2
; ---------------------------------------------------------------------------

Dis_Miscellaneous:			; DATA XREF: ROM:000E2472o
		btst	#8,d5
		bne.w	loc_E2AF0
		btst	#$B,d5
		beq.w	loc_E2A62
		move.w	d5,d0
		andi.w	#$600,d0
		lsr.w	#8,d0
		move.w	MiscOpCodeMap(pc,d0.w),d0
		jmp	MiscOpCodeMap(pc,d0.w)
; ---------------------------------------------------------------------------
MiscOpCodeMap:	dc.w Handle_Ext_Nbcd_Swap_Pea_MoveMToMem-MiscOpCodeMap
					; DATA XREF: ROM:000E277Ar
					; ROM:MiscOpCodeMapo ...
		dc.w Handle_Illegal_Tas_Tst-MiscOpCodeMap
		dc.w Handle_MoveMToReg-MiscOpCodeMap
		dc.w Handle_Trap_LinkW_Unlk_MoveUSP_Reset_Nop_Stop_Rte_Rts_TrapV_Rtr_Jmp_Jsr-MiscOpCodeMap
; ---------------------------------------------------------------------------

Handle_Trap_LinkW_Unlk_MoveUSP_Reset_Nop_Stop_Rte_Rts_TrapV_Rtr_Jmp_Jsr:
					; DATA XREF: ROM:000E2788o
		btst	#7,d5
		bne.w	loc_E2874
		move.w	d5,d1
		andi.w	#$30,d1	; '0'
		beq.s	loc_E27E4
		cmpi.w	#$10,d1
		beq.s	loc_E27F8
		cmpi.w	#$20,d1	; ' '
		beq.w	loc_E2836
		btst	#3,d1
		bne.w	IllegalInstruction
		move.w	d5,d1
		andi.w	#7,d1
		cmpi.w	#2,d1
		beq.s	loc_E27D4
		lsl.w	#1,d1
		cmpi.b	#8,d1
		beq.w	IllegalInstruction
		lea	Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs(pc),a1
		adda.w	(a1,d1.w),a1
		lea	(a3),a2
		bra.w	Print_Message
; ---------------------------------------------------------------------------

loc_E27D4:				; CODE XREF: ROM:000E27BAj
		lea	Stopmsg(pc),a1
		bsr.w	Print_Message
		moveq	#1,d3
		lea	(a3),a2
		bra.w	Immediate
; ---------------------------------------------------------------------------

loc_E27E4:				; CODE XREF: ROM:000E2798j
		lea	Trapmsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d0
		andi.w	#$F,d0
		lea	(a3),a2
		bra.w	sub_E238C
; ---------------------------------------------------------------------------

loc_E27F8:				; CODE XREF: ROM:000E279Ej
		btst	#3,d5
		beq.s	loc_E2812
		lea	Unlkmsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d1
		andi.w	#7,d1
		lea	(a3),a2
		bra.w	Reg_Addr_Direct
; ---------------------------------------------------------------------------

loc_E2812:				; CODE XREF: ROM:000E27FCj
		lea	Linkmsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d1
		andi.w	#7,d1
		bsr.w	Reg_Addr_Direct
		move.w	#$2C,(a5)+ ; ','
		moveq	#1,d3
		move.w	d5,d1
		moveq	#2,d4
		jsr	(a4)
		lea	(a3),a2
		bra.w	Immediate
; ---------------------------------------------------------------------------

loc_E2836:				; CODE XREF: ROM:000E27A4j
		lea	Movemsg(pc),a1
		bsr.w	Print_Message
		lea	LongSize(pc),a1
		bsr.w	Print_Message
		lea	(a3),a2
		move.w	d5,d1
		andi.w	#7,d1
		btst	#3,d5
		beq.s	loc_E2864
		lea	USPmsg(pc),a1
		bsr.w	Print_Message
		move.w	#$2C,(a5)+ ; ','
		bra.w	Reg_Addr_Direct
; ---------------------------------------------------------------------------

loc_E2864:				; CODE XREF: ROM:000E2852j
		bsr.w	Reg_Addr_Direct
		move.w	#$2C,(a5)+ ; ','
		lea	USPmsg(pc),a1
		bra.w	Print_Message
; ---------------------------------------------------------------------------

loc_E2874:				; CODE XREF: ROM:000E278Ej
		lea	Jmpmsg(pc),a1
		btst	#6,d5
		bne.s	loc_E2882
		lea	Jsrmsg(pc),a1

loc_E2882:				; CODE XREF: ROM:000E287Cj
		bsr.w	Print_Message
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

Handle_Ext_Nbcd_Swap_Pea_MoveMToMem:	; DATA XREF: ROM:MiscOpCodeMapo
		btst	#7,d5
		beq.s	loc_E28A4
		move.w	d5,d1
		andi.w	#$38,d1	; '8'
		beq.s	loc_E28FC
		bra.w	loc_E292A
; ---------------------------------------------------------------------------

loc_E28A4:				; CODE XREF: ROM:000E2896j
		move.w	d5,d1
		andi.w	#$38,d1	; '8'
		cmpi.w	#8,d1
		beq.w	IllegalInstruction
		btst	#6,d5
		beq.s	loc_E28E6
		tst.b	d1
		beq.s	loc_E28D2
		lea	Peamsg(pc),a1
		bsr.w	Print_Message
		moveq	#2,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E28D2:				; CODE XREF: ROM:000E28BAj
		lea	Swapmsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d1
		andi.w	#7,d1
		lea	(a3),a2
		bra.w	Reg_Data_Direct
; ---------------------------------------------------------------------------

loc_E28E6:				; CODE XREF: ROM:000E28B6j
		lea	Nbcdmsg(pc),a1
		bsr.w	Print_Message
		moveq	#0,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E28FC:				; CODE XREF: ROM:000E289Ej
		lea	Extmsg(pc),a1
		bsr.w	Print_Message
		lea	WordSize(pc),a1
		btst	#6,d5
		beq.s	loc_E2912
		lea	LongSize(pc),a1

loc_E2912:				; CODE XREF: ROM:000E290Cj
		bsr.w	Print_Message
		move.w	d5,d1
		andi.w	#7,d1
		lea	(a3),a2
		bra.w	Reg_Data_Direct
; ---------------------------------------------------------------------------

Handle_MoveMToReg:			; DATA XREF: ROM:000E2786o
		btst	#7,d5
		beq.w	IllegalInstruction

loc_E292A:				; CODE XREF: ROM:000E28A0j
		move.w	a5,d0
		add.w	#$48,d0	; 'H'
		move.w	d0,-(sp)
		lea	MoveMmsg(pc),a1
		bsr.w	Print_Message
		lea	WordSize(pc),a1
		moveq	#1,d3
		btst	#6,d5
		beq.s	loc_E294C
		lea	LongSize(pc),a1
		add.w	d3,d3

loc_E294C:				; CODE XREF: ROM:000E2944j
		bsr.w	Print_Message
		move.w	d5,d1
		moveq	#2,d4
		jsr	(a4)
		movea.w	(sp)+,a0
		lea	(a3),a2
		move.w	(a2)+,d0
		lea	Normal_Next_Reg,a4
		btst	#$A,d5
		bne.s	loc_E2982
		move.w	d5,d1
		andi.w	#$38,d1	; '8'
		cmpi.w	#$20,d1	; ' '
		bne.s	loc_E2976
		lea	Predecr_Next_Reg,a4

loc_E2976:				; CODE XREF: ROM:000E2970j
		bsr.s	sub_E29A0
		move.w	#$2C,(a5)+ ; ','
		bsr.s	sub_E29EE
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E2982:				; CODE XREF: ROM:000E2964j
		move.w	d0,-(sp)
		bsr.w	loc_E33A8
		move.w	(sp)+,d0
		move.w	#$2C,(a5)+ ; ','
		bra.s	sub_E29A0
; ---------------------------------------------------------------------------

; ===========================================================================
Normal_Next_Reg:
	lsr.w	#1,d0
	rts
; ---------------------------------------------------------------------------
Normal_Put_Back:
	roxl.w	#1,d0
	rts
; ===========================================================================
Predecr_Next_Reg:
	lsl.w	#1,d0
	rts
;	if *-Predecr_Next_Reg>Normal_Put_Back-Normal_Next_Reg
;	fail "The code in Predecr_Next_Reg must not be larger than the code in Normal_Next_Reg"
;	endif
;	org Predecr_Next_Reg+Normal_Put_Back-Normal_Next_Reg
Predecr_Put_Back:
	roxr.w	#1,d0
	rts

; =============== S U B	R O U T	I N E =======================================


sub_E29A0:				; CODE XREF: ROM:loc_E2976p
					; ROM:000E298Ej
		moveq	#$F,d3

loc_E29A2:				; CODE XREF: sub_E29A0+4j
					; sub_E29A0+3Aj
		jsr	(a4)
		dbcs	d3,loc_E29A2
		move.w	d3,d2
		bmi.s	locret_E29DE

loc_E29AC:				; CODE XREF: sub_E29A0+Ej
		jsr	(a4)
		dbcc	d3,loc_E29AC
		jsr	4(a4)
		tst.w	d3
		bpl.s	loc_E29BC
		addq.w	#1,d3

loc_E29BC:				; CODE XREF: sub_E29A0+18j
		cmp.w	d3,d2
		beq.s	loc_E29CA
		moveq	#$F,d1
		sub.w	d2,d1
		bsr.s	sub_E29E0
		move.w	#$2D,(a5)+ ; '-'

loc_E29CA:				; CODE XREF: sub_E29A0+1Ej
		moveq	#$F,d1
		sub.w	d3,d1
		bsr.s	sub_E29E0
		tst.w	d0
		beq.s	locret_E29DE
		move.w	#$2F,(a5)+ ; '/'
		bsr.s	sub_E29EE
		dbf	d3,loc_E29A2

locret_E29DE:				; CODE XREF: sub_E29A0+Aj
					; sub_E29A0+32j
		rts
; End of function sub_E29A0


; =============== S U B	R O U T	I N E =======================================


sub_E29E0:				; CODE XREF: sub_E29A0+24p
					; sub_E29A0+2Ep
		cmpi.b	#8,d1
		bcs.w	Reg_Data_Direct
		subq.w	#8,d1
		bra.w	Reg_Addr_Direct
; End of function sub_E29E0


; =============== S U B	R O U T	I N E =======================================


sub_E29EE:				; CODE XREF: ROM:000E297Cp
					; sub_E29A0+38p
		move.w	a0,d1
		sub.w	a5,d1
		asr.w	#1,d1
		cmpi.w	#8,d1
		bcc.s	locret_E2A1A
		moveq	#$20,d2	; ' '
		subq.w	#2,d1
		bmi.s	loc_E2A0E

loc_E2A00:				; CODE XREF: sub_E29EE+14j
		move.w	d2,(a5)+
		dbf	d1,loc_E2A00
		move.w	#$5C,(a5)+ ; '\'
		move.w	#$20,(a5)+ ; ' '

loc_E2A0E:				; CODE XREF: sub_E29EE+10j
		moveq	#$C,d1

loc_E2A10:				; CODE XREF: sub_E29EE+24j
		move.w	d2,(a5)+
		dbf	d1,loc_E2A10
		adda.w	#$50,a0	; 'P'

locret_E2A1A:				; CODE XREF: sub_E29EE+Aj
		rts
; End of function sub_E29EE

; ---------------------------------------------------------------------------

Handle_Illegal_Tas_Tst:			; DATA XREF: ROM:000E2784o
		move.w	d5,d1
		andi.w	#$C0,d1	; 'À'
		cmpi.w	#$C0,d1	; 'À'
		bne.s	loc_E2A5C
		move.w	d5,d1
		andi.w	#$3F,d1	; '?'
		cmpi.w	#$3A,d1	; ':'
		beq.w	IllegalInstruction
		cmpi.w	#$3C,d1	; '<'
		beq.s	loc_E2A52
		lea	Tasmsg(pc),a1
		bsr.w	Print_Message
		moveq	#0,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E2A52:				; CODE XREF: ROM:000E2A3Aj
		lea	Illegalmsg(pc),a1
		lea	(a3),a2
		bra.w	Print_Message
; ---------------------------------------------------------------------------

loc_E2A5C:				; CODE XREF: ROM:000E2A26j
		lea	Tstmsg(pc),a1
		bra.s	loc_E2A7E
; ---------------------------------------------------------------------------

loc_E2A62:				; CODE XREF: ROM:000E276Ej
		move.w	d5,d1
		andi.w	#$C0,d1	; 'À'
		cmpi.w	#$C0,d1	; 'À'
		beq.s	loc_E2AA4
		move.w	d5,d1
		andi.w	#$600,d1
		lsr.w	#8,d1
		lea	NegX_Clr_Neg_Notmsgs(pc),a1
		adda.w	(a1,d1.w),a1

loc_E2A7E:				; CODE XREF: ROM:000E2A60j
		bsr.w	Print_Message
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message
		lsr.w	#1,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E2AA4:				; CODE XREF: ROM:000E2A6Cj
		lea	Movemsg(pc),a1
		bsr.w	Print_Message
		lea	WordSize(pc),a1
		bsr.w	Print_Message
		moveq	#1,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		btst	#$A,d5
		beq.s	loc_E2ACC
		bsr.w	loc_E33A8
		move.w	#$2C,(a5)+ ; ','

loc_E2ACC:				; CODE XREF: ROM:000E2AC2j
		move.w	d5,d1
		andi.w	#$600,d1
		lsr.w	#8,d1
		lea	Immed_to_CCR_SR_Msgs(pc),a1
		adda.w	(a1,d1.w),a1
		btst	#$A,d5
		bne.w	Print_Message
		bsr.w	Print_Message
		move.w	#$2C,(a5)+ ; ','
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E2AF0:				; CODE XREF: ROM:000E2766j
		move.w	d5,d1
		andi.w	#$1C0,d1
		cmpi.w	#$1C0,d1
		bne.s	loc_E2B06
		move.w	d5,d1
		andi.w	#$38,d1	; '8'
		beq.w	IllegalInstruction

loc_E2B06:				; CODE XREF: ROM:000E2AFAj
		btst	#6,d5
		beq.s	loc_E2B18
		lea	Leamsg(pc),a1
		bsr.w	Print_Message
		moveq	#2,d3
		bra.s	loc_E2B2A
; ---------------------------------------------------------------------------

loc_E2B18:				; CODE XREF: ROM:000E2B0Aj
		btst	#7,d5
		beq.w	IllegalInstruction
		lea	Chkmsg(pc),a1
		bsr.w	Print_Message
		moveq	#1,d3

loc_E2B2A:				; CODE XREF: ROM:000E2B16j
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bsr.w	loc_E33A8
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		btst	#6,d5
		beq.w	Reg_Data_Direct
		bra.w	Reg_Addr_Direct
; ---------------------------------------------------------------------------
NegX_Clr_Neg_Notmsgs:dc.w NegXmsg-NegX_Clr_Neg_Notmsgs ; DATA XREF: ROM:000E2A76o
					; ROM:NegX_Clr_Neg_Notmsgso ...
		dc.w Clrmsg-NegX_Clr_Neg_Notmsgs
		dc.w Negmsg-NegX_Clr_Neg_Notmsgs
		dc.w Notmsg-NegX_Clr_Neg_Notmsgs
NegXmsg:	dc.b 0			; DATA XREF: ROM:NegX_Clr_Neg_Notmsgso
		dc.b   4
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $78 ; x
Clrmsg:		dc.b 0			; DATA XREF: ROM:000E2B50o
		dc.b   3
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $72 ; r
Negmsg:		dc.b 0			; DATA XREF: ROM:000E2B52o
		dc.b   3
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $67 ; g
Notmsg:		dc.b 0			; DATA XREF: ROM:000E2B54o
		dc.b   3
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $74 ; t
Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs:dc.w Resetmsg-Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs
					; DATA XREF: ROM:000E27C6o
					; ROM:Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgso ...
		dc.w Nopmsg-Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs
		dc.w Stopmsg-Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs
		dc.w Rtemsg-Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs
		dc.w IllegalInstructionMsg-Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs
		dc.w Rtsmsg-Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs
		dc.w TrapVmsg-Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs
		dc.w Rtrmsg-Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgs
Resetmsg:	dc.b 0			; DATA XREF: ROM:Reset_Nop_Stop_Rte_Rts_TrapV_Rtrmsgso
		dc.b   5
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $74 ; t
Nopmsg:		dc.b 0			; DATA XREF: ROM:000E2B7Ao
		dc.b   3
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $70 ; p
Rtemsg:		dc.b 0			; DATA XREF: ROM:000E2B7Eo
		dc.b   3
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $65 ; e
Rtsmsg:		dc.b 0			; DATA XREF: ROM:000E2B82o
		dc.b   3
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $73 ; s
TrapVmsg:	dc.b 0			; DATA XREF: ROM:000E2B84o
		dc.b   5
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $76 ; v
Rtrmsg:		dc.b 0			; DATA XREF: ROM:000E2B86o
		dc.b   3
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $72 ; r
Nbcdmsg:	dc.b 0			; DATA XREF: ROM:loc_E28E6o
		dc.b   8
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $64 ; d
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Extmsg:		dc.b 0			; DATA XREF: ROM:loc_E28FCo
		dc.b   3
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $78 ; x
		dc.b $20
		dc.b $74 ; t
Swapmsg:	dc.b 0			; DATA XREF: ROM:loc_E28D2o
		dc.b   6
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $77 ; w
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
MoveMmsg:	dc.b 0			; DATA XREF: ROM:000E2932o
		dc.b   5
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $76 ; v
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $6D ; m
Stopmsg:	dc.b 0			; DATA XREF: ROM:loc_E27D4o
					; ROM:000E2B7Co
		dc.b   6
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
USPmsg:		dc.b 0			; DATA XREF: ROM:000E2854o
					; ROM:000E286Co
		dc.b   3
		dc.b $60 ; `
		dc.b $75 ; u
		dc.b $60 ; `
		dc.b $73 ; s
		dc.b $60 ; `
		dc.b $70 ; p
Linkmsg:	dc.b 0			; DATA XREF: ROM:loc_E2812o
		dc.b   6
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $6B ; k
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Unlkmsg:	dc.b 0			; DATA XREF: ROM:000E27FEo
		dc.b   6
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $6B ; k
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Trapmsg:	dc.b 0			; DATA XREF: ROM:loc_E27E4o
		dc.b   7
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b   0
		dc.b $23 ; #
Jmpmsg:		dc.b 0			; DATA XREF: ROM:loc_E2874o
		dc.b   5
		dc.b $20
		dc.b $6A ; j
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Jsrmsg:		dc.b 0			; DATA XREF: ROM:000E287Eo
		dc.b   5
		dc.b $20
		dc.b $6A ; j
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Leamsg:		dc.b 0			; DATA XREF: ROM:000E2B0Co
		dc.b   5
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Peamsg:		dc.b 0			; DATA XREF: ROM:000E28BCo
		dc.b   5
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Chkmsg:		dc.b 0			; DATA XREF: ROM:000E2B20o
		dc.b   7
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $68 ; h
		dc.b $20
		dc.b $6B ; k
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $77 ; w
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Tstmsg:		dc.b 0			; DATA XREF: ROM:loc_E2A5Co
		dc.b   3
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $74 ; t
Tasmsg:		dc.b 0			; DATA XREF: ROM:000E2A3Co
		dc.b   7
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $73 ; s
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Illegalmsg:	dc.b 0			; DATA XREF: ROM:loc_E2A52o
		dc.b   7
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $6C ; l
; ---------------------------------------------------------------------------

Dis_AddQ_SubQ_Scc_DBcc:			; DATA XREF: ROM:000E2474o
		move.w	d5,d1
		andi.w	#$C0,d1	; 'À'
		cmpi.w	#$C0,d1	; 'À'
		bne.w	loc_E2D3C
		move.w	d5,d1
		andi.w	#$38,d1	; '8'
		cmpi.w	#8,d1
		beq.s	loc_E2CCE
		cmpi.w	#$38,d1	; '8'
		bne.w	loc_E2D16
		move.w	d5,d1
		andi.w	#6,d1
		beq.w	loc_E2D16
		bra.w	IllegalInstruction
; ---------------------------------------------------------------------------

loc_E2CCE:				; CODE XREF: ROM:000E2CB6j
		lea	DbCCmsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d2
		andi.w	#$F00,d2
		lsr.w	#7,d2
		lea	Db_Trap_S_CC(pc),a1
		adda.w	(a1,d2.w),a1
		bsr.w	Print_Message
		lea	WordSize(pc),a1
		bsr.w	Print_Message
		move.w	d5,d1
		andi.w	#7,d1
		bsr.w	Reg_Data_Direct
		move.w	#$2C,(a5)+ ; ','
		moveq	#1,d3
		move.w	d5,d1
		moveq	#2,d4
		jsr	(a4)
		move.w	(a3),d0
		ext.l	d0
		add.l	a3,d0
		lea	2(a3),a2
		bra.w	Print_Address
; ---------------------------------------------------------------------------

loc_E2D16:				; CODE XREF: ROM:000E2CBCj
					; ROM:000E2CC6j
		move.w	#$2073,(a5)+
		move.w	d5,d2
		andi.w	#$F00,d2
		lsr.w	#7,d2
		lea	Db_Trap_S_CC(pc),a1
		adda.w	(a1,d2.w),a1
		bsr.w	Print_Message
		lea	ByteSize(pc),a1
		bsr.w	Print_Message
		lea	(a3),a2
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E2D3C:				; CODE XREF: ROM:000E2CA8j
		lea	AddQmsg(pc),a1
		btst	#8,d5
		beq.s	loc_E2D4A
		lea	SubQmsg(pc),a1

loc_E2D4A:				; CODE XREF: ROM:000E2D44j
		bsr.w	Print_Message
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message
		lsr.w	#1,d3
		move.w	#$23,(a5)+ ; '#'
		move.w	d5,d2
		andi.w	#$E00,d2
		rol.w	#7,d2
		bne.s	loc_E2D74
		addq.w	#8,d2

loc_E2D74:				; CODE XREF: ROM:000E2D70j
		addi.w	#$4030,d2
		move.w	d2,(a5)+
		move.w	#$2C,(a5)+ ; ','
		lea	(a3),a2
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------
AddQmsg:	dc.b 0			; DATA XREF: ROM:loc_E2D3Co
		dc.b   4
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $71 ; q
SubQmsg:	dc.b 0			; DATA XREF: ROM:000E2D46o
		dc.b   4
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $71 ; q
DbCCmsg:	dc.b 0			; DATA XREF: ROM:loc_E2CCEo
		dc.b   2
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $62 ; b
Db_Trap_S_CC:	dc.w Tcmsg-Db_Trap_S_CC	; DATA XREF: ROM:000E2CDEo
					; ROM:000E2D22o ...
		dc.w Fcmsg-Db_Trap_S_CC
		dc.w HImsg-Db_Trap_S_CC
		dc.w LSmsg-Db_Trap_S_CC
		dc.w CCmsg-Db_Trap_S_CC
		dc.w CSmsg-Db_Trap_S_CC
		dc.w NEmsg-Db_Trap_S_CC
		dc.w EQmsg-Db_Trap_S_CC
		dc.w VCmsg-Db_Trap_S_CC
		dc.w VSmsg-Db_Trap_S_CC
		dc.w PLmsg-Db_Trap_S_CC
		dc.w MImsg-Db_Trap_S_CC
		dc.w GEmsg-Db_Trap_S_CC
		dc.w LTmsg-Db_Trap_S_CC
		dc.w GTmsg-Db_Trap_S_CC
		dc.w LEmsg-Db_Trap_S_CC
; ---------------------------------------------------------------------------

Dis_Bcc_Bsr_Bra:			; DATA XREF: ROM:000E2476o
		move.w	#$2062,(a5)+
		move.w	d5,d2
		andi.w	#$F00,d2
		lsr.w	#7,d2
		lea	Branch_CC(pc),a1
		adda.w	(a1,d2.w),a1
		bsr.w	Print_Message
		tst.b	d5
		sne	d3
		lea	ShortSize(pc),a1
		bne.s	loc_E2DE4
		lea	WordSize(pc),a1

loc_E2DE4:				; CODE XREF: ROM:000E2DDEj
		bsr.w	Print_Message
		addq.b	#1,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		tst.b	d5
		bne.s	loc_E2E04
		move.w	(a3),d0
		ext.l	d0
		add.l	a3,d0
		moveq	#2,d4
		lea	2(a3),a2
		bra.w	Print_Address
; ---------------------------------------------------------------------------

loc_E2E04:				; CODE XREF: ROM:000E2DF2j
		move.b	d5,d0
		ext.w	d0
		ext.l	d0
		add.l	a3,d0
		lea	(a3),a2
		bra.w	Print_Address
; ---------------------------------------------------------------------------
Branch_CC:	dc.w RAmsg-Branch_CC	; DATA XREF: ROM:000E2DCAo
					; ROM:Branch_CCo ...
		dc.w SRmsg-Branch_CC
		dc.w HImsg-Branch_CC
		dc.w LSmsg-Branch_CC
		dc.w CCmsg-Branch_CC
		dc.w CSmsg-Branch_CC
		dc.w NEmsg-Branch_CC
		dc.w EQmsg-Branch_CC
		dc.w VCmsg-Branch_CC
		dc.w VSmsg-Branch_CC
		dc.w PLmsg-Branch_CC
		dc.w MImsg-Branch_CC
		dc.w GEmsg-Branch_CC
		dc.w LTmsg-Branch_CC
		dc.w GTmsg-Branch_CC
		dc.w LEmsg-Branch_CC
Tcmsg:		dc.b 0			; DATA XREF: ROM:Db_Trap_S_CCo
		dc.b   1
		dc.b $20
		dc.b $74 ; t
Fcmsg:		dc.b 0			; DATA XREF: ROM:000E2DA0o
		dc.b   1
		dc.b $20
		dc.b $66 ; f
RAmsg:		dc.b 0			; DATA XREF: ROM:Branch_CCo
		dc.b   2
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $61 ; a
SRmsg:		dc.b 0			; DATA XREF: ROM:000E2E14o
		dc.b   2
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $72 ; r
HImsg:		dc.b 0			; DATA XREF: ROM:000E2DA2o
					; ROM:000E2E16o
		dc.b   2
		dc.b $20
		dc.b $68 ; h
		dc.b $20
		dc.b $69 ; i
LSmsg:		dc.b 0			; DATA XREF: ROM:000E2DA4o
					; ROM:000E2E18o
		dc.b   2
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $73 ; s
CCmsg:		dc.b 0			; DATA XREF: ROM:000E2DA6o
					; ROM:000E2E1Ao
		dc.b   2
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $63 ; c
CSmsg:		dc.b 0			; DATA XREF: ROM:000E2DA8o
					; ROM:000E2E1Co
		dc.b   2
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $73 ; s
NEmsg:		dc.b 0			; DATA XREF: ROM:000E2DAAo
					; ROM:000E2E1Eo
		dc.b   2
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $65 ; e
EQmsg:		dc.b 0			; DATA XREF: ROM:000E2DACo
					; ROM:000E2E20o
		dc.b   2
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $71 ; q
VCmsg:		dc.b 0			; DATA XREF: ROM:000E2DAEo
					; ROM:000E2E22o
		dc.b   2
		dc.b $20
		dc.b $76 ; v
		dc.b $20
		dc.b $63 ; c
VSmsg:		dc.b 0			; DATA XREF: ROM:000E2DB0o
					; ROM:000E2E24o
		dc.b   2
		dc.b $20
		dc.b $76 ; v
		dc.b $20
		dc.b $73 ; s
PLmsg:		dc.b 0			; DATA XREF: ROM:000E2DB2o
					; ROM:000E2E26o
		dc.b   2
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $6C ; l
MImsg:		dc.b 0			; DATA XREF: ROM:000E2DB4o
					; ROM:000E2E28o
		dc.b   2
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $69 ; i
GEmsg:		dc.b 0			; DATA XREF: ROM:000E2DB6o
					; ROM:000E2E2Ao
		dc.b   2
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $65 ; e
LTmsg:		dc.b 0			; DATA XREF: ROM:000E2DB8o
					; ROM:000E2E2Co
		dc.b   2
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $74 ; t
GTmsg:		dc.b 0			; DATA XREF: ROM:000E2DBAo
					; ROM:000E2E2Eo
		dc.b   2
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $74 ; t
LEmsg:		dc.b 0			; DATA XREF: ROM:000E2DBCo
					; ROM:000E2E30o
		dc.b   2
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $65 ; e
; ---------------------------------------------------------------------------

Dis_MoveQ:				; DATA XREF: ROM:000E2478o
		lea	Moveqmsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d0
		bsr.w	sub_E2382
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		lea	(a3),a2
		bra.w	Reg_Data_Direct
; ---------------------------------------------------------------------------
Moveqmsg:	dc.b 0			; DATA XREF: ROM:Dis_MoveQo
		dc.b   8
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $76 ; v
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $71 ; q
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b   0
		dc.b $23 ; #
; ---------------------------------------------------------------------------

Dis_Or_Div_Sbcd:			; DATA XREF: ROM:000E247Ao
		move.w	d5,d1
		andi.w	#$C0,d1	; 'À'
		cmpi.w	#$C0,d1	; 'À'
		beq.w	loc_E2F1C
		move.w	d5,d1
		andi.w	#$1F0,d1
		cmpi.w	#$180,d1
		beq.w	IllegalInstruction
		cmpi.w	#$140,d1
		beq.w	IllegalInstruction
		andi.w	#$1F0,d1
		cmpi.w	#$100,d1
		beq.s	loc_E2F0E
		lea	Ormsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		bra.w	loc_E31AC
; ---------------------------------------------------------------------------

loc_E2F0E:				; CODE XREF: ROM:000E2EF8j
		lea	Sbcdmsg(pc),a1
		bsr.w	Print_Message
		moveq	#0,d3
		bra.w	loc_E3204
; ---------------------------------------------------------------------------

loc_E2F1C:				; CODE XREF: ROM:000E2ED6j
		lea	Divmsg(pc),a1
		bra.w	loc_E30DC
; ---------------------------------------------------------------------------
Sbcdmsg:	dc.b 0			; DATA XREF: ROM:loc_E2F0Eo
		dc.b   8
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $64 ; d
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Ormsg:		dc.b 0			; DATA XREF: ROM:000E2EFAo
		dc.b   2
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $72 ; r
Divmsg:		dc.b 0			; DATA XREF: ROM:loc_E2F1Co
		dc.b   3
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $76 ; v
; ---------------------------------------------------------------------------

Dis_Cmp_Eor:				; DATA XREF: ROM:000E2480o
		move.w	d5,d1
		andi.w	#$138,d1
		cmpi.w	#$108,d1
		beq.w	loc_E2FF2
		move.w	d5,d1
		andi.w	#$C0,d1	; 'À'
		cmpi.w	#$C0,d1	; 'À'
		beq.s	loc_E2FB4
		btst	#8,d5
		beq.s	loc_E2F9E
		lea	Eormsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message
		lsr.w	#1,d3
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		bsr.w	Reg_Data_Direct
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E2F9E:				; CODE XREF: ROM:000E2F62j
		lea	Cmpmsg(pc),a1
		pea	Reg_Data_Direct(pc)
		bsr.w	Print_Message
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		bra.s	loc_E2FCA
; ---------------------------------------------------------------------------

loc_E2FB4:				; CODE XREF: ROM:000E2F5Cj
		lea	CmpAmsg(pc),a1
		pea	Reg_Addr_Direct
		bsr.w	Print_Message
		moveq	#2,d3
		btst	#8,d5
		beq.s	loc_E2FCA
		add.b	d3,d3

loc_E2FCA:				; CODE XREF: ROM:000E2FB2j
					; ROM:000E2FC6j
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message
		lsr.w	#1,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bsr.w	loc_E33A8
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		rts
; ---------------------------------------------------------------------------

loc_E2FF2:				; CODE XREF: ROM:000E2F4Ej
		lea	CmpMmsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message
		move.w	d5,d1
		andi.w	#7,d1
		bsr.w	Reg_Addr_Post_Indirect
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		lea	(a3),a2
		bra.w	Reg_Addr_Post_Indirect
; ---------------------------------------------------------------------------
Eormsg:		dc.b 0			; DATA XREF: ROM:000E2F64o
		dc.b   3
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $72 ; r
Cmpmsg:		dc.b 0			; DATA XREF: ROM:loc_E2F9Eo
		dc.b   3
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $70 ; p
CmpAmsg:	dc.b 0			; DATA XREF: ROM:loc_E2FB4o
		dc.b   4
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $61 ; a
CmpMmsg:	dc.b 0			; DATA XREF: ROM:loc_E2FF2o
		dc.b   4
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $6D ; m
; ---------------------------------------------------------------------------

Dis_And_Mul_Abcd_Exg:			; DATA XREF: ROM:000E2482o
		move.w	d5,d1
		andi.w	#$C0,d1	; 'À'
		cmpi.w	#$C0,d1	; 'À'
		beq.w	loc_E30D8
		move.w	d5,d1
		andi.w	#$1F8,d1
		cmpi.w	#$188,d1
		beq.s	loc_E30A2
		cmpi.w	#$148,d1
		beq.s	loc_E3098
		cmpi.w	#$140,d1
		beq.s	loc_E308E
		andi.w	#$1F0,d1
		cmpi.w	#$100,d1
		beq.s	loc_E30CA
		lea	Andmsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		bra.w	loc_E31AC
; ---------------------------------------------------------------------------

loc_E308E:				; CODE XREF: ROM:000E306Ej
		lea	Reg_Data_Direct(pc),a2
		pea	Reg_Data_Direct(pc)
		bra.s	loc_E30AA
; ---------------------------------------------------------------------------

loc_E3098:				; CODE XREF: ROM:000E3068j
		lea	Reg_Addr_Indirect(pc),a2
		pea	Reg_Addr_Indirect(pc)
		bra.s	loc_E30AA
; ---------------------------------------------------------------------------

loc_E30A2:				; CODE XREF: ROM:000E3062j
		lea	Reg_Data_Direct(pc),a2
		pea	Reg_Addr_Indirect(pc)

loc_E30AA:				; CODE XREF: ROM:000E3096j
					; ROM:000E30A0j
		lea	Exgmsg(pc),a1
		bsr.w	Print_Message
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		jsr	(a2)
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		andi.w	#7,d1
		lea	(a3),a2
		rts
; ---------------------------------------------------------------------------

loc_E30CA:				; CODE XREF: ROM:000E3078j
		lea	Abcdmsg(pc),a1
		bsr.w	Print_Message
		moveq	#0,d3
		bra.w	loc_E3204
; ---------------------------------------------------------------------------

loc_E30D8:				; CODE XREF: ROM:000E3054j
		lea	Mulmsg(pc),a1

loc_E30DC:				; CODE XREF: ROM:000E2F20j
		bsr.w	Print_Message
		btst	#8,d5
		beq.s	loc_E30EC
		move.w	#$2073,(a5)+
		bra.s	loc_E30F0
; ---------------------------------------------------------------------------

loc_E30EC:				; CODE XREF: ROM:000E30E4j
		move.w	#$2075,(a5)+

loc_E30F0:				; CODE XREF: ROM:000E30EAj
		lea	WordSize(pc),a1
		bsr.w	Print_Message
		moveq	#1,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bsr.w	loc_E33A8
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		bra.w	Reg_Data_Direct
; ---------------------------------------------------------------------------
Abcdmsg:	dc.b 0			; DATA XREF: ROM:loc_E30CAo
		dc.b   8
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $64 ; d
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Andmsg:		dc.b 0			; DATA XREF: ROM:000E307Ao
		dc.b   3
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $64 ; d
Exgmsg:		dc.b 0			; DATA XREF: ROM:loc_E30AAo
		dc.b   8
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $78 ; x
		dc.b $20
		dc.b $67 ; g
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
Mulmsg:		dc.b 0			; DATA XREF: ROM:loc_E30D8o
		dc.b   3
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $6C ; l
; ---------------------------------------------------------------------------

Dis_Sub_SubX:				; DATA XREF: ROM:000E247Co
		lea	Submsg(pc),a1
		bra.s	loc_E3154
; ---------------------------------------------------------------------------

Dis_Add_AddX:				; DATA XREF: ROM:000E2484o
		lea	Addmsg(pc),a1

loc_E3154:				; CODE XREF: ROM:000E314Ej
		bsr.w	Print_Message
		move.w	d5,d1
		andi.w	#$130,d1
		cmpi.w	#$100,d1
		beq.w	loc_E31EC
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		cmpi.b	#6,d3
		bne.s	loc_E31AC
		move.w	#$2061,(a5)+
		moveq	#2,d3
		btst	#8,d5
		beq.s	loc_E3182
		add.b	d3,d3

loc_E3182:				; CODE XREF: ROM:000E317Ej
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message
		lsr.w	#1,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bsr.w	loc_E33A8
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		bra.w	Reg_Addr_Direct
; ---------------------------------------------------------------------------

loc_E31AC:				; CODE XREF: ROM:000E2F0Aj
					; ROM:000E308Aj ...
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message
		lsr.w	#1,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		btst	#8,d5
		bne.s	loc_E31D0
		bsr.w	loc_E33A8
		move.w	#$2C,(a5)+ ; ','

loc_E31D0:				; CODE XREF: ROM:000E31C6j
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		btst	#8,d5
		beq.w	Reg_Data_Direct
		bsr.w	Reg_Data_Direct
		move.w	#$2C,(a5)+ ; ','
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------

loc_E31EC:				; CODE XREF: ROM:000E3162j
		move.w	#$2078,(a5)+
		move.w	d5,d3
		andi.w	#$C0,d3	; 'À'
		lsr.w	#5,d3
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d3.w),a1
		bsr.w	Print_Message

loc_E3204:				; CODE XREF: ROM:000E2F18j
					; ROM:000E30D4j
		lea	Reg_Data_Direct(pc),a4
		btst	#3,d5
		beq.s	loc_E3212
		lea	Reg_Addr_Pre_Indirect(pc),a4

loc_E3212:				; CODE XREF: ROM:000E320Cj
		move.w	d5,d1
		andi.w	#7,d1
		jsr	(a4)
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		andi.w	#$E00,d1
		rol.w	#7,d1
		lea	(a3),a2
		jmp	(a4)
; ---------------------------------------------------------------------------
Addmsg:		dc.b 0			; DATA XREF: ROM:Dis_Add_AddXo
		dc.b   3
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $64 ; d
Submsg:		dc.b 0			; DATA XREF: ROM:Dis_Sub_SubXo
		dc.b   3
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $62 ; b
; ---------------------------------------------------------------------------

Dis_Shift_Rotate:			; DATA XREF: ROM:000E2486o
		move.w	d5,d1
		andi.w	#$8C0,d1
		cmpi.w	#$8C0,d1
		beq.w	IllegalInstruction
		andi.w	#$C0,d1	; 'À'
		move.w	d5,d2
		cmpi.w	#$C0,d1	; 'À'
		beq.s	loc_E325E
		andi.w	#$18,d2
		lsr.w	#2,d2
		lsr.w	#5,d1
		bra.s	loc_E3266
; ---------------------------------------------------------------------------

loc_E325E:				; CODE XREF: ROM:000E3252j
		andi.w	#$600,d2
		lsr.w	#8,d2
		moveq	#-1,d1

loc_E3266:				; CODE XREF: ROM:000E325Cj
		lea	ShiftMessages(pc),a1
		adda.w	(a1,d2.w),a1
		bsr.w	Print_Message
		btst	#8,d5
		beq.s	loc_E327E
		move.w	#$206C,(a5)+
		bra.s	loc_E3282
; ---------------------------------------------------------------------------

loc_E327E:				; CODE XREF: ROM:000E3276j
		move.w	#$2072,(a5)+

loc_E3282:				; CODE XREF: ROM:000E327Cj
		lea	WordSize(pc),a1
		tst.b	d1
		bmi.s	loc_E3292
		lea	SizeMsgs(pc),a1
		adda.w	(a1,d1.w),a1

loc_E3292:				; CODE XREF: ROM:000E3288j
		bsr.w	Print_Message
		tst.b	d1
		bmi.s	loc_E32D2
		move.w	d5,d2
		andi.w	#$E00,d2
		rol.w	#7,d2
		btst	#5,d5
		bne.s	loc_E32B8
		move.w	#$23,(a5)+ ; '#'
		tst.b	d2
		bne.s	loc_E32B2
		addq.w	#8,d2

loc_E32B2:				; CODE XREF: ROM:000E32AEj
		addi.w	#$4030,d2
		bra.s	loc_E32C0
; ---------------------------------------------------------------------------

loc_E32B8:				; CODE XREF: ROM:000E32A6j
		move.w	#$6064,(a5)+
		addi.w	#$6030,d2

loc_E32C0:				; CODE XREF: ROM:000E32B6j
		move.w	d2,(a5)+
		move.w	#$2C,(a5)+ ; ','
		move.w	d5,d1
		andi.w	#7,d1
		lea	(a3),a2
		bra.w	Reg_Data_Direct
; ---------------------------------------------------------------------------

loc_E32D2:				; CODE XREF: ROM:000E3298j
		moveq	#1,d3
		move.w	d5,d1
		moveq	#0,d4
		jsr	(a4)
		lea	(a3),a2
		bra.w	loc_E33A8
; ---------------------------------------------------------------------------
ShiftMessages:	dc.b 0			; DATA XREF: ROM:loc_E3266o
		dc.b   8
		dc.b   0
		dc.b  $E
		dc.b   0
		dc.b $14
		dc.b   0
		dc.b $1C
		dc.b   0
		dc.b   2
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $73 ; s
		dc.b   0
		dc.b   2
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $73 ; s
		dc.b   0
		dc.b   3
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $78 ; x
		dc.b   0
		dc.b   2
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $6F ; o
; ---------------------------------------------------------------------------

Line1010Emulator:			; DATA XREF: ROM:000E247Eo
					; ROM:000E2488o
		lea	(a3),a2
		lea	DeclareWord(pc),a1
		bsr.w	Print_Message
		move.w	d5,d0
		bra.w	Print_Word
; ---------------------------------------------------------------------------

IllegalInstruction:			; CODE XREF: ROM:000E24A8j
					; ROM:000E24B6j ...
		lea	(a3),a2
		lea	DeclareWord(pc),a1
		bsr.w	Print_Message
		move.w	d5,d0
		bsr.w	Print_Word
		lea	IllegalInstructionMsg(pc),a1
		bra.w	Print_Message
; ---------------------------------------------------------------------------
IllegalInstructionMsg:dc.b   0		; DATA XREF: ROM:000E2670o
					; ROM:000E2676o ...
		dc.b $17
		dc.b $40 ; @
		dc.b $20
		dc.b   0
		dc.b $3B ; ;
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $49 ; I
		dc.b $40 ; @
		dc.b $6C ; l
		dc.b $40 ; @
		dc.b $6C ; l
		dc.b $40 ; @
		dc.b $65 ; e
		dc.b $40 ; @
		dc.b $67 ; g
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $6C ; l
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $69 ; i
		dc.b $40 ; @
		dc.b $6E ; n
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b $40 ; @
		dc.b $74 ; t
		dc.b $40 ; @
		dc.b $72 ; r
		dc.b $40 ; @
		dc.b $75 ; u
		dc.b $40 ; @
		dc.b $63 ; c
		dc.b $40 ; @
		dc.b $74 ; t
		dc.b $40 ; @
		dc.b $69 ; i
		dc.b $40 ; @
		dc.b $6F ; o
		dc.b $40 ; @
		dc.b $6E ; n
		dc.b   0
		dc.b $21 ; !
DeclareWord:	dc.b 0			; DATA XREF: ROM:000E3304o
					; ROM:000E3314o
		dc.b   9
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $63 ; c
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $77 ; w
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
SizeMsgs:	dc.w ByteSize-SizeMsgs	; DATA XREF: ROM:000E25ECo
					; ROM:000E2632o ...
		dc.w WordSize-SizeMsgs
		dc.w LongSize-SizeMsgs
		dc.w NoSize-SizeMsgs
ShortSize:	dc.b 0			; DATA XREF: ROM:000E2DDAo
		dc.b   4
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
ByteSize:	dc.b 0			; DATA XREF: ROM:000E24F2o
					; ROM:000E253Ao ...
		dc.b   4
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $62 ; b
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
WordSize:	dc.b 0			; DATA XREF: ROM:000E2566o
					; ROM:000E2904o ...
		dc.b   4
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $77 ; w
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
LongSize:	dc.b 0			; DATA XREF: ROM:000E24E4o
					; ROM:000E252Co ...
		dc.b   4
		dc.b   0
		dc.b $2E ; .
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
NoSize:		dc.b 0			; DATA XREF: ROM:000E3374o
		dc.b   4
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
; ---------------------------------------------------------------------------

loc_E33A8:				; CODE XREF: ROM:000E2514j
					; ROM:000E255Aj ...
		move.w	d5,d0
		move.w	d5,d1

loc_E33AC:				; CODE XREF: ROM:000E2750j
		andi.w	#$38,d0	; '8'
		lsr.w	#2,d0
		andi.w	#7,d1
		move.w	EACodeMap(pc,d0.w),d0
		jmp	EACodeMap(pc,d0.w)
; ---------------------------------------------------------------------------
EACodeMap:	dc.w Reg_Data_Direct-EACodeMap ; DATA XREF: ROM:000E33B6r
					; ROM:EACodeMapo ...
		dc.w Reg_Addr_Direct-EACodeMap
		dc.w Reg_Addr_Indirect-EACodeMap
		dc.w Reg_Addr_Post_Indirect-EACodeMap
		dc.w Reg_Addr_Pre_Indirect-EACodeMap
		dc.w Reg_Addr_Disp_Indirect-EACodeMap
		dc.w Reg_Addr_Index_Indirect-EACodeMap
		dc.w Misc_EA_Modes-EACodeMap

; =============== S U B	R O U T	I N E =======================================


Reg_Data_Direct:			; CODE XREF: ROM:000E2504p
					; ROM:000E258Cp ...
		move.w	#$6064,(a5)+
		addi.w	#$6030,d1
		move.w	d1,(a5)+
		rts
; End of function Reg_Data_Direct


; =============== S U B	R O U T	I N E =======================================


Reg_Addr_Direct:			; CODE XREF: ROM:000E280Ej
					; ROM:000E2820p ...
		cmpi.b	#7,d1
		beq.s	loc_E33EC
		move.w	#$6061,(a5)+
		addi.w	#$6030,d1
		move.w	d1,(a5)+
		rts
; ---------------------------------------------------------------------------

loc_E33EC:				; CODE XREF: Reg_Addr_Direct+4j
		move.w	#$6073,(a5)+
		move.w	#$6070,(a5)+
		rts
; End of function Reg_Addr_Direct


; =============== S U B	R O U T	I N E =======================================


Reg_Addr_Indirect:			; CODE XREF: ROM:000E25B0j
					; ROM:000E25B4p ...
		move.w	#$28,(a5)+ ; '('
		bsr.s	Reg_Addr_Direct
		move.w	#$29,(a5)+ ; ')'
		rts
; End of function Reg_Addr_Indirect


; =============== S U B	R O U T	I N E =======================================


Reg_Addr_Post_Indirect:			; CODE XREF: ROM:000E3014p
					; ROM:000E3022j
					; DATA XREF: ...
		bsr.s	Reg_Addr_Indirect
		move.w	#$2B,(a5)+ ; '+'
		rts
; End of function Reg_Addr_Post_Indirect


; =============== S U B	R O U T	I N E =======================================


Reg_Addr_Pre_Indirect:			; DATA XREF: ROM:000E320Eo
					; ROM:000E33C6o
		move.w	#$2D,(a5)+ ; '-'
		bra.s	Reg_Addr_Indirect
; End of function Reg_Addr_Pre_Indirect


; =============== S U B	R O U T	I N E =======================================


Reg_Addr_Disp_Indirect:			; DATA XREF: ROM:000E33C8o
		move.w	(a2)+,d0
		beq.s	Reg_Addr_Indirect
		bsr.w	Print_Word_Signed
		bra.s	Reg_Addr_Indirect
; End of function Reg_Addr_Disp_Indirect


; =============== S U B	R O U T	I N E =======================================


Reg_Addr_Index_Indirect:		; DATA XREF: ROM:000E33CAo
		move.w	(a2)+,d0
		tst.b	d0
		beq.s	loc_E3424
		bsr.w	sub_E2382

loc_E3424:				; CODE XREF: Reg_Addr_Index_Indirect+4j
		move.w	#$28,(a5)+ ; '('
		bsr.s	Reg_Addr_Direct
		move.w	#$2C,(a5)+ ; ','

loc_E342E:				; CODE XREF: ROM:000E34E8j
		move.w	d0,d1
		andi.w	#$7000,d1
		rol.w	#4,d1
		lea	Reg_Data_Direct,a0
		btst	#$F,d0
		beq.s	loc_E3444
		lea	Reg_Addr_Direct,a0

loc_E3444:				; CODE XREF: Reg_Addr_Index_Indirect+24j
		jsr	(a0)
		move.w	#$2E,(a5)+ ; '.'
		btst	#$B,d0
		beq.s	loc_E3456
		move.w	#$606C,(a5)+
		bra.s	loc_E345A
; ---------------------------------------------------------------------------

loc_E3456:				; CODE XREF: Reg_Addr_Index_Indirect+34j
		move.w	#$6077,(a5)+

loc_E345A:				; CODE XREF: Reg_Addr_Index_Indirect+3Aj
		move.w	#$29,(a5)+ ; ')'
		rts
; End of function Reg_Addr_Index_Indirect

; ---------------------------------------------------------------------------

Misc_EA_Modes:				; DATA XREF: ROM:000E33CCo
		lsl.w	#1,d1
		move.w	MiscEACodeMap(pc,d1.w),d1
		jmp	MiscEACodeMap(pc,d1.w)
; ---------------------------------------------------------------------------
MiscEACodeMap:	dc.w Abs_Short-MiscEACodeMap ; DATA XREF: ROM:000E3462r
					; ROM:MiscEACodeMapo ...
		dc.w Abs_Long-MiscEACodeMap
		dc.w PC_Disp_Indirect-MiscEACodeMap
		dc.w PC_Index_Indirect-MiscEACodeMap
		dc.w Immediate-MiscEACodeMap
		dc.w InvalidAddrMode-MiscEACodeMap
		dc.w InvalidAddrMode-MiscEACodeMap
		dc.w InvalidAddrMode-MiscEACodeMap
; ---------------------------------------------------------------------------

Abs_Short:				; DATA XREF: ROM:MiscEACodeMapo
		move.w	#$28,(a5)+ ; '('
		move.w	(a2)+,d0
		ext.l	d0
		bsr.w	Print_Address
		move.w	#$29,(a5)+ ; ')'
		move.w	#$2E,(a5)+ ; '.'
		move.w	#$2077,(a5)+
		rts
; ---------------------------------------------------------------------------

Abs_Long:				; DATA XREF: ROM:000E346Co
		move.w	#$28,(a5)+ ; '('
		move.l	(a2)+,d0
		bsr.w	Print_Address
		move.w	#$29,(a5)+ ; ')'
		move.w	#$2E,(a5)+ ; '.'
		move.w	#$206C,(a5)+
		rts
; ---------------------------------------------------------------------------

PC_Disp_Indirect:			; CODE XREF: ROM:000E4178j
					; DATA XREF: ROM:000E346Eo
		move.w	(a2)+,d0
		ext.l	d0
		add.l	a2,d0
		subq.l	#2,d0
		bsr.w	Print_Address
		move.w	#$28,(a5)+ ; '('
		move.w	#$6070,(a5)+
		move.w	#$6063,(a5)+
		move.w	#$29,(a5)+ ; ')'
		rts
; ---------------------------------------------------------------------------

PC_Index_Indirect:			; DATA XREF: ROM:000E3470o
		move.w	(a2),d0
		ext.w	d0
		ext.l	d0
		add.l	a2,d0
		bsr.w	Print_Address
		move.w	(a2)+,d0
		move.w	#$28,(a5)+ ; '('
		move.w	#$6070,(a5)+
		move.w	#$6063,(a5)+
		move.w	#$2C,(a5)+ ; ','
		bra.w	loc_E342E

; =============== S U B	R O U T	I N E =======================================


Immediate:				; CODE XREF: ROM:000E2602p
					; ROM:000E2654p ...
		move.w	#$23,(a5)+ ; '#'
		cmpi.b	#2,d3
		bcc.s	loc_E3502
		move.w	(a2)+,d0
		tst.b	d3
		beq.w	sub_E238C
		bra.w	Print_Word
; ---------------------------------------------------------------------------

loc_E3502:				; CODE XREF: Immediate+8j
		move.l	(a2)+,d0
		bra.w	Print_Long
; End of function Immediate


; =============== S U B	R O U T	I N E =======================================


InvalidAddrMode:			; DATA XREF: ROM:000E3474o
					; ROM:000E3476o ...
		lea	InvalidAddrModeMsg(pc),a1
		bra.w	Print_Message
; End of function InvalidAddrMode

; ---------------------------------------------------------------------------
InvalidAddrModeMsg:dc.b	  0		; DATA XREF: InvalidAddrModeo
		dc.b $16
		dc.b $20
		dc.b $7F ; 
		dc.b $20
		dc.b $49 ; I
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $76 ; v
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $7F ; 
; ===========================================================================
; Make sure this points to the correct location.
;----------------------------------------------------------------------------
; Enigma compressed mappings
MapEng_Debugger:	incbin	"_debugger/DebuggerMap.bin"
	even
; ===========================================================================
; Edit these to your name and e-mail. If the e-mail is empty (""), then nothing
; will be printed on the line. You can use all characters in the ASCII character
; set (see https://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters).
HackerName:
	dc.w 11
	dc.w WHITE|'Y',	 WHITE|'o',	 WHITE|'u',	 WHITE|'r',	 WHITE|' ',	 WHITE|'N'
	dc.w WHITE|'a',	 WHITE|'m',	 WHITE|'e',	 WHITE|' ',	 WHITE|' '
	even
EMailmsg:
	dc.w 33
	dc.w BLUE|'y',	BLUE|'o',	BLUE|'u',	BLUE|'r',	BLUE|'.',	BLUE|'e'
	dc.w BLUE|'m',	BLUE|'a',	BLUE|'i',	BLUE|'l',	BLUE|'@',	BLUE|'s'
	dc.w BLUE|'e',	BLUE|'r',	BLUE|'v',	BLUE|'e',	BLUE|'r',	BLUE|'.'
	dc.w BLUE|'d',	BLUE|'o',	BLUE|'m',	BLUE|'a',	BLUE|'i',	BLUE|'n'
	dc.w BLUE|' ',	BLUE|' ',	BLUE|' ',	BLUE|' ',	BLUE|' ',	BLUE|' '
	dc.w BLUE|' ',	BLUE|' ',	BLUE|' '
	even
; ===========================================================================
; System strings, do not edit.
BusErrorMsg:	dc.w 29			; "   A bus error has occurred  "
	dc.w	BLUE|" ", BLUE|" ", BLUE|" ", BLUE|"A", BLUE|" ", BLUE|"b"
	dc.w	BLUE|"u", BLUE|"s", BLUE|" ", BLUE|"e", BLUE|"r", BLUE|"r"
	dc.w	BLUE|"o", BLUE|"r", BLUE|" ", BLUE|"h", BLUE|"a", BLUE|"s"
	dc.w	BLUE|" ", BLUE|"o", BLUE|"c", BLUE|"c", BLUE|"u", BLUE|"r"
	dc.w	BLUE|"r", BLUE|"e", BLUE|"d", BLUE|" ", BLUE|" "
	even
AddressErrorMsg:dc.w 29			; "An address error has occurred"
	dc.w	BLUE|"A", BLUE|"n",	BLUE|" ", BLUE|"a", BLUE|"d", BLUE|"d"
	dc.w	BLUE|"r", BLUE|"e",	BLUE|"s", BLUE|"s", BLUE|" ", BLUE|"e"
	dc.w	BLUE|"r", BLUE|"r",	BLUE|"o", BLUE|"r", BLUE|" ", BLUE|"h"
	dc.w	BLUE|"a", BLUE|"s",	BLUE|" ", BLUE|"o", BLUE|"c", BLUE|"c"
	dc.w	BLUE|"u", BLUE|"r", BLUE|"r", BLUE|"e", BLUE|"d"
	even
IllegalInstrMsg:dc.w 29			; "Illegal instruction was found"
	dc.w	BLUE|"I", BLUE|"l", BLUE|"l", BLUE|"e", BLUE|"g", BLUE|"a"
	dc.w	BLUE|"l", BLUE|" ", BLUE|"i", BLUE|"n", BLUE|"s", BLUE|"t"
	dc.w	BLUE|"r", BLUE|"u", BLUE|"c", BLUE|"t", BLUE|"i", BLUE|"o"
	dc.w	BLUE|"n", BLUE|" ", BLUE|"w", BLUE|"a", BLUE|"s", BLUE|" "
	dc.w	BLUE|"f", BLUE|"o", BLUE|"u", BLUE|"n", BLUE|"d"
	even
ZeroDivideMsg:dc.w 29			; " A division by zero happened "
	dc.w	BLUE|" ", BLUE|"A", BLUE|" ", BLUE|"d", BLUE|"i", BLUE|"v"
	dc.w	BLUE|"i", BLUE|"s", BLUE|"i", BLUE|"o", BLUE|"n", BLUE|" "
	dc.w	BLUE|"b", BLUE|"y", BLUE|" ", BLUE|"z", BLUE|"e", BLUE|"r"
	dc.w	BLUE|"o", BLUE|" ", BLUE|"h", BLUE|"a", BLUE|"p", BLUE|"p"
	dc.w	BLUE|"e", BLUE|"n", BLUE|"e", BLUE|"d", BLUE|" "
	even
CHKExceptionMsg:dc.b   0		; DATA XREF: ROM:000E3C1Ao
		dc.b $1D
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $55 ; U
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $68 ; h
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $68 ; h
		dc.b $20
		dc.b $6B ; k
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $78 ; x
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
TRAPVErrMsg:	dc.b   0		; DATA XREF: ROM:000E3C3Ao
		dc.b $1D
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $55 ; U
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $68 ; h
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $76 ; v
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $66 ; f
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $77 ; w
		dc.b $20
		dc.b $20
PrivilegeViolationMsg:dc.b   0		; DATA XREF: ROM:000E3C76o
		dc.b $1D
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $50 ; P
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $76 ; v
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $76 ; v
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $68 ; h
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $64 ; d
TraceMsg:	dc.b   0		; DATA XREF: ROM:000E3BC2o
		dc.b $1D
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $54 ; T
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $78 ; x
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
LineAEmulationMsg:dc.b	 0		; DATA XREF: ROM:000E3C92o
		dc.b $1D
		dc.b $20
		dc.b $4C ; L
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $31 ; 1
		dc.b $20
		dc.b $30 ; 0
		dc.b $20
		dc.b $31 ; 1
		dc.b $20
		dc.b $30 ; 0
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $64 ; d
LineFEmulationMsg:dc.b	 0		; DATA XREF: ROM:000E3CAEo
		dc.b $1D
		dc.b $20
		dc.b $4C ; L
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $31 ; 1
		dc.b $20
		dc.b $31 ; 1
		dc.b $20
		dc.b $31 ; 1
		dc.b $20
		dc.b $31 ; 1
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $64 ; d
SpuriousExceptionMsg:dc.b   0		; DATA XREF: ROM:000E3BDEo
		dc.b $1D
		dc.b $20
		dc.b $41 ; A
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $78 ; x
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $68 ; h
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $64 ; d
TrapVectorMsg:	dc.b   0		; DATA XREF: ROM:000E3CCAo
		dc.b $1D
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $55 ; U
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $68 ; h
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $6C ; l
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $70 ; p
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $77 ; w
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $64 ; d
AtAddressmsg:	dc.b   0		; DATA XREF: ROM:000E3EA8o
		dc.b $13
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $78 ; x
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $63 ; c
		dc.b $20
		dc.b $75 ; u
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $67 ; g
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $73 ; s
		dc.b $20
		dc.b $20
Atmsg:		dc.b   0		; DATA XREF: CommonErrorInit+3Eo
		dc.b   3
		dc.b   0
		dc.b $61 ; a
		dc.b   0
		dc.b $74 ; t
		dc.b   0
		dc.b $20
ReadFrommsg:	dc.b   0		; DATA XREF: ROM:000E3DACo
		dc.b $12
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $66 ; f
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $6D ; m
		dc.b $20
		dc.b $20
WriteTomsg:	dc.b   0		; DATA XREF: ROM:000E3D9Eo
		dc.b $12
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $6E ; n
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $77 ; w
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $69 ; i
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $65 ; e
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $20
UnrecovDatamsg:	dc.b   0		; DATA XREF: ROM:000E3E74o
		dc.b $26 ; &
		dc.b $40 ; @
		dc.b $7F ; 
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $55 ; U
		dc.b $40 ; @
		dc.b $6E ; n
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $76 ; v
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $69 ; i
		dc.b $40 ; @
		dc.b $6C ; l
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $62 ; b
		dc.b $40 ; @
		dc.b $6C ; l
		dc.b $40 ; @
		dc.b $65 ; e
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $69 ; i
		dc.b $40 ; @
		dc.b $6E ; n
		dc.b $40 ; @
		dc.b $66 ; f
		dc.b $40 ; @
		dc.b $6F ; o
		dc.b $40 ; @
		dc.b $72 ; r
		dc.b $40 ; @
		dc.b $6D ; m
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $74 ; t
		dc.b $40 ; @
		dc.b $69 ; i
		dc.b $40 ; @
		dc.b $6F ; o
		dc.b $40 ; @
		dc.b $6E ; n
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $66 ; f
		dc.b $40 ; @
		dc.b $6F ; o
		dc.b $40 ; @
		dc.b $72 ; r
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $40 ; @
		dc.b $69 ; i
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b $40 ; @
		dc.b $6D ; m
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $7F ; 
UnrecovAddrmsg:	dc.b   0		; DATA XREF: ROM:000E3E7Ao
		dc.b $26 ; &
		dc.b $40 ; @
		dc.b $7F ; 
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $55 ; U
		dc.b $40 ; @
		dc.b $6E ; n
		dc.b $40 ; @
		dc.b $72 ; r
		dc.b $40 ; @
		dc.b $65 ; e
		dc.b $40 ; @
		dc.b $63 ; c
		dc.b $40 ; @
		dc.b $6F ; o
		dc.b $40 ; @
		dc.b $76 ; v
		dc.b $40 ; @
		dc.b $65 ; e
		dc.b $40 ; @
		dc.b $72 ; r
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $62 ; b
		dc.b $40 ; @
		dc.b $6C ; l
		dc.b $40 ; @
		dc.b $65 ; e
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $40 ; @
		dc.b $72 ; r
		dc.b $40 ; @
		dc.b $65 ; e
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $66 ; f
		dc.b $40 ; @
		dc.b $6F ; o
		dc.b $40 ; @
		dc.b $72 ; r
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $40 ; @
		dc.b $69 ; i
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b $40 ; @
		dc.b $6D ; m
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $7F ; 
UnknownAddrmsg:	dc.b   0		; DATA XREF: ROM:000E3E86o
		dc.b $26 ; &
		dc.b $40 ; @
		dc.b $7F ; 
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $55 ; U
		dc.b $40 ; @
		dc.b $6E ; n
		dc.b $40 ; @
		dc.b $6B ; k
		dc.b $40 ; @
		dc.b $6E ; n
		dc.b $40 ; @
		dc.b $6F ; o
		dc.b $40 ; @
		dc.b $77 ; w
		dc.b $40 ; @
		dc.b $6E ; n
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $40 ; @
		dc.b $72 ; r
		dc.b $40 ; @
		dc.b $65 ; e
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b   0
		dc.b $3B ; ;
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $63 ; c
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $6E ; n
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $40 ; @
		dc.b $69 ; i
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $74 ; t
		dc.b $40 ; @
		dc.b $65 ; e
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $72 ; r
		dc.b $40 ; @
		dc.b $65 ; e
		dc.b   0
		dc.b $3A ; :
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $20
		dc.b $40 ; @
		dc.b $7F ; 
UnknownAddr:	dc.b   0		; DATA XREF: ROM:000E3E8Eo
		dc.b  $A
		dc.b   0
		dc.b $24 ; $
		dc.b $40 ; @
		dc.b $3F ; ?
		dc.b $40 ; @
		dc.b $3F ; ?
		dc.b $40 ; @
		dc.b $3F ; ?
		dc.b $40 ; @
		dc.b $3F ; ?
		dc.b $40 ; @
		dc.b $3F ; ?
		dc.b $40 ; @
		dc.b $3F ; ?
		dc.b $40 ; @
		dc.b $3F ; ?
		dc.b $40 ; @
		dc.b $3F ; ?
		dc.b   0
		dc.b $3A ; :
ErrorDataMsg:	dc.b   0		; DATA XREF: ROM:000E3DE8o
					; ROM:000E3EBCo
		dc.b $12
		dc.b $20
		dc.b $7F ; 
		dc.b $20
		dc.b $7F ; 
		dc.b $20
		dc.b $7F ; 
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $45 ; E
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $6F ; o
		dc.b $20
		dc.b $72 ; r
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $64 ; d
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $74 ; t
		dc.b $20
		dc.b $61 ; a
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $7F ; 
		dc.b $20
		dc.b $7F ; 
		dc.b $20
		dc.b $7F ; 
ErrorFlags:	dc.b   0		; DATA XREF: ROM:000E3D8Ao
		dc.b   7
		dc.b $60 ; `
		dc.b $46 ; F
		dc.b $60 ; `
		dc.b $6C ; l
		dc.b $60 ; `
		dc.b $61 ; a
		dc.b $60 ; `
		dc.b $67 ; g
		dc.b $60 ; `
		dc.b $73 ; s
		dc.b   0
		dc.b $3A ; :
		dc.b $60 ; `
		dc.b $20
AccessAddress:	dc.b   0		; DATA XREF: ROM:000E3E00o
		dc.b  $F
		dc.b $60 ; `
		dc.b $41 ; A
		dc.b $60 ; `
		dc.b $63 ; c
		dc.b $60 ; `
		dc.b $63 ; c
		dc.b $60 ; `
		dc.b $65 ; e
		dc.b $60 ; `
		dc.b $73 ; s
		dc.b $60 ; `
		dc.b $73 ; s
		dc.b $60 ; `
		dc.b $20
		dc.b $60 ; `
		dc.b $61 ; a
		dc.b $60 ; `
		dc.b $64 ; d
		dc.b $60 ; `
		dc.b $64 ; d
		dc.b $60 ; `
		dc.b $72 ; r
		dc.b $60 ; `
		dc.b $65 ; e
		dc.b $60 ; `
		dc.b $73 ; s
		dc.b $60 ; `
		dc.b $73 ; s
		dc.b   0
		dc.b $3A ; :
IRMessage:	dc.b 0			; DATA XREF: ROM:000E3E16o
		dc.b   3
		dc.b $60 ; `
		dc.b $69 ; i
		dc.b $60 ; `
		dc.b $72 ; r
		dc.b   0
		dc.b $3A ; :
; ---------------------------------------------------------------------------

BusError:				; DATA XREF: ROM:00000008o
		move	#$2700,sr
		pea	$E(sp)
		movem.l	d0-a6,-(sp)
		lea	BusErrorMsg(pc),a1
		bsr.w	CommonErrorInit
		move.l	sp,usp
		bra.w	BusAddressError_Handler
; ---------------------------------------------------------------------------

AddressError:				; DATA XREF: ROM:0000000Co
		move	#$2700,sr
		pea	$E(sp)
		movem.l	d0-a6,-(sp)
		lea	AddressErrorMsg(pc),a1
		bsr.w	CommonErrorInit
		move.l	sp,usp
		bra.w	BusAddressError_Handler
; ---------------------------------------------------------------------------

TraceError:				; DATA XREF: ROM:00000024o
		move	#$2700,sr
		pea	6(sp)
		movem.l	d0-a6,-(sp)
		lea	TraceMsg(pc),a1
		bsr.w	CommonErrorInit
		moveq	#0,d1
		move.l	sp,usp
		bra.w	Exception_Handler
; ---------------------------------------------------------------------------

SpuriousException:			; DATA XREF: ROM:00000060o
		move	#$2700,sr
		pea	6(sp)
		movem.l	d0-a6,-(sp)
		lea	SpuriousExceptionMsg(pc),a1
		bsr.w	CommonErrorInit
		moveq	#0,d1
		move.l	sp,usp
		bra.w	Exception_Handler
; ---------------------------------------------------------------------------

ZeroDivide:				; DATA XREF: ROM:00000014o
		move	#$2700,sr
		pea	6(sp)
		movem.l	d0-a6,-(sp)
		lea	ZeroDivideMsg(pc),a1
		bsr.w	CommonErrorInit
		moveq	#-1,d1
		lea	ChkDiv(pc),a4
		move.l	sp,usp
		bra.w	Exception_Handler
; ---------------------------------------------------------------------------

CHKExceptionError:			; DATA XREF: ROM:00000018o
		move	#$2700,sr
		pea	6(sp)
		movem.l	d0-a6,-(sp)
		lea	CHKExceptionMsg(pc),a1
		bsr.w	CommonErrorInit
		moveq	#-1,d1
		lea	ChkChk(pc),a4
		move.l	sp,usp
		bra.w	Exception_Handler
; ---------------------------------------------------------------------------

TRAPVError:				; DATA XREF: ROM:0000001Co
		move	#$2700,sr
		pea	6(sp)
		movem.l	d0-a6,-(sp)
		lea	TRAPVErrMsg(pc),a1
		bsr.w	CommonErrorInit
		moveq	#-1,d1
		lea	ChkTrapV(pc),a4
		move.l	sp,usp
		bra.w	Exception_Handler
; ---------------------------------------------------------------------------

IllegalInstrError:			; DATA XREF: ROM:00000010o
		move	#$2700,sr
		pea	6(sp)
		movem.l	d0-a6,-(sp)
		lea	IllegalInstrMsg(pc),a1
		bsr.w	CommonErrorInit
		moveq	#0,d1
		move.l	sp,usp
		bra.w	Exception_Handler
; ---------------------------------------------------------------------------

PrivilegeViolation:			; DATA XREF: ROM:00000020o
		move	#$2700,sr
		pea	6(sp)
		movem.l	d0-a6,-(sp)
		lea	PrivilegeViolationMsg(pc),a1
		bsr.w	CommonErrorInit
		moveq	#0,d1
		move.l	sp,usp
		bra.w	Exception_Handler
; ---------------------------------------------------------------------------

LineAEmulation:				; DATA XREF: ROM:00000028o
		move	#$2700,sr
		pea	6(sp)
		movem.l	d0-a6,-(sp)
		lea	LineAEmulationMsg(pc),a1
		bsr.w	CommonErrorInit
		moveq	#0,d1
		move.l	sp,usp
		bra.w	Exception_Handler
; ---------------------------------------------------------------------------

LineFEmulation:				; DATA XREF: ROM:0000002Co
		move	#$2700,sr
		pea	6(sp)
		movem.l	d0-a6,-(sp)
		lea	LineFEmulationMsg(pc),a1
		bsr.w	CommonErrorInit
		moveq	#0,d1
		move.l	sp,usp
		bra.w	Exception_Handler
; ---------------------------------------------------------------------------

TrapVector:				; DATA XREF: ROM:00000080o
					; ROM:00000084o ...
		move	#$2700,sr
		pea	6(sp)
		movem.l	d0-a6,-(sp)
		lea	TrapVectorMsg(pc),a1
		bsr.w	CommonErrorInit
		moveq	#-1,d1
		lea	ChkTrap(pc),a4
		move.l	sp,usp
		bra.w	Exception_Handler

; =============== S U B	R O U T	I N E =======================================


CommonErrorInit:			; CODE XREF: ROM:000E3B92p
					; ROM:000E3BACp ...

arg_0		=  4

		move.l	a1,-(sp)
		bsr.w	InitTerminal
		lea	MapEng_Debugger(pc),a0
		lea	($FFFF0000).l,a1
		move.w	#0,d0
		jsr	EniDec
		movea.l	(sp)+,a1
		lea	($FFFF000A).l,a5
		bsr.w	Print_Message
		lea	HackerName(pc),a1
		lea	($FFFF0128).l,a5
		bsr.w	Print_Message
		move.w	EMailmsg(pc),d0
		beq.s	loc_E3D2C
		lea	($FFFF0142).l,a5
		lea	Atmsg(pc),a1
		bsr.w	Print_Message
		lea	EMailmsg(pc),a1
		bsr.w	Print_Message

loc_E3D2C:				; CODE XREF: CommonErrorInit+36j
		lea	($FFFF04C2).l,a5
		move.w	#1,d0
		bsr.w	Print_Word
		lea	($FFFF04EC).l,a5
		move.l	sp,d0
		addi.l	#$40,d0	; '@'
		bsr.w	Print_Long
		lea	($FFFF049C).l,a5
		move.l	usp,a0
		move.l	a0,d0
		bsr.w	Print_Long
		lea	arg_0(sp),a0
		lea	($FFFF0558).l,a2
		moveq	#4,d3

loc_E3D66:				; CODE XREF: CommonErrorInit+9Ej
		moveq	#2,d4
		movea.l	a2,a5

loc_E3D6A:				; CODE XREF: CommonErrorInit+96j
		move.l	(a0)+,d0
		bsr.w	Print_Long
		adda.w	#8,a5
		dbf	d4,loc_E3D6A
		adda.w	#$50,a2	; 'P'
		dbf	d3,loc_E3D66
		rts
; End of function CommonErrorInit

; ---------------------------------------------------------------------------

BusAddressError_Handler:		; CODE XREF: ROM:000E3B98j
					; ROM:000E3BB2j
		move.l	usp,a0
		adda.w	#$40,a0	; '@'
		move.w	(a0)+,d0
		lea	ErrorFlags(pc),a1
		lea	($FFFF0412).l,a5
		bsr.w	Print_Message
		movea.l	a5,a2
		move.w	#'W'|RED,d1
		lea	WriteTomsg(pc),a1
		btst	#4,d0
		beq.s	loc_E3DB0
		move.w	#'R'|RED,d1
		lea	ReadFrommsg(pc),a1

loc_E3DB0:				; CODE XREF: ROM:000E3DA6j
		lea	($FFFF005A).l,a5
		bsr.w	Print_Message
		movea.l	a2,a5
		move.w	d1,(a5)+
		move.w	#'I'|RED,d1
		btst	#3,d0
		beq.s	loc_E3DCC
		move.w	#'N'|RED,d1

loc_E3DCC:				; CODE XREF: ROM:000E3DC6j
		move.w	d1,(a5)+
		moveq	#2,d2

loc_E3DD0:				; CODE XREF: ROM:000E3DDEj
		move.w	#'L'|RED,d1
		btst	d2,d0
		beq.s	loc_E3DDC
		move.w	#'H'|RED,d1

loc_E3DDC:				; CODE XREF: ROM:000E3DD6j
		move.w	d1,(a5)+
		dbf	d2,loc_E3DD0
		lea	($FFFF03D6).l,a5
		lea	ErrorDataMsg(pc),a1
		bsr.w	Print_Message
		move.l	(a0)+,d0
		lea	($FFFF007E).l,a5
		bsr.w	Print_Address
		move.w	#$21,(a5)+ ; '!'
		lea	AccessAddress(pc),a1
		lea	($FFFF0432).l,a5
		bsr.w	Print_Message
		bsr.w	Print_Address
		move.w	(a0)+,d0
		move.w	d0,d5
		lea	IRMessage(pc),a1
		lea	($FFFF04CE).l,a5
		bsr.w	Print_Message
		bsr.w	Print_Word
		move.w	(a0)+,d0
		lea	($FFFF0468).l,a5
		bsr.w	Print_Word
		move.l	(a0)+,d0
		movea.l	d0,a3
		lea	($FFFF0484).l,a5
		bsr.w	Print_Address
		lea	($FFFF02D6).l,a5
		lea	RewindBusAddressError(pc),a4
		pea	loc_E3E58(pc)
		pea	SetFullRecovery(pc)
		bra.w	Disassemble_Opcode
; ---------------------------------------------------------------------------

loc_E3E58:				; DATA XREF: ROM:000E3E4Co
		bne.s	DisassemblyFailed
		move.l	a3,d0
		subq.l	#2,d0
		lea	($FFFF0282).l,a5
		bsr.w	Print_Address
		move.w	#$3A,(a5)+ ; ':'
		bra.s	loc_E3E9C
; ---------------------------------------------------------------------------

DisassemblyFailed:			; CODE XREF: ROM:loc_E3E58j
		lea	($FFFF0372).l,a5
		lea	UnrecovDatamsg(pc),a1
		bmi.s	loc_E3E7E
		lea	UnrecovAddrmsg(pc),a1

loc_E3E7E:				; CODE XREF: ROM:000E3E78j
		bvc.s	loc_E3E8A
		lea	($FFFF0322).l,a5
		lea	UnknownAddrmsg(pc),a1

loc_E3E8A:				; CODE XREF: ROM:loc_E3E7Ej
		bsr.w	Print_Message
		lea	UnknownAddr(pc),a1
		lea	($FFFF0282).l,a5
		bsr.w	Print_Message

loc_E3E9C:				; CODE XREF: ROM:000E3E6Cj
		moveq	#$E,d1
		bra.w	FinishErrorDump
; ---------------------------------------------------------------------------

Exception_Handler:			; CODE XREF: ROM:000E3BCEj
					; ROM:000E3BEAj ...
		move.l	usp,a0
		adda.w	#$40,a0	; '@'
		lea	AtAddressmsg(pc),a1
		lea	($FFFF005A).l,a5
		bsr.w	Print_Message
		lea	($FFFF0426).l,a5
		lea	ErrorDataMsg(pc),a1
		bsr.w	Print_Message
		move.w	(a0)+,d0
		lea	($FFFF0468).l,a5
		bsr.w	Print_Word
		movea.l	(a0)+,a3
		tst.w	d1
		beq.s	loc_E3EE2
		moveq	#0,d2

loc_E3ED8:				; CODE XREF: ROM:000E3EE0j
		move.w	-(a3),d5
		jsr	(a4)
		beq.s	loc_E3EE2
		addq.w	#2,d2
		bra.s	loc_E3ED8
; ---------------------------------------------------------------------------

loc_E3EE2:				; CODE XREF: ROM:000E3ED4j
					; ROM:000E3EDCj
		move.l	a3,d0
		lea	($FFFF0482).l,a5
		bsr.w	Print_Address
		lea	($FFFF0080).l,a5
		bsr.w	Print_Address
		move.w	#$21,(a5)+ ; '!'
		lea	($FFFF0282).l,a5
		bsr.w	Print_Address
		move.w	#$3A,(a5)+ ; ':'
		move.w	(a3)+,d5
		lea	($FFFF02D6).l,a5
		lea	locret_E3FC2(pc),a4
		bsr.w	Disassemble_Opcode
		moveq	#6,d1

FinishErrorDump:			; CODE XREF: ROM:000E3E9Ej
		move.l	usp,a0
		lea	$40(a0,d1.w),a0
		lea	($FFFF0730).l,a2
		move.w	a0,d3
		subi.w	#$FE00,d3
		bpl.s	loc_E3FA6
		neg.w	d3
		cmpi.w	#$50,d3	; 'P'
		bcs.s	loc_E3F3A
		moveq	#$50,d3	; 'P'

loc_E3F3A:				; CODE XREF: ROM:000E3F36j
		lsr.w	#1,d3
		move.w	d3,d5
		addq.w	#7,d3
		lsr.w	#3,d3
		subq.w	#1,d3
		andi.w	#7,d5
		bne.s	loc_E3F4C
		moveq	#8,d5

loc_E3F4C:				; CODE XREF: ROM:000E3F48j
		swap	d1
		lsr.w	#1,d5
		scs	d1
		swap	d1
		subq.w	#1,d5

loc_E3F56:				; CODE XREF: ROM:000E3F88j
		moveq	#3,d4
		tst.w	d3
		bne.s	loc_E3F60
		move.w	d5,d4
		bmi.s	loc_E3F8C

loc_E3F60:				; CODE XREF: ROM:000E3F5Aj
		movea.l	a2,a5
		move.w	#$2B,(a5)+ ; '+'
		exg	d0,d1
		bsr.w	sub_E2390
		exg	d0,d1
		addi.w	#$10,d1
		move.w	#$20,(a5)+ ; ' '

loc_E3F76:				; CODE XREF: ROM:000E3F80j
		move.l	(a0)+,d0
		bsr.w	loc_E243A
		adda.w	#2,a5
		dbf	d4,loc_E3F76
		adda.w	#$50,a2	; 'P'
		dbf	d3,loc_E3F56

loc_E3F8C:				; CODE XREF: ROM:000E3F5Ej
		swap	d1
		tst.b	d1
		beq.s	loc_E3FA6
		adda.w	#$FFF6,a5
		move.w	#$20,(a5)+ ; ' '
		move.w	#$20,(a5)+ ; ' '
		move.w	#$20,(a5)+ ; ' '
		move.w	#$20,(a5)+ ; ' '

loc_E3FA6:				; CODE XREF: ROM:000E3F2Ej
					; ROM:000E3F90j
		bsr.w	DrawTerminal
		move.w	#0,($A11100).l
		movem.l	(sp)+,d0-a6
		addq.w	#4,sp
		move	#$2300,sr

loc_E3FBC:				; CODE XREF: ROM:000E3FC0j
		nop
		nop
		bra.s	loc_E3FBC
; ---------------------------------------------------------------------------

locret_E3FC2:				; DATA XREF: ROM:000E3F12o
		rts
; ---------------------------------------------------------------------------

RewindBusAddressError:			; DATA XREF: ROM:000E3E48o
		move.w	d5,d0
		andi.w	#$FFC0,d0
		cmpi.w	#$4E80,d0
		beq.s	loc_E4000
		cmpi.w	#$4EC0,d0
		beq.w	loc_E4098
		move.w	d5,d0
		andi.w	#$F0F8,d0
		cmpi.w	#$50C8,d0
		beq.s	loc_E4028
		andi.w	#$F000,d0
		cmpi.w	#$6000,d0
		beq.s	loc_E4048
		rol.w	#4,d0
		beq.s	loc_E3FF6
		subq.b	#4,d0
		bmi.s	loc_E4010

loc_E3FF6:				; CODE XREF: ROM:000E3FF0j
		suba.w	d4,a3

loc_E3FF8:				; CODE XREF: ROM:000E4024j
		bsr.w	Calc_effective_address_size
		suba.w	d4,a3
		rts
; ---------------------------------------------------------------------------

loc_E4000:				; CODE XREF: ROM:000E3FCEj
		move.l	usp,a0
		movea.l	$4E(a0),a3
		moveq	#2,d3
		bsr.w	Calc_effective_address_size
		suba.w	d4,a3
		rts
; ---------------------------------------------------------------------------

loc_E4010:				; CODE XREF: ROM:000E3FF4j
		exg	d5,d1
		bsr.w	Calc_effective_address_size
		suba.w	d4,a3
		exg	d5,d1
		move.l	usp,a0
		move.w	$40(a0),d0
		btst	#4,d0
		beq.s	loc_E3FF8
		rts
; ---------------------------------------------------------------------------

loc_E4028:				; CODE XREF: ROM:000E3FE2j
		move.l	usp,a0
		move	$48(a0),sr
		bsr.w	sub_E41DE
		bne.s	loc_E4094
		move.w	d5,d0
		andi.w	#7,d0
		lsl.w	#4,d0
		move.l	(a0,d0.w),d0
		cmpi.w	#$FFFF,d0
		beq.s	loc_E4094
		bra.s	loc_E406C
; ---------------------------------------------------------------------------

loc_E4048:				; CODE XREF: ROM:000E3FECj
		move.b	d5,d3
		beq.s	loc_E4056
		ext.w	d3
		neg.w	d3
		lea	(a3,d3.w),a3
		rts
; ---------------------------------------------------------------------------

loc_E4056:				; CODE XREF: ROM:000E404Aj
		tst.w	d2
		beq.s	loc_E406C
		cmpi.b	#4,d2
		beq.s	loc_E408A
		move.l	usp,a0
		move	$48(a0),sr
		bsr.w	sub_E41DE
		beq.s	loc_E4090

loc_E406C:				; CODE XREF: ROM:000E4046j
					; ROM:000E4058j
		bsr.w	WordBranch_ScanSource
		beq.s	loc_E407C
		bvc.s	locret_E4096
		addq.w	#8,sp
		pea	SetInferredRecovery
		bra.s	loc_E4082
; ---------------------------------------------------------------------------

loc_E407C:				; CODE XREF: ROM:000E4070j
		addq.w	#8,sp
		pea	SetLostAddress

loc_E4082:				; CODE XREF: ROM:000E407Aj
		move.l	a3,d0
		lea	(a3),a2
		bra.w	Print_Address
; ---------------------------------------------------------------------------

loc_E408A:				; CODE XREF: ROM:000E405Ej
		move.l	usp,a0
		movea.l	$4E(a0),a3

loc_E4090:				; CODE XREF: ROM:000E406Aj
		tst.b	d5
		bne.s	locret_E4096

loc_E4094:				; CODE XREF: ROM:000E4032j
					; ROM:000E4044j
		subq.l	#2,a3

locret_E4096:				; CODE XREF: ROM:000E4072j
					; ROM:000E4092j
		rts
; ---------------------------------------------------------------------------

loc_E4098:				; CODE XREF: ROM:000E3FD4j
		addq.w	#8,sp
		pea	SetLostAddress
		lea	(a3),a2
		move.w	d5,d0
		move.w	d5,d1
		andi.w	#$38,d0	; '8'
		lsr.w	#2,d0
		andi.w	#7,d1
		move.w	jmp_EA_CodeMap(pc,d0.w),d0
		jmp	jmp_EA_CodeMap(pc,d0.w)
; ---------------------------------------------------------------------------
jmp_EA_CodeMap:	dc.w InvalidAddrMode-jmp_EA_CodeMap ; DATA XREF: ROM:000E40AEr
					; ROM:jmp_EA_CodeMapo ...
		dc.w InvalidAddrMode-jmp_EA_CodeMap
		dc.w Reg_Addr_Indirect-jmp_EA_CodeMap
		dc.w InvalidAddrMode-jmp_EA_CodeMap
		dc.w InvalidAddrMode-jmp_EA_CodeMap
		dc.w jmp_Reg_Addr_Disp_Indirect-jmp_EA_CodeMap
		dc.w jmp_Reg_Addr_Index_Indirect-jmp_EA_CodeMap
		dc.w jmp_Misc_EA_Modes-jmp_EA_CodeMap
; ---------------------------------------------------------------------------

jmp_Reg_Addr_Disp_Indirect:		; DATA XREF: ROM:000E40C0o
		move.w	d1,d0
		lsl.w	#2,d0
		move.l	usp,a0
		move.l	$20(a0,d0.w),d0
		sub.l	a3,d0
		neg.l	d0
		beq.w	Reg_Addr_Indirect
		bsr.w	Print_Word_Signed
		bra.w	Reg_Addr_Indirect
; ---------------------------------------------------------------------------

jmp_Reg_Addr_Index_Indirect:		; DATA XREF: ROM:000E40C2o
		addq.w	#4,sp
		pea	SetLostData
		move.w	#$24,(a5)+ ; '$'
		move.w	#$403F,(a5)+
		move.w	#$403F,(a5)+
		move.w	#$28,(a5)+ ; '('
		bsr.w	Reg_Addr_Direct
		move.w	#$2C,(a5)+ ; ','
		move.w	#$4058,(a5)+
		move.w	#$406E,(a5)+
		move.w	#$29,(a5)+ ; ')'
		move.w	#$4020,(a5)+
		move.w	#$3B,(a5)+ ; ';'
		move.w	#$4020,(a5)+
		move.l	a3,d0
		bra.w	Print_Address
; ---------------------------------------------------------------------------

jmp_Misc_EA_Modes:			; DATA XREF: ROM:000E40C4o
		lsl.w	#1,d1
		move.w	off_E4126(pc,d1.w),d1
		jmp	off_E4126(pc,d1.w)
; ---------------------------------------------------------------------------
off_E4126:	dc.w jmp_Abs_Short-off_E4126 ; DATA XREF: ROM:000E411Er
					; ROM:off_E4126o ...
		dc.w jmp_Abs_Long-off_E4126
		dc.w jmp_PC_Disp_Indirect-off_E4126
		dc.w jmp_PC_Index_Indirect-off_E4126
		dc.w InvalidAddrMode-off_E4126
		dc.w InvalidAddrMode-off_E4126
		dc.w InvalidAddrMode-off_E4126
		dc.w InvalidAddrMode-off_E4126
; ---------------------------------------------------------------------------

jmp_Abs_Short:				; DATA XREF: ROM:off_E4126o
		move.w	#$28,(a5)+ ; '('
		move.l	a3,d0
		ext.l	d0
		bsr.w	Print_Address
		move.w	#$29,(a5)+ ; ')'
		move.w	#$2E,(a5)+ ; '.'
		move.w	#$2077,(a5)+
		rts
; ---------------------------------------------------------------------------

jmp_Abs_Long:				; DATA XREF: ROM:000E4128o
		move.w	#$28,(a5)+ ; '('
		move.l	a3,d0
		bsr.w	Print_Address
		move.w	#$29,(a5)+ ; ')'
		move.w	#$2E,(a5)+ ; '.'
		move.w	#$206C,(a5)+
		rts
; ---------------------------------------------------------------------------

jmp_PC_Disp_Indirect:			; DATA XREF: ROM:000E412Ao
		bsr.w	WordBranch_ScanSource
		beq.s	loc_E4182
		bvs.s	loc_E417C
		addq.w	#4,sp
		lea	(a2),a3
		pea	SetFullRecovery(pc)
		bra.w	PC_Disp_Indirect
; ---------------------------------------------------------------------------

loc_E417C:				; CODE XREF: ROM:000E416Ej
		addq.w	#4,sp
		pea	SetInferredRecovery(pc)

loc_E4182:				; CODE XREF: ROM:000E416Cj
		move.l	a3,d0
		bsr.w	Print_Address
		move.w	#$28,(a5)+ ; '('
		move.w	#$6070,(a5)+
		move.w	#$6063,(a5)+
		move.w	#$29,(a5)+ ; ')'
		rts
; ---------------------------------------------------------------------------

jmp_PC_Index_Indirect:			; DATA XREF: ROM:000E412Co
		addq.w	#4,sp
		pea	SetLostData(pc)
		move.w	#$24,(a5)+ ; '$'
		move.w	#$403F,(a5)+
		move.w	#$403F,(a5)+
		move.w	#$28,(a5)+ ; '('
		move.w	#$6070,(a5)+
		move.w	#$6063,(a5)+
		move.w	#$2C,(a5)+ ; ','
		move.w	#$2C,(a5)+ ; ','
		move.w	#$4058,(a5)+
		move.w	#$406E,(a5)+
		move.w	#$29,(a5)+ ; ')'
		move.w	#$4020,(a5)+
		move.w	#$3B,(a5)+ ; ';'
		move.w	#$4020,(a5)+
		move.l	a3,d0
		bra.w	Print_Address

; =============== S U B	R O U T	I N E =======================================


sub_E41DE:				; CODE XREF: ROM:000E402Ep
					; ROM:000E4066p
	lea	Check_CC(pc,d2.w),a1
	jsr	(a1)
	tst.b	d0
	rts
; ---------------------------------------------------------------------------
;ChkCC macro condition
;	condition	d0
;	rts
;	endm
; Handlers for condition checks.
Check_CC:
                 st      d0
                 rts
; End of function sub_E41E8

; ---------------------------------------------------------------------------
                 sf      d0
                 rts
; ---------------------------------------------------------------------------
                 shi     d0
                 rts
; ---------------------------------------------------------------------------
                 sls     d0
                 rts
; ---------------------------------------------------------------------------
                 scc     d0
                 rts
; ---------------------------------------------------------------------------
                 scs     d0
                 rts
; ---------------------------------------------------------------------------
                 sne     d0
                 rts
; ---------------------------------------------------------------------------
                 seq     d0
                 rts
; ---------------------------------------------------------------------------
                 svc     d0
                 rts
; ---------------------------------------------------------------------------
                 svs     d0
                 rts
; ---------------------------------------------------------------------------
                 spl     d0
				 rts
; ---------------------------------------------------------------------------
                 smi     d0
                 rts
; ---------------------------------------------------------------------------
                 sge     d0
                 rts
; ---------------------------------------------------------------------------
                 slt     d0
                 rts
; ---------------------------------------------------------------------------
                 sgt     d0
                 rts
; ---------------------------------------------------------------------------
                 sle     d0
                 rts
; ---------------------------------------------------------------------------

ChkDiv:					; DATA XREF: ROM:000E3C04o
		move.w	d5,d0
		and.w	#$F0C0,d0
		cmp.w	#$80C0,d0
		bne.s	locret_E423E
		moveq	#1,d3
		move.w	d5,d1
		bsr.w	Calc_effective_address_size
		cmp.w	d2,d4

locret_E423E:				; CODE XREF: ROM:000E4232j
		rts
; ---------------------------------------------------------------------------

ChkChk:					; DATA XREF: ROM:000E3C24o
		move.w	d5,d0
		and.w	#$F040,d0
		cmp.w	#$4000,d0
		bne.s	locret_E4256
		moveq	#1,d3
		move.w	d5,d1
		bsr.w	Calc_effective_address_size
		cmp.w	d2,d4

locret_E4256:				; CODE XREF: ROM:000E424Aj
		rts
; ---------------------------------------------------------------------------

ChkTrapV:				; DATA XREF: ROM:000E3C44o
		move.w	d5,d0
		and.w	#$4E76,d0
		cmp.w	#$4E76,d0
		rts
; ---------------------------------------------------------------------------

ChkTrap:				; DATA XREF: ROM:000E3CD4o
		move.w	d5,d0
		and.w	#$FFF0,d0
		cmp.w	#$4E40,d0
		rts

; =============== S U B	R O U T	I N E =======================================


Calc_effective_address_size:		; CODE XREF: ROM:loc_E3FF8p
					; ROM:000E4008p ...
		moveq	#0,d4
		move.w	d1,d0
		andi.w	#$38,d0	; '8'
		cmpi.b	#$20,d0	; ' '
		ble.s	locret_E42A0
		addq.w	#2,d4
		cmpi.b	#$38,d0	; '8'
		bne.s	locret_E42A0
		move.w	d1,d0
		andi.w	#7,d0
		cmpi.b	#1,d0
		beq.s	loc_E429E
		cmpi.b	#4,d0
		blt.s	locret_E42A0
		cmpi.b	#2,d3
		bcs.s	locret_E42A0

loc_E429E:				; CODE XREF: Calc_effective_address_size+20j
		addq.w	#2,d4

locret_E42A0:				; CODE XREF: Calc_effective_address_size+Cj
					; Calc_effective_address_size+14j ...
		rts
; End of function Calc_effective_address_size


; =============== S U B	R O U T	I N E =======================================


SetFullRecovery:			; DATA XREF: ROM:000E3E50o
					; ROM:000E4174o
		move	#4,ccr
		rts
; End of function SetFullRecovery

; ---------------------------------------------------------------------------

SetInferredRecovery:				; DATA XREF: ROM:000E4076o
					; ROM:000E417Eo
		move	#2,ccr
		rts
; ---------------------------------------------------------------------------

SetLostAddress:				; DATA XREF: ROM:000E407Eo
					; ROM:000E409Ao
		move	#0,ccr
		rts
; ---------------------------------------------------------------------------

SetLostData:				; DATA XREF: ROM:000E40E2o
					; ROM:000E419Co
		move	#8,ccr
		rts

; =============== S U B	R O U T	I N E =======================================


WordBranch_ScanSource:			; CODE XREF: ROM:loc_E406Cp
					; ROM:jmp_PC_Disp_Indirectp
		move.l	a3,d0
		bclr	#0,d0
		st	d2
		move.l	#-$8000,d1
		add.l	d1,d0
		movea.l	d0,a0
		cmpa.l	EndOfRom-1,a0
		bls.s	loc_E42E0
		cmpa.l	#$FFFF0000,a0
		bcc.s	loc_E42E0
		movea.l	#$FFFF0000,a0

loc_E42E0:				; CODE XREF: WordBranch_ScanSource+16j
					; WordBranch_ScanSource+1Ej
		cmp.l	EndOfRom-1,d0
		addi.l	#$FFFE,d0
		cmp.l	EndOfRom-1,d0
		bls.s	loc_E42F4
		move.l	EndOfRom-1,d0

loc_E42F4:				; CODE XREF: WordBranch_ScanSource+34j
		sub.l	a0,d0
		addq.l	#1,d0
		lsr.l	#1,d0
		subq.l	#1,d0
		bmi.s	locret_E4342
		move.w	d0,d1
		swap	d5
		move.w	#$7FFE,d5
		ext.w	d2
		sub.w	d2,d5
		moveq	#0,d2

loc_E430C:				; CODE XREF: WordBranch_ScanSource+72j
		cmp.l	(a0),d5
		bne.s	loc_E4328
		tst.w	d2
		beq.s	loc_E4322
		cmpi.w	#4,d2
		blt.s	loc_E431E
		addq.w	#1,d2
		bra.s	loc_E4330
; ---------------------------------------------------------------------------

loc_E431E:				; CODE XREF: WordBranch_ScanSource+5Ej
		pea	(a0)
		bra.s	loc_E4326
; ---------------------------------------------------------------------------

loc_E4322:				; CODE XREF: WordBranch_ScanSource+58j
		lea	2(a0),a2

loc_E4326:				; CODE XREF: WordBranch_ScanSource+66j
		addq.w	#1,d2

loc_E4328:				; CODE XREF: WordBranch_ScanSource+54j
		subq.w	#2,d5
		addq.l	#2,a0
		dbf	d1,loc_E430C

loc_E4330:				; CODE XREF: WordBranch_ScanSource+62j
		swap	d5
		tst.w	d2
		beq.s	locret_E4342
		cmpi.w	#1,d2
		bne.s	loc_E4344
		lea	(a2),a3
		move	#0,ccr

locret_E4342:				; CODE XREF: WordBranch_ScanSource+42j
					; WordBranch_ScanSource+7Aj
		rts
; ---------------------------------------------------------------------------

loc_E4344:				; CODE XREF: WordBranch_ScanSource+80j
		movea.l	a5,a1
		lea	($FFFF0372).l,a5
		cmpi.b	#4,d2
		sgt	d1
		blt.s	loc_E4356
		moveq	#4,d2

loc_E4356:				; CODE XREF: WordBranch_ScanSource+98j
		subq.w	#2,d2

loc_E4358:				; CODE XREF: WordBranch_ScanSource+ACj
		move.l	(sp)+,d0
		move.w	d2,-(sp)
		bsr.w	Print_Address
		move.w	#$2C,(a5)+ ; ','
		move.w	(sp)+,d2
		dbf	d2,loc_E4358
		move.l	a2,d0
		subq.l	#2,d0
		bsr.w	Print_Address
		tst.b	d1
		beq.s	loc_E4386
		move.w	#$2C,(a5)+ ; ','
		move.w	#$2E,(a5)+ ; '.'
		move.w	#$2E,(a5)+ ; '.'
		move.w	#$2E,(a5)+ ; '.'

loc_E4386:				; CODE XREF: WordBranch_ScanSource+BAj
		movea.l	a1,a5
		move	#2,ccr
		rts
; End of function WordBranch_ScanSource



