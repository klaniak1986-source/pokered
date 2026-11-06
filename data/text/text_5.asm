_CableClubNPCPleaseComeAgainText::
	text "Proszę, przyjdź"
	line "jeszcze raz!"
	done

_CableClubNPCMakingPreparationsText::
	text "Przygotowujemy"
	line "się, proszę"
	cont "czekać."
	done

_UsedStrengthText::
	text_ram wNameBuffer
	text " used"
	line "STRENGTH.@"
	text_end

_CanMoveBouldersText::
	text_ram wNameBuffer
	text " can"
	line "move boulders."
	prompt

_CurrentTooFastText::
	text "Prąd jest o wiele"
	line "za szybki!"
	prompt

_CyclingIsFunText::
	text "Jazda na rowerze"
	line "to zabawa!"
	prompt

_FlashLightsAreaText::
	text "Oślepiająca FLASH"
	line "oświetla teren!"
	prompt

_WarpToLastPokemonCenterText::
	text "Warp do ostatniego"
	line "Centrum Pokémona."
	done

_CannotUseTeleportNowText::
	text_ram wNameBuffer
	text " can't"
	line "use TELEPORT now."
	prompt

_CannotFlyHereText::
	text_ram wNameBuffer
	text " can't"
	line "FLY here."
	prompt

_NotHealthyEnoughText::
	text "Nie jest"
	line "wystarczająco"
	cont "zdrowa."
	prompt

_NewBadgeRequiredText::
	text "Nie! Potrzebny"
	line "jest nowy BADGE."
	prompt

_CannotUseItemsHereText::
	text "Nie można używać"
	line "przedmiotów tutaj."
	prompt

_CannotGetOffHereText::
	text "Nie możesz tu"
	line "wysiąść."
	prompt

_GotMonText::
	text "<PLAYER> got"
	line "@"
	text_ram wNameBuffer
	text "!@"
	text_end

_SentToBoxText::
	text "There's no more"
	line "room for #MON!"
	cont "@"
	text_ram wBoxMonNicks
	text " was"
	cont "sent to #MON"
	cont "BOX @"
	text_ram wStringBuffer
	text " on PC!"
	done

_BoxIsFullText::
	text "Nie ma już miejsca"
	line "dla Pokémona!"

	para "The #MON BOX"
	line "is full and can't"
	cont "accept any more!"

	para "Change the BOX at"
	line "a #MON CENTER!"
	done
