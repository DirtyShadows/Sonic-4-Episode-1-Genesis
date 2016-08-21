; ==============================================================================
; Art tile constants:
; ==============================================================================
palette_line_0      =      (0<<13)
palette_line_1      =      (1<<13)
palette_line_2      =      (2<<13)
palette_line_3      =      (3<<13)
palette_mask        =      $6000
tile_mask           =      $07FF
nontile_mask        =      $F800
drawing_mask        =      $7FFF
VRAM_Plane_A_Name_Table               = $C000	; Extends until $CFFF
ArtTile_VRAM_Start                    = $0000

; ==============================================================================
; Subroutine equates:
; ==============================================================================
Chunk_Table := Metablock_Table
PlaneMapToVRAM := ShowVDPGraphics 

; ==============================================================================
; Functions:
; ==============================================================================
tiles_to_bytes function addr,((addr&$7FF)<<5)
make_art_tile function addr,pal,pri,((pri&1)<<15)|((pal&3)<<13)|(addr&tile_mask)

; ==============================================================================
; Macros:
; ==============================================================================
; macro to declare an offset table
offsetTable macro {INTLABEL}
current_offset_table := __LABEL__
__LABEL__ label *
    endm

; macro to declare an entry in an offset table
offsetTableEntry macro ptr
	dc.ATTRIBUTE ptr-current_offset_table
    endm


