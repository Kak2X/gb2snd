PUSHS
SECTION "Sound Driver Interface Memory", HRAM
hROMBank::                  db   ; Current ROM bank
POPS

; =============== SoundInt_Init ===============
;SoundInt_Init:
;	ret
	
; =============== SoundInt_Do ===============
SoundInt_Do:
	ldh  a, [hROMBank]
	push af
		ld   a, BANK(Sound_Do)
		mBankswitch
		call Sound_Do
	pop af
	mBankswitch
	ret