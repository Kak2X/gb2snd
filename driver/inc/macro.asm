; =============== mHomeCallRet ===============
; Default bankswitch implementation.
; IN
; - A: Bank number
MACRO mBankswitch
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a 
	IF MODE_MBC5
		xor  a
		ld   [MBC5RomBank], a
	ENDC 
ENDM

MACRO timer_speed
 db $C0, \1
ENDM

MACRO duty_cycle
  db $C1, \1
ENDM

MACRO wave_noise_cutoff
  db $C1, \1
ENDM

MACRO wave_vol
  db $C2, \1
ENDM

MACRO envelope
  db $C2, \1
ENDM

MACRO panning
  db $C4, \1
ENDM

MACRO chan_stop
  db $CE
ENDM

MACRO wait
  db $D0 | \1
ENDM

MACRO silence
  db $E0 | \1
ENDM

MACRO octave
  db $F0 | \1
ENDM

MACRO note
  db \1
ENDM