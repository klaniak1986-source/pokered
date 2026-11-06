_Route1Youngster1MartSampleText::
	text "Cześć! Pracuję"
	line "w Poké Marcie."

	para "Wpadnij do nas,"
	line "gdy będziesz"
	cont "w Viridian City."

	para "A teraz weź"
	line "darmową próbkę!"
	prompt

_Route1Youngster1GotPotionText::
	text "Podarunek dla"
	line "<PLAYER>:"
	cont "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_Route1Youngster1AlsoGotPokeballsText::
	text "Sprzedajemy też"
	line "Poké Balle do"
	cont "łapania Pokémonów!"
	done

_Route1Youngster1NoRoomText::
	text "Masz za dużo"
	line "rzeczy przy sobie!"
	done

_Route1Youngster2Text::
	text "Widzisz uskoki"
	line "wzdłuż drogi?"

	para "Możesz z nich"
	line "zeskoczyć i"
	cont "szybciej wrócić"
	cont "do Pallet Town."
	done

_Route1SignText::
	text "DROGA 1"
	line "PALLET TOWN -"
	cont "VIRIDIAN CITY"
	done
