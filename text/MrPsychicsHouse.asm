_MrPsychicsHouseMrPsychicYouWantedThisText::
	text "Nie odzywaj się!"

	para "You wanted this!"
	prompt

_MrPsychicsHouseMrPsychicReceivedTM29Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_MrPsychicsHouseMrPsychicTM29ExplanationText::
	text "TM29 to PSYCHIC!"

	para "Może obniżyć"
	line "docelową obniża"
	cont "szczególne"
	cont "zdolności."
	done

_MrPsychicsHouseMrPsychicTM29NoRoomText::
	text "Gdzie to położysz?"
	done
