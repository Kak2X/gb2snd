MACRO dbgm
	db BANK(\1) ; 0 - Bank number
	dw \1 ; 1/2 - Location
	IF DEF(\1)
		EXPORT \1
	ENDC
ENDM
MACRO dsfx
	ASSERT BANK(\2) == BANK(\3)
	db \1 ; 0 - Priority value (lower value -> higher priority)
	db BANK(\2) ; 1 - Bank number
	db HIGH(\2),LOW(\2) ; 2/3 - Pulse 2 location (BE)
	db HIGH(\3),LOW(\3) ; 4/5 - Noise location (BE)
	IF DEF(\2)
		EXPORT \2
	ENDC
	IF DEF(\3)
		EXPORT \3
	ENDC
ENDM

; =============== Sound_BGMPtrTbl ===============
; BGM List
Sound_BGMPtrTbl:
	dbgm BGM_Silence
	dbgm BGM_Title
	dbgm BGM_StageSelect
	dbgm BGM_StageStart
	dbgm BGM_Password
	dbgm BGM_Boss
	dbgm BGM_StageClear
	dbgm BGM_WeaponGet
	dbgm BGM_CrashMan
	dbgm BGM_AirMan
	dbgm BGM_MetalMan
	dbgm BGM_HardMan
	dbgm BGM_WoodMan
	dbgm BGM_TopMan
	dbgm BGM_MagnetMan
	dbgm BGM_NeedleMan
	dbgm BGM_WilyIntro
	dbgm BGM_WilyCastle
	dbgm BGM_Ending
	dbgm BGM_UnusedEnding
	;dbgm BGM_Silence
	;dbgm BGM_Silence
	;dbgm BGM_Silence
	;dbgm BGM_Silence
	;dbgm BGM_Silence
	;dbgm BGM_Silence
	;dbgm BGM_Silence
	;dbgm BGM_Silence
	;dbgm BGM_Silence
	;dbgm BGM_Silence
	;dbgm BGM_Silence
	;dbgm BGM_Silence
.end:

; =============== Sound_SFXPtrTbl ===============
; SFX List
Sound_SFXPtrTbl:
	dsfx $00, SFX_Silence      , SFX_Silence       ; SND_MUTE         
	dsfx $07, SFX2_Land        , SFX4_Land         ; SFX_LAND
	dsfx $08, SFX2_Shoot       , SFX4_Shoot        ; SFX_SHOOT
	dsfx $04, SFX2_EnemyHit    , SFX4_EnemyHit     ; SFX_ENEMYHIT
	dsfx $03, SFX2_EnemyDead   , SFX4_EnemyDead    ; SFX_ENEMYDEAD
	dsfx $05, SFX2_Deflect     , SFX4_Deflect      ; SFX_DEFLECT
	dsfx $00, SFX2_Explode     , SFX4_Explode      ; SFX_EXPLODE
	dsfx $01, SFX2_Bar         , SFX4_Bar          ; SFX_BAR
	dsfx $01, SFX2_ETank       , SFX4_ETank        ; SFX_ETANK        
	dsfx $01, SFX2_1UP         , SFX4_1UP          ; SFX_1UP
	dsfx $00, SFX2_Shutter     , SFX4_Shutter      ; SFX_SHUTTER
	dsfx $00, SFX2_BossBar     , SFX4_BossBar      ; SFX_BOSSBAR
	dsfx $00, SFX2_TeleportIn  , SFX4_TeleportIn   ; SFX_TELEPORTIN
	dsfx $00, SFX2_TeleportOut , SFX4_TeleportOut  ; SFX_TELEPORTOUT
	dsfx $00, SFX2_FreezeToggle, SFX4_FreezeToggle ; SFX_FREEZETOGGLE 
	dsfx $00, SFX2_WeaponAbsorb, SFX4_WeaponAbsorb ; SFX_WEAPONABSORB 
	dsfx $01, SFX2_Block       , SFX4_Block        ; SFX_BLOCK
	dsfx $00, SFX2_UfoCrash    , SFX4_UfoCrash     ; SFX_UFOCRASH     
	dsfx $00, SFX2_CursorMove  , SFX4_CursorMove   ; SFX_CURSORMOVE
	dsfx $02, SFX2_Damaged     , SFX4_Damaged      ; SFX_DAMAGED
	dsfx $00, SFX2_Unused2     , SFX4_Unused2      ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
	;dsfx $00, SFX_Silence      , SFX_Silence       ; X
.end: