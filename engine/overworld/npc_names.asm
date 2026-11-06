SECTION "Polish NPC Names", ROMX

DrawNpcName::
	ld a, [wAutoTextBoxDrawingControl]
	bit BIT_NO_AUTO_TEXT_BOX, a
	ret nz
	ldh a, [hSpriteIndex]
	and a
	ret z
	dec a
	ld c, a
	ld b, 0
	ld a, [wCurMap]
	cp NUM_MAPS
	ret nc
	ld e, a
	ld d, 0
	ld hl, NpcNameMaps
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	or h
	ret z
	add hl, bc
	ld a, [hl]
	and a
	ret z
	ld e, a
	ld d, 0
	ld hl, NpcNamePointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	hlcoord 2, 12
	jp PlaceString

INCLUDE "data/maps/npc_names.asm"
