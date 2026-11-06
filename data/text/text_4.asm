_PokemartGreetingText::
	text "Cześć!"
	next "May I help you?"
	done

_PokemonFaintedText::
	text_ram wNameBuffer
	text_start
	line "fainted!"
	done

_PlayerBlackedOutText::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_RepelWoreOffText::
	text "Efekt REPEL"
	line "ucichł."
	done

_PokemartBuyingGreetingText::
	text "Nie spiesz się."
	done

_PokemartTellBuyPriceText::
	text_ram wStringBuffer
	text "?"
	line "That will be"
	cont "¥@"
	text_bcd hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text ". OK?"
	done

_PokemartBoughtItemText::
	text "Dziękuję!"
	prompt

_PokemartNotEnoughMoneyText::
	text "Nie masz dość"
	line "pieniędzy."
	prompt

_PokemartItemBagFullText::
	text "Nie możesz nosić"
	line "więcej rzeczy."
	prompt

_PokemonSellingGreetingText::
	text "Co chciałbyś"
	line "sprzedać?"
	done

_PokemartTellSellPriceText::
	text "I can pay you"
	line "¥@"
	text_bcd hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text " for that."
	done

_PokemartItemBagEmptyText::
	text "Nie masz nic do"
	line "sprzedania."
	prompt

_PokemartUnsellableItemText::
	text "Nie mogę wycenić"
	line "tego."
	prompt

_PokemartThankYouText::
	text "Dziękuję!"
	done

_PokemartAnythingElseText::
	text "Mogę coś jeszcze"
	line "zrobić?"
	done

_LearnedMove1Text::
	text_ram wLearnMoveMonName
	text " learned"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_WhichMoveToForgetText::
	text "Który ruch"
	line "powinien"
	next "be forgotten?"
	done

_AbandonLearningText::
	text "Abandon learning"
	line "@"
	text_ram wStringBuffer
	text "?"
	done

_DidNotLearnText::
	text_ram wLearnMoveMonName
	text_start
	line "did not learn"
	cont "@"
	text_ram wStringBuffer
	text "!"
	prompt

_TryingToLearnText::
	text_ram wLearnMoveMonName
	text " is"
	line "trying to learn"
	cont "@"
	text_ram wStringBuffer
	text "!"

	para "But, @"
	text_ram wLearnMoveMonName
	text_start
	line "can't learn more"
	cont "than 4 moves!"

	para "Delete an older"
	line "move to make room"
	cont "for @"
	text_ram wStringBuffer
	text "?"
	done

_OneTwoAndText::
	text "1, 2 i...@"
	text_end

_PoofText::
	text "Poof!@"
	text_end

_ForgotAndText::
	text_start
	para "@"
	text_ram wLearnMoveMonName
	text " forgot"
	line "@"
	text_ram wNameBuffer
	text "!"

	para "I..."
	prompt

_HMCantDeleteText::
	text "Techniki HM mogą"
	line "zostać usunięte!"
	prompt

_PokemonCenterWelcomeText::
	text "Witamy w naszym"
	line "Centrum Pokémona!"

	para "We heal your"
	line "#MON back to"
	cont "perfect health!"
	prompt

_ShallWeHealYourPokemonText::
	text "Wyleczymy twojego"
	line "Pokemona?"
	done

_NeedYourPokemonText::
	text "Potrzebujemy"
	line "twojego Pokémona."
	done

_PokemonFightingFitText::
	text "Twój Pokémon"
	line "walczy jak należy!"
	prompt

_PokemonCenterFarewellText::
	text "Mamy nadzieję, że"
	line "jeszcze cię"
	cont "zobaczymy!"
	done

_CableClubNPCAreaReservedFor2FriendsLinkedByCableText::
	text "Ten obszar jest"
	line "zarezerwowany dla"
	cont "2 przyjaciół,"
	cont "którzy są"
	cont "podłączeni przez"
	cont "kabel."
	done

_CableClubNPCWelcomeText::
	text "Witamy w Cable"
	line "Club!"
	done

_CableClubNPCPleaseApplyHereHaveToSaveText::
	text "Proszę się tu"
	line "zgłosić."

	para "Przed otwarciem"
	line "łącza, musimy"
	cont "zapisać grę."
	done

_CableClubNPCPleaseWaitText::
	text "Proszę poczekać.@"
	text_end

_CableClubNPCLinkClosedBecauseOfInactivityText::
	vc_patch Change_link_closed_inactivity_message
IF DEF(_RED_VC) || DEF(_BLUE_VC)
	text "Proszę, przyjdź"
	line "jeszcze raz!"
	done
	text_start
	db   "osed because of"
	cont "inactivity."
ELSE
	text "Połączenie zostało"
	line "zamknięte z powodu"
	cont "braku aktywności."
ENDC
	vc_patch_end

	para "Proszę"
	line "skontaktować się z"
	cont "przyjacielem i"
	cont "przyjść ponownie!"
	done
