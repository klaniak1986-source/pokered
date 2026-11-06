	db DEX_KIRA
	db 150, 175, 145, 160, 175 ; hp, atk, def, spd, spc
	db DRAGON, FLYING
	db 45 ; catch rate
	db 255 ; base exp
	INCBIN "gfx/pokemon/gsfront/kira.pic", 0, 1
	dw KiraPicFront, KiraPicBack
	db FLY, TELEPORT, HYPER_BEAM, BLIZZARD
	db GROWTH_SLOW
	tmhm FLY, TELEPORT, HYPER_BEAM, BLIZZARD, THUNDER, FIRE_BLAST, PSYCHIC_M, \
	     SOLARBEAM, EARTHQUAKE, ICE_BEAM, THUNDERBOLT, DOUBLE_EDGE, \
	     DRAGON_RAGE, ROCK_SLIDE, SURF, REST, SUBSTITUTE
	db BANK(KiraPicFront)
