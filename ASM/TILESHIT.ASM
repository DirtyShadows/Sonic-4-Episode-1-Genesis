LoadTiles2:             ; D0=Start tile , D3=tiles , A0=Source address
 RTS

ClearPatternTable:
 CLR.L  D0
 CLR.L  D1
 JSR    CalcOffset
 MOVE.W #2047, D0
 MOVE.L #DPORT, A0
NextPatternIndex:
 MOVE.W #0, (A0)
 DBRA   D0, NextPatternIndex
 RTS

LoadPatternTable:
 CLR.L  D0
 CLR.L  D1
 JSR    CalcOffset
 MOVE.W #2047, D0
 MOVE.L #DPORT, A1
NextPatternIndexx:
 MOVE.W (A0)+, (A1)
 DBRA   D0, NextPatternIndexx
 RTS

PutTiles:               ; Puts a tile block on the screen
 AND.L  #$FF, D0        ; D3=tile index, D4=Xlen, D5=Ylen
 AND.L  #$FF, D5
 JSR    CalcOffset
 MOVE.W (GFXATTR), D6
 OR.W   D6, D3          ; Add attributes : 15    - Priority
Yloop:                  ;                  14,13 - Palette (0...3)
 MOVE.L D4, D6          ;                  12    - Vertical flip
Xloop:                  ;                  11    - Horizontal flip
 MOVE.W D3, (DPORT)                        
 ADDQ.W #1, D3
 DBRA   D6, Xloop
 ADDQ.B #1, D0
 JSR    CalcOffset
 DBRA   D5, Yloop
 RTS

CalcOffset:             ; Calculates offset in VRAM for pattern table
 MOVEM.L D0-D2, -(A7)   ; modifying routines    
 LSL.W  #6, D0          
 ADD.W  D1, D0          ; D0=Y, D1=X
 ADD.W  D0, D0
 ADD.W  (PTADDR), D0
 AND.L  #$FFFF, D0
 MOVE.L #$40000000, D2  ; D2=VDP command
 MOVE.L D0, D1
 LSL.L  #2, D1
 CLR.W  D1
 SWAP   D1
 OR.L   D1, D2          ; Add Address bits 14 and 15
 AND.L  #$3FFF,D0
 SWAP   D0
 OR.L   D0, D2          ; Add rest of the Address bits
 MOVE.L D2, (CPORT)     ; Write command+screen pointer
 MOVEM.L (A7)+, D0-D2
 RTS

LoadTiles:              ; D0=Start tile , D3=tiles , A0=Source address
; MOVEM.L D0-D3, -(A7)   ; modifying routines    
 LSL.W  #5, D0
 AND.L  #$FFFF, D0
 LSL.W  #4, D3
 SUBQ   #1, D3
 MOVE.L #$40000000, D2  ; D2=VDP command
 MOVE.L D0, D1
 LSL.L  #2, D1
 CLR.W  D1
 SWAP   D1
 OR.L   D1, D2          ; Add Address bits 14 and 15
 AND.L  #$3FFF,D0
 SWAP   D0
 OR.L   D0, D2          ; Add rest of the Address bits
 MOVE.L D2, (CPORT)     ; Write command+screen pointer
 MOVE.L #DPORT, A1
NextTileByte:
 MOVE.W (A0)+, (A1)
 DBRA   D3, NextTileByte
; MOVEM.L (A7)+, D0-D3
 RTS

ClearTables:
 MOVE.W #$C000, (PTADDR)
 JSR    ClearPatternTable
 MOVE.W #$F000, (PTADDR)       ; clear sprites and window
 JSR    ClearPatternTable
 MOVE.W #$E000, (PTADDR)
 JSR    ClearPatternTable
 RTS

LoadBMP:                ; Loads an 4-bit BMP, A0 = Source, D4 = Start tile

 RTS
