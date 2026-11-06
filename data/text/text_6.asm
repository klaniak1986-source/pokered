_ItemUseBallText00::
	text "To uniknęło"
	line "rzuconej piłki!"

	para "This #MON"
	line "can't be caught!"
	prompt

_ItemUseBallText01::
	text "Przegapiłeś"
	line "Pokémon!"
	prompt

_ItemUseBallText02::
	text "Pokémon się"
	line "uwolnił!"
	prompt

_ItemUseBallText03::
	text "Wygląda na to, że"
	line "został złapany!"
	prompt

_ItemUseBallText04::
	text "Było tak blisko!"
	prompt

_ItemUseBallText05::
	text "All right!"
	line "@"
	text_ram wEnemyMonNick
	text " was"
	cont "caught!@"
	text_end

_ItemUseBallText07::
	text_ram wBoxMonNicks
	text " was"
	line "transferred to"
	cont "BARTEK's PC!"
	prompt

_ItemUseBallText08::
	text_ram wBoxMonNicks
	text " was"
	line "transferred to"
	cont "someone's PC!"
	prompt

_ItemUseBallText06::
	text "New #DEX data"
	line "will be added for"
	cont "@"
	text_ram wEnemyMonNick
	text "!@"
	text_end

_SurfingGotOnText::
	text "<PLAYER> got on"
	line "@"
	text_ram wNameBuffer
	text "!"
	prompt

_SurfingNoPlaceToGetOffText::
	text "Nie ma gdzie się"
	line "wyrwać!"
	prompt

_VitaminStatRoseText::
	text_ram wNameBuffer
	text "'s"
	line "@"
	text_ram wStringBuffer
	text " rose."
	prompt

_VitaminNoEffectText::
	text "To nie będzie"
	line "miało żadnego"
	cont "efektu."
	prompt

_ThrewBaitText::
	text "<PLAYER> threw"
	line "some BAIT."
	done

_ThrewRockText::
	text "<PLAYER> threw a"
	line "ROCK."
	done

_PlayedFluteNoEffectText::
	text "Grał Poké FLUTE."

	para "Now, that's a"
	line "catchy tune!"
	prompt

_FluteWokeUpText::
	text "Wszyscy śpiący"
	line "Pokémon obudzili"
	cont "się."
	prompt

_PlayedFluteHadEffectText::
	text "<PLAYER> played the"
	line "# FLUTE.@"
	text_end

_CoinCaseNumCoinsText::
	text "Coins"
	line "@"
	text_bcd wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " "
	prompt

_ItemfinderFoundItemText::
	text "ITEMFINDER"
	line "wskazuje, że w"
	cont "pobliżu znajduje"
	cont "się przedmiot."
	prompt

_ItemfinderFoundNothingText::
	text "ITEMFINDER nie"
	line "odpowiada."
	prompt

_RaisePPWhichTechniqueText::
	text "Podnieść PP jakiej"
	line "techniki?"
	done

_RestorePPWhichTechniqueText::
	text "Przywrócić PP"
	line "jakiej techniki?"
	done

_PPMaxedOutText::
	text_ram wStringBuffer
	text "'s PP"
	line "is maxed out."
	prompt

_PPIncreasedText::
	text_ram wStringBuffer
	text "'s PP"
	line "increased."
	prompt

_PPRestoredText::
	text "Policja została"
	line "przywrócona."
	prompt

_BootedUpTMText::
	text "Uruchomiłem TM!"
	prompt

_BootedUpHMText::
	text "Wyłączył HM!"
	prompt

_TeachMachineMoveText::
	text "It contained"
	line "@"
	text_ram wStringBuffer
	text "!"

	para "Teach @"
	text_ram wStringBuffer
	text_start
	line "to a #MON?"
	done

_MonCannotLearnMachineMoveText::
	text_ram wNameBuffer
	text " is not"
	line "compatible with"
	cont "@"
	text_ram wStringBuffer
	text "."

	para "It can't learn"
	line "@"
	text_ram wStringBuffer
	text "."
	prompt

_ItemUseNotTimeText::
	text "DĄB: <PLAYER>!"
	line "This isn't the"
	cont "time to use that! "
	prompt

_ItemUseNotYoursToUseText::
	text "To twoja wina!"
	prompt

_ItemUseNoEffectText::
	text "To nie będzie"
	line "miało żadnego"
	cont "efektu."
	prompt

_ThrowBallAtTrainerMonText1::
	text "Trener zablokował"
	line "BALL!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "Nie bądź"
	line "złodziejem!"
	prompt

_NoCyclingAllowedHereText::
	text "Brak jazdy na"
	line "rowerze"
	next "allowed here."
	prompt

_NoSurfingHereText::
	text "No SURFing on"
	line "@"
	text_ram wNameBuffer
	text " here!"
	prompt

_BoxFullCannotThrowBallText::
	text "Pokémon BOX jest"
	line "pełny! Nie można"
	cont "użyć tego"
	cont "elementu!"
	prompt
