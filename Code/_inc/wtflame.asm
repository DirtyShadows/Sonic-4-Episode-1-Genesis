Wetflame_Main:
		move.b	#$E4, d0
		jsr	PlaySound	; Stop the music.
		
		; Clear everything. (Code provided by Sonic65.)
WTF_ClearEverything:
		jsr	ClearPLC
		jsr	Pal_FadeFrom
		clr.b	($FFFFF64E).w
		move.w	#$2700, sr		; Disable interrupts.
		move.w	($FFFFF60C).w, d0
		move.w	d0, d1
		andi.b	#$BF, d0
		move.w	d0, ($C00004).l
		jsr	ClearScreen
		
		; Clear various zone data.
		clr.w	($FFFFFE10).w		; Level/Act numbers.
		
; --------------------------------------------------------------
		
		
		; More clearing.
		moveq	#0, d0
		lea	($C00004).l, a5		; VRAM control port.
		lea	($C00000).l, a6		; VRAM data port.
		move.l	#$40000000, (a5)	; Clear VRAM.
		move.w	#$3FFF, d1		; $4000 DWORDs to clear.
		
WTF_ClrVRAM:
		move.l	d0, (a6)
		dbf	d1, WTF_ClrVRAM
		
		lea	($FFFFCC00).w, a1
		move.w	#$DF, d1
		
WTF_ClrScroll:
		move.l	d0, (a1)+
		dbf	d1, WTF_ClrScroll	; Clear the scroll data.
		
		lea	($FFFFD000).w, a1
		move.w	#$800, d1
		
WTF_ClrObjects:
		move.l	d0, (a1)+
		dbf	d1, WTF_ClrObjects	; Clear the object data.
		
; --------------------------------------------------------------
		
		; Load the C64 character set.
		moveq	#$2, d0			; Color: $2
		jsr	C64_charset_load
		
; --------------------------------------------------------------
		
		; Set up the scroll plane.
		move.w	#$9001, (a5)		; Scroll size: 64x32
		move.w	#-225, d7		; Start at -225 so the first line can be loaded.
		move.l	#$40000010, (a5)
		move.w	d7, (a6)
		
; --------------------------------------------------------------
		
		; Reserved registers:
		; - d4: Frame counter.
		; - d5: Current scroll line.
		; - d6: Wetflame TL;DR line counter.
		; - d7: Current VScroll value.
		; - a1: Wetflame_TLDR address.
		
		; Load the palette.
		move.l	#$C0040000, (a5)	; Palette 0, Index 2.
		move.w	#$0EEE, (a6)
		
		; Pick a random Wetflame TL;DR.
;		move.w	($FFFFFE0E).w,d0
;		andi.w	#$1F,d0
		move.l	#0,d0
		
		; Load the TL;DR's address.
		lea	(TLDR_Table), a1
		lsl.w	#2, d0
		movea.l	(a1,d0.w),a1
		
		; Initialize the TL;DR variables.
		move.w	(a1)+, d6	; Number of lines for the TL;DR.
		moveq	#1, d5		; Current scroll line.
		moveq	#0, d4		; Frame counter.
		
		; Enable the display.
		move.w	#$8164, ($C00004).l
		
; --------------------------------------------------------------
		
		; Start of Wetflame!
		; TODO: Replace with Sonic65's PCM driver.
		
		; Note: Interrupts are disabled due to a conflict
		; with the text scrolling if Labyrinth Zone was the
		; active zone when a Wetflame monitor was broken.
		;move.w	#$2000, sr
		
WTF_scroll_loop:
		
		; VBlank routine by Sik.
VBlank_Wait_1:
		; Wait for current VBlank to exit.
		move.w	($C00004).l, d0
		btst.l	#3, d0
		bne.s	VBlank_Wait_1

VBlank_Wait_2:
		; Wait for next VBlank to start.
		move.w	($C00004).l, d0
		btst.l	#3, d0
		beq.s	VBlank_Wait_2
		
		; Next frame.
		addq	#1, d4		; Frame counter.
		btst	#0, d4		; Update on even frames only.
		bne.s	WTF_scroll_loop
		
		; Next frame. Update the VScroll.
		addq	#1, d7
		move.l	#$40000010, (a5)
		move.w	d7, (a6)
		
		; Check if a scroll line needs to be written.
		move.w	d7, d0
		andi.b	#7, d0
		bne.s	WTF_scroll_loop
		
		; VScroll is a multiple of 8.
		move.l	d5, d0		; Set up the Scroll A write address.
		lsl.w	#7, d0		; Shift left by 7 bits. (64 cells horizontally, times two.)
		ori.w	#$4000, d0	; Part of Scroll A's VRAM address.
		swap	d0		; Swap the words in d0.
		ori.b	#$3, d0		; Part of Scroll A's VRAM address.
		move.l	d0, (a5)	; Set the VRAM address.
		
		; Increment the scroll line for next time.
		addq	#1, d5		; Next scroll line.
		andi	#$1F, d5	; 32 scroll lines.
		
		; Check if the TL;DR is completely offscreen.
		cmpi.w	#-35, d6
		beq.s	WTF_finished
		
		; Check if there are any more lines to write.
		cmpi.w	#0, d6
		ble.s	WTF_write_blank_line
		
		; Write a line of text.
		; d0 == column; d1 == data.
		moveq	#39, d0		; 40 columns.
		moveq	#0, d1		; Clear the data register.
		
TLDR_Load:
		; Load a character from the TL;DR.
		move.b	(a1)+, d1
		move.w	d1, (a6)	; Write the character to VRAM.
		dbf	d0, TLDR_Load	; Next column.
		subq	#1, d6		; Decrement the line counter.
		bra.s	WTF_scroll_loop
		
WTF_write_blank_line:
		; Write a blank line to VRAM.
		; d0 == column; d1 == data.
		moveq	#$F, d0		; 64 columns, four at a time.
		moveq	#0, d1		; Clear the data register.
		subq	#1, d6		; Decrement the line counter.
		
WTF_write_blank_line_loop:
		move.l	d1, (a6)	; Write the blank characters to VRAM.
		move.l	d1, (a6)	; Write the blank characters to VRAM.
		dbf	d0, WTF_write_blank_line_loop
		bra.s	WTF_scroll_loop
		
; --------------------------------------------------------------
		
WTF_finished:
		; Finished scrolling. Lose the game.
		move.b	#4,($FFFFFF94).w
		rts		
		
; ===========================================================================
		
		; Data for the TL;DR screen.
		include _inc\C64_charset.asm
		include	_inc\tldr.asm
		
; ===========================================================================

