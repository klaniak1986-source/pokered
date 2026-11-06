_NameRatersHouseNameRaterWantMeToRateText::
	text "Witam, witam,"
	line "jestem oficjalnym"
	cont "RATER!"

	para "Want me to rate"
	line "the nicknames of"
	cont "your #MON?"
	done

_NameRatersHouseNameRaterWhichPokemonText::
	text "Na które Pokémon"
	line "powinienem"
	cont "spojrzeć?"
	prompt

_NameRatersHouseNameRaterGiveItANiceNameText::
	text_ram wNameBuffer
	text ", is it?"
	line "That is a decent"
	cont "nickname!"

	para "But, would you"
	line "like me to give"
	cont "it a nicer name?"

	para "How about it?"
	done

_NameRatersHouseNameRaterWhatShouldWeNameItText::
	text "Jak to nazwać?"
	prompt

_NameRatersHouseNameRaterPokemonHasBeenRenamedText::
	text "OK! This #MON"
	line "has been renamed"
	cont "@"
	text_ram wBuffer
	text "!"

	para "To lepsze imię niż"
	line "wcześniej!"
	done

_NameRatersHouseNameRaterComeAnyTimeYouLikeText::
	text "Przyjdź, kiedy"
	line "tylko zechcesz!"
	done

_NameRatersHouseNameRaterATrulyImpeccableNameText::
	text_ram wNameBuffer
	text ", is it?"
	line "That is a truly"
	cont "impeccable name!"

	para "Take good care of"
	line "@"
	text_ram wNameBuffer
	text "!"
	done
