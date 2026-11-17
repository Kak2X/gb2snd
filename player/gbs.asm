; =============== mPadStr ===============
; Zero-pads a string to a fixed length.
;
; IN
; - 1: Text string
; - 2: String length
MACRO mPadStr
PadStr_\@:
ASSERT \2 >= (.end_\@ - .start_\@), "String too long"
.start_\@:
	db \1
.end_\@:
REPT \2 - (.end_\@ - .start_\@) 
	db $00
ENDR
ENDM

INCLUDE "driver/common.asm"

SECTION "GBS Header", ROM0[$0000]
	db "GBS"			; Identifier string
	db $01				; Version
	db ((Sound_BGMPtrTbl.end-Sound_BGMPtrTbl)/3)+((Sound_SFXPtrTbl.end-Sound_SFXPtrTbl)/6)	; Number of songs
	db $01				; First song 
	dw GBS_StartCode	; Load address
	dw GBS_Init			; Init address
	dw SoundInt_Do		; Play address
	dw $DF00			; Stack pointer
IF USE_TIMER
	db $D0				; Timer modulo
	db $04				; Timer control
ELSE
	db $00				; Timer modulo
	db $00				; Timer control
ENDC
	mPadStr "{s:GBS_TITLE}", $20 ; Title
	mPadStr "{s:GBS_AUTHOR}", $20 ; Author
	mPadStr "{s:GBS_COPYRIGHT}", $20 ; Copyright
	
; Changing this padding requires updating build_gbs.cmd, as it will get stripped out by dd
SECTION "Sound Driver Interface", ROM0[$3F00]
GBS_StartCode:
GBS_Init:
	ld   b, a
		;call SoundInt_Init
		ld   a, BANK(SoundInt_Do)
		mBankswitch
	ld   a, b
	cp   ((Sound_BGMPtrTbl.end-Sound_BGMPtrTbl)/3)			; SongId after the last BGM?
	jr   nc, .playSFX			; If so, treat is as SFX(-BGM_COUNT)
.playBGM:
	ldh  [hBGMSet], a
	jp   SoundInt_Do
.playSFX:
	sub  ((Sound_BGMPtrTbl.end-Sound_BGMPtrTbl)/3)
	ldh  [hSFXSet], a
	jp   SoundInt_Do
INCLUDE "player/interface.asm"