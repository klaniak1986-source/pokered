	db DEX_ESPEON
	db 65, 65, 60, 110, 130 ; hp, atk, def, spd, spc
	db PSYCHIC_TYPE, PSYCHIC_TYPE
	db 45 ; catch rate
	db 197 ; base exp
	INCBIN "gfx/pokemon/gsfront/espeon.pic", 0, 1
	dw EspeonPicFront, EspeonPicBack
	db TACKLE, CONFUSION, NO_MOVE, NO_MOVE
	db GROWTH_MEDIUM_FAST
	tmhm TOXIC, TAKE_DOWN, DOUBLE_EDGE, MIMIC, DOUBLE_TEAM, BIDE, SWIFT, REST, SUBSTITUTE
	db BANK(EspeonPicFront)
