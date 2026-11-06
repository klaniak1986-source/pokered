_BluesHouseDaisyRivalAtLabText::
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

_BluesHouseDaisyOfferMapText::
	text "Dziadek kazał ci"
	line "coś załatwić?"
	prompt

_GotMapText::
	text "<PLAYER> got a"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_BluesHouseDaisyBagFullText::
	text "Masz ze sobą za"
	line "dużo rzeczy."
	done

_BluesHouseDaisyUseMapText::
	text "Użyj MAP TOWN, aby"
	line "dowiedzieć się,"
	cont "gdzie jesteś."
	done

_BluesHouseDaisyWalkingText::
	text "Pokémon są żywymi"
	line "stworzeniami!"
	done

_BluesHouseTownMapText::
	text "To jest przydatna"
	line "mapa!"
	done
