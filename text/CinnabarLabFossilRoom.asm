_CinnabarLabFossilRoomScientist1Text::
	text "Cześć!"

	para "Jestem ważnym"
	line "lekarzem!"

	para "I study here rare"
	line "#MON fossils!"

	para "You! Have you a"
	line "fossil for me?"
	prompt

_CinnabarLabFossilRoomScientist1NoFossilsText::
	text "Szkoda!"
	done

_CinnabarLabFossilRoomScientist1GoForAWalkText::
	text "Mam trochę czasu!"

	para "You go for walk a"
	line "little while!"
	done

_CinnabarLabFossilRoomScientist1FossilIsBackToLifeText::
	text "Gdzie byłeś?"

	para "Twoja skamielina"
	line "powróciła do"
	cont "życia!"

	para "It was @"
	text_ram wStringBuffer
	text_start
	line "like I think!"
	prompt

_CinnabarLabFossilRoomScientist1SeesFossilText::
	text "Oh! That is"
	line "@"
	text_ram wNameBuffer
	text "!"

	para "It is fossil of"
	line "@"
	text_ram wStringBuffer
	text ", a"
	cont "#MON that is"
	cont "already extinct!"

	para "My Resurrection"
	line "Machine will make"
	cont "that #MON live"
	cont "again!"
	done

_CinnabarLabFossilRoomScientist1TakesFossilText::
	text "Więc się pośpiesz"
	line "i daj mi to!"

	para "<PLAYER> handed"
	line "over @"
	text_ram wNameBuffer
	text "!"
	prompt

_CinnabarLabFossilRoomScientist1GoForAWalkText2::
	text "Mam trochę czasu!"

	para "You go for walk a"
	line "little while!"
	done

_CinnabarLabFossilRoomScientist1ComeAgainText::
	text "Aiyah, znowu"
	line "przychodzisz!"
	done
