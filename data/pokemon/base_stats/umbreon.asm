	db DEX_UMBREON
	db 95, 65, 110, 65, 110 ; hp, atk, def, spd, spc
	db DARK, DARK
	db 45 ; catch rate
	db 197 ; base exp
	INCBIN "gfx/pokemon/gsfront/umbreon.pic", 0, 1
	dw UmbreonPicFront, UmbreonPicBack
	db TACKLE, BITE, NO_MOVE, NO_MOVE
	db GROWTH_MEDIUM_FAST
	tmhm TOXIC, TAKE_DOWN, DOUBLE_EDGE, MIMIC, DOUBLE_TEAM, BIDE, SWIFT, REST, SUBSTITUTE
	db BANK(UmbreonPicFront)
