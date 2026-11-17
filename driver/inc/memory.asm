SECTION "Sound Driver - Interface", HRAM[$FF90]
hBGMSet::                  db      ; Requested BGM Id
hSFXSet::                  db      ; Requested SFX Id
hBGMCur::                  db      ; Current BGM Id
hBGMDataPtr_Bank::         db      ; BGM data pointer bank number
hBGMCh1DataPtr_Low::       db      ; Data pointers for every channel
hBGMCh1DataPtr_High::      db      ; ""
hBGMCh2DataPtr_Low::       db      ; ""
hBGMCh2DataPtr_High::      db      ; ""
hBGMCh3DataPtr_Low::       db      ; ""
hBGMCh3DataPtr_High::      db      ; ""
hBGMCh4DataPtr_Low::       db      ; ""
hBGMCh4DataPtr_High::      db      ; ""
hBGMCh1RetPtr_Low::        db      ; "Stack" return address for every channel
hBGMCh1RetPtr_High::       db      ; ""
hBGMCh2RetPtr_Low::        db      ; ""
hBGMCh2RetPtr_High::       db      ; ""
hBGMCh3RetPtr_Low::        db      ; ""
hBGMCh3RetPtr_High::       db      ; ""
hBGMCh4RetPtr_Low::        db      ; ""
hBGMCh4RetPtr_High::       db      ; ""
hBGMCh1OctavePtr_Low::     db      ; Pulse 1 octave table ptr
hBGMCh1OctavePtr_High::    db      ; ""
hBGMCh2OctavePtr_Low::     db      ; Pulse 2 octave table ptr
hBGMCh2OctavePtr_High::    db      ; ""
hBGMCh3OctavePtr_Low::     db      ; Wave octave table ptr
hBGMCh3OctavePtr_High::    db      ; ""
wBGMCh1LengthTimer::       db      ; Pulse 1 note length (ticks remaining)
wBGMCh2LengthTimer::       db      ; Pulse 2 "" 
wBGMCh3LengthTimer::       db      ; Wave    "" 
wBGMCh4LengthTimer::       db      ; Noise   "" 
hBGMCh1OctaveId::          db      ; Pulse 1 octave ID (affects hBGMCh1OctavePtr)
hBGMCh2OctaveId::          db      ; Pulse 2 ""
hBGMCh3OctaveId::          db      ; Wave    ""
hBGMCh4OctaveId::          db      ; Noise   ""
hInitBGMNR12::             db      ; Starting value for Pulse 1's envelope on a new note
hInitBGMNR22::             db      ; "" Pulse 2 ""
hInitBGMNR32::             db      ; "" Wave ""
hInitBGMNR42::             db      ; "" Noise ""
hBGMNR12::                 db      ; Working copy of the sound registers for the music track (bypassed by SFX)
hBGMNR13::                 db      ; ""
hBGMNR14::                 db      ; ""
hBGMNR22::                 db      ; ""
hBGMNR23::                 db      ; ""
hBGMNR24::                 db      ; ""
hBGMNR31::                 db      ; ""
hBGMNR32::                 db      ; ""
hBGMNR33::                 db      ; ""
hBGMNR34::                 db      ; ""
hBGMNR41::                 db      ; ""
hBGMNR42::                 db      ; ""
hBGMNR43::                 db      ; ""
hBGMNR44::                 db      ; ""
hBGMNR51::                 db      ; ""
hSFXCh2DataPtr_Bank::      db      ; Pulse 2 data ptr
hSFXCh2DataPtr_Low::       db      ; ""
hSFXCh2DataPtr_High::      db      ; ""
hSFXCh2LengthTimer::       db      ; SFX Pulse 2 note length (ticks remaining)
hSFXCh2Used::              db      ; Pulse 2 channel used by SFX
hSFXCh4DataPtr_Bank::      db      ; Noise data ptr
hSFXCh4DataPtr_Low::       db      ; ""
hSFXCh4DataPtr_High::      db      ; ""
hSFXCh4LengthTimer::       db      ; SFX Noise note length (ticks remaining)
hSFXCh4Used::              db      ; Noise channel used by SFX
hSFXPriority::             db      ; Current sound effect priority