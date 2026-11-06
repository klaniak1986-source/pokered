_CopycatsHouse2FCopycatDoYouLikePokemonText::
	text "<PLAYER>: Hi! Do"
	line "you like #MON?"

	para "<PLAYER>: Uh no, I"
	line "just asked you."

	para "<PLAYER>: Huh?"
	line "You're strange!"

	para "COPYCAT: Hmm?"
	line "Quit mimicking?"

	para "But, that's my"
	line "favorite hobby!"
	prompt

_CopycatsHouse2FCopycatTM31PreReceiveText::
	text "Poké Doll!"

	para "For me?"
	line "Thank you!"

	para "You can have"
	line "this, then!"
	prompt

_CopycatsHouse2FCopycatReceivedTM31Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_CopycatsHouse2FCopycatTM31Explanation1Text::
	text_start

	para "TM31 zawiera moje"
	line "ulubione, MIMIC!"

	para "Use it on a good"
	line "#MON!@"
	text_end

_CopycatsHouse2FCopycatTM31Explanation2Text::
	text "<PLAYER>: Hi!"
	line "Thanks for TM31!"

	para "<PLAYER>: Pardon?"

	para "<PLAYER>: Is it"
	line "that fun to mimic"
	cont "my every move?"

	para "COPYCAT: You bet!"
	line "It's a scream!"
	done

_CopycatsHouse2FCopycatTM31NoRoomText::
	text "Nie chcesz tego?@"
	text_end

_CopycatsHouse2FDoduoText::
	text "Giiih!"

	para "MIRROR MIRROR ON"
	line "THE WALL, Who ' s"
	cont "the fairest one of"
	cont "all?"
	done

_CopycatsHouse2FRareDollText::
	text "To rzadki Pokémon!"
	done

_CopycatsHouse2FSNESText::
	text "Gra z MARIO nosząc"
	line "wiadro na głowie!"
	done

_CopycatsHouse2FPCMySecretsText::
	text "..."

	para "Moje tajemnice!"

	para "Umiejętności:"
	line "Mimicry! Hobby:"
	cont "Zbieranie lalek!"
	cont "Ulubione Pokémon:"
	cont "CLEFAIRY!"
	done

_CopycatsHouse2FPCCantSeeText::
	text "Nie mogę zobaczyć!"
	done
