;*******************************************
;* MD Initialization routine                     *
;*  VDP - Z80 -  Security check              *
;*******************************************

MDInit:                             
                tst.l   ($A10008).l     ; test port A control
                bne.s   PortA_Ok
                tst.w   ($A1000C).l     ; test port C control

PortA_Ok:                              
                bne.s   PortC_Ok
                lea     SetupValues(pc),a5
                movem.w (a5)+,d5-d7
                movem.l (a5)+,a0-a4
                move.b  -$10FF(a1),d0   ; get hardware version
                andi.b  #$F,d0
                beq.s   SkipSecurity

loc_22C:
                move.l  #'SEGA',$2F00(a1)

SkipSecurity:                           
                move.w  (a4),d0         ; check if VDP works
                moveq   #0,d0

loc_238:
                movea.l d0,a6
                move.l    a6,usp          ; set usp to $0
                moveq   #$17,d1

VDPInitLoop:                            
                move.b  (a5)+,d5        ; add $8000 to value
                move.w  d5,(a4)         ; move value to VDP register
                add.w   d7,d5           ; next register

loc_244:
                dbf     d1,VDPInitLoop
                move.l  (a5)+,(a4)
                move.w  d0,(a3)         ; clear the screen

loc_24C:                                ; stop the Z80
                move.w  d7,(a1)
                move.w  d7,(a2)         ; reset the Z80

WaitForZ80:                             
                btst    d0,(a1)         ; has the Z80 stopped?
                bne.s   WaitForZ80      ; if not, branch
                moveq   #$25,d2

Z80InitLoop:                            
                move.b  (a5)+,(a0)+
                dbf     d2,Z80InitLoop

loc_25C:
                move.w  d0,(a2)
                move.w  d0,(a1)         ; start the Z80
                move.w  d7,(a2)         ; reset the Z80

ClrRAMLoop:                             
                move.l  d0,-(a6)
                dbf     d6,ClrRAMLoop   ; clear the entire RAM
                move.l  (a5)+,(a4)      ; set VDP display mode and increment
                move.l  (a5)+,(a4)      ; set VDP to CRAM write
                moveq   #$1F,d3

ClrCRAMLoop:                           
                move.l  d0,(a3)

loc_270:                                ; clear the CRAM
                dbf     d3,ClrCRAMLoop
                move.l  (a5)+,(a4)
                moveq   #$13,d4

ClrVDPStuff:                           
                move.l  d0,(a3)
                dbf     d4,ClrVDPStuff
                moveq   #3,d5


 EVEN


PSGInitLoop:                            
                move.b  (a5)+,$11(a3)   ; reset the PSG
                dbf     d5,PSGInitLoop
                move.w  d0,(a2)
                movem.l (a6),d0-a6      ; clear all registers
                move.w    #$2700,sr       ; set the sr

PortC_Ok:                              
			
                jmp	START

Initial_VDP_setup:
 LEA    InitVDPregs, A2
 MOVEQ  #18, D0
NextReg:
 MOVE.W (A2)+, (CPORT)
 DBRA   D0, NextReg

 MOVE.L #$C0000000, (CPORT)  ; Zero out palette
 MOVE.W #31, D0
PaletteZeroLoop:
 MOVE.L #0, (DPORT)
 DBRA   D0, PaletteZeroLoop

 JSR    ClearTables
 RTS

PAL_VDPsetup:           ; Set PAL specific vertical resolution
 MOVE.W #$817C, (CPORT) ; TV:ON, V int:ON, DMA:ON, V res: 240 pixels
 RTS

; ---------------------------------------------------------------------------
SetupValues:    
                dc.w $8000              
                dc.w $3FFF
                dc.w $100

                dc.l $A00000            ; start of Z80 RAM
                dc.l $A11100            ; Z80 bus request
                dc.l $A11200            ; Z80 reset
                dc.l $C00000
                dc.l $C00004            ; address for VDP registers

                dc.b 4, $14, $30, $3C   ; values for VDP registers
                dc.b 7, $6C, 0, 0
                dc.b 0, 0, $FF, 0
                dc.b $81, $37, 0, 1
                dc.b 1, 0, 0, $FF
                dc.b $FF, 0, 0, $80

                dc.l $40000080

                dc.b $AF, 1, $D9, $1F, $11, $27, 0, $21, $26, 0, $F9, $77 ; Z80 instructions
                dc.b $ED, $B0, $DD, $E1, $FD, $E1, $ED, $47, $ED, $4F
                dc.b $D1, $E1, $F1, 8, $D9, $C1, $D1, $E1, $F1, $F9, $F3
                dc.b $ED, $56, $36, $E9, $E9

                dc.w $8104              ; value for VDP display mode
                dc.w $8F02              ; value for VDP increment
                dc.l $C0000000          ; value for CRAM write mode
                dc.l $40000010

                dc.b $9F, $BF, $DF, $FF ; values for PSG channel volumes
; ---------------------------------------------------------------------------
; ###################### Initial VDP register values ########################

InitVDPregs:
 DC.W   $8014    ; H int:OFF, Full palette, TV:enabled
 DC.W   $8174    ; TV:ON, V int:ON, DMA:ON, Vres: 224 pixels
 DC.W   $8238    ; Screen map A  location = Addr*8192 = E000 (5...3)
 DC.W   $833E    ; Window        location = Addr*2048 = F800 (5...1)
 DC.W   $8406    ; Screen map B  location = Addr*8192 = C000 (2...0)
 DC.W   $8578    ; Sprite list   location = Addr*512  = F000 (6...0)
 DC.W   $8700    ; Border color (00...3F)
 DC.W   $8A00    ; H int not generated
 DC.W   $8B00    ; L2 int:OFF, H/V scroll whole screen
 DC.W   $8C81    ; Hres: 320 pixels, Shadow:OFF, interlace:OFF
 DC.W   $8D34    ; H scrolls     location = Addr*1024 = D000 (5...0)
 DC.W   $8F02    ; VDP address increases WORD by WORD ...
 DC.W   $9001    ; screen map A/B sizes - 64*32
 DC.W   $9100    ; Window width
 DC.W   $9200    ; Window height
 DC.W   $9300    ; DMA word count L
 DC.W   $9400    ; DMA word count H
 DC.W   $9500    ; DMA source L
 DC.W   $9600    ; DMA source M
 DC.W   $9700    ; DMA