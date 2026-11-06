_AIBattleWithdrawText::
	text_ram wTrainerName
	text " with-"
	line "drew @"
	text_ram wEnemyMonNick
	text "!"
	prompt

_AIBattleUseItemText::
	text_ram wTrainerName
	text_start
	line "used @"
	text_ram wNameBuffer
	text_start
	cont "on @"
	text_ram wEnemyMonNick
	text "!"
	prompt

_TradeWentToText::
	text_ram wStringBuffer
	text " went"
	line "to @"
	text_ram wLinkEnemyTrainerName
	text "."
	done

_TradeForText::
	text "For <PLAYER>'s"
	line "@"
	text_ram wStringBuffer
	text ","
	done

_TradeSendsText::
	text_ram wLinkEnemyTrainerName
	text " sends"
	line "@"
	text_ram wNameBuffer
	text "."
	done

_TradeWavesFarewellText::
	text_ram wLinkEnemyTrainerName
	text " waves"
	line "farewell as"
	done

_TradeTransferredText::
	text_ram wNameBuffer
	text " is"
	line "transferred."
	done

_TradeTakeCareText::
	text "Take good care of"
	line "@"
	text_ram wNameBuffer
	text "."
	done

_TradeWillTradeText::
	text_ram wLinkEnemyTrainerName
	text " will"
	line "trade @"
	text_ram wNameBuffer
	text_start
	done

_TradeforText::
	text "for <PLAYER>'s"
	line "@"
	text_ram wStringBuffer
	text "."
	done

_PlaySlotMachineText::
	text "Chcesz się"
	line "pobawić?"
	done

_OutOfCoinsSlotMachineText::
	text "Skończyły się"
	line "monety!"
	done

_BetHowManySlotMachineText::
	text "Założę się, ile"
	line "monet?"
	done

_StartSlotMachineText::
	text "Start!"
	done

_NotEnoughCoinsSlotMachineText::
	text "Za mało monet!"
	prompt

_OneMoreGoSlotMachineText::
	text "Jeszcze raz?"
	done

_LinedUpText::
	text " lined up!"
	line "Scored @"
	text_ram wStringBuffer
	text " coins!"
	done

_NotThisTimeText::
	text "Nie tym razem!"
	prompt

_YeahText::
	text "Tak!@"
	text_end

_DexSeenOwnedText::
	text "#DEX   Seen:@"
	text_decimal wDexRatingNumMonsSeen, 1, 3
	text_start
	line "         Owned:@"
	text_decimal wDexRatingNumMonsOwned, 1, 3
	text_end

_DexRatingText::
	text "#DEX Rating<COLON>"
	done

_GymStatueText1::
	text_ram wGymCityName
	text_start
	line "#MON GYM"
	cont "LEADER: @"
	text_ram wGymLeaderName
	text_start

	para "WINNING TRAINERS:"
	line "<RIVAL>"
	done

_GymStatueText2::
	text_ram wGymCityName
	text_start
	line "#MON GYM"
	cont "LEADER: @"
	text_ram wGymLeaderName
	text_start

	para "WINNING TRAINERS:"
	line "<RIVAL>"
	cont "<PLAYER>"
	done

_ViridianCityPokecenterGuyText::
	text "Pokémon CENTERs"
	line "wyleczyć zmęczony,"
	cont "ranny lub zemdlał"
	cont "Pokémon!"
	done

_PewterCityPokecenterGuyText::
	text "Yawn!"

	para "Kiedy JIGGLIPUFF"
	line "śpiewa, Pokémon"
	cont "staje się senny.."

	para "...Me too..."
	line "Snore..."
	done

_CeruleanPokecenterGuyText::
	text "BARTEK ma dużo"
	line "Pokémona!"

	para "He collects rare"
	line "ones too!"
	done

_LavenderPokecenterGuyText::
	text "CUBONE noszą"
	line "czaszki, prawda?"

	para "People will pay a"
	line "lot for one!"
	done

_MtMoonPokecenterBenchGuyText::
	text "Jeśli masz zbyt"
	line "wiele Pokémon,"
	cont "należy"
	cont "przechowywać je"
	cont "przez PC!"
	done

_RockTunnelPokecenterGuyText::
	text "Słyszałem, że"
	line "GHOSTS nawiedzają"
	cont "LAVENDER TOWN!"
	done

_UnusedBenchGuyText1::
	text "Chciałbym złapać"
	line "Pokémona."
	done

_UnusedBenchGuyText2::
	text "Jestem zmęczony tą"
	line "całą zabawą."
	done

_UnusedBenchGuyText3::
	text "Kierownik SILPH"
	line "Guils ukrywa się w"
	cont "strefie SAFARI."
	done

_VermilionPokecenterGuyText::
	text "Prawdą jest, że"
	line "wyższy poziom"
	cont "Pokémon będzie"
	cont "potężniejszy..."

	para "But, all #MON"
	line "will have weak"
	cont "points against"
	cont "specific types."

	para "So, there is no"
	line "universally"
	cont "strong #MON."
	done

_CeladonCityPokecenterGuyText::
	text "Gdybym miał rower,"
	line "poszedłbym na"
	cont "CYCLING Road!"
	done

_FuchsiaCityPokecenterGuyText::
	text "Jeśli studiujesz"
	line "Pokémon, odwiedź"
	cont "strefę SAFARI."

	para "It has all sorts"
	line "of rare #MON."
	done

_CinnabarPokecenterGuyText::
	text "Pokémon może"
	line "nauczyć się"
	cont "technik po"
	cont "anulowaniu"
	cont "ewolucji."

	para "Evolution can wait"
	line "until new moves"
	cont "have been learned."
	done

_SaffronCityPokecenterGuyText1::
	text "Byłoby świetnie,"
	line "gdyby elitarna"
	cont "czwórka przyszła i"
	cont "zdeptała Team"
	cont "Rocket!"
	done

_SaffronCityPokecenterGuyText2::
	text "Możemy znowu"
	line "bezpiecznie wyjść!"
	done

_CeladonCityHotelText::
	text "Moja siostra"
	line "przywiozła mnie na"
	cont "te wakacje!"
	done

_BookcaseText::
	text "Pełno książek"
	line "Pokémona!"
	done

_NewBicycleText::
	text "Błyszczący nowy"
	line "BICYCLE!"
	done

_PushStartText::
	text "Naciśnij START,"
	line "aby otworzyć MENU!"
	done

_SaveOptionText::
	text "Opcja SAVE jest na"
	line "ekranie MENU."
	done

_StrengthsAndWeaknessesText::
	text "Wszystkie typy"
	line "Pokémon mają silne"
	cont "i słabe punkty"
	cont "przeciwko innym."
	done

_TimesUpText::
	text "PA: Ding - dong!"

	para "Czas ucieka!"
	prompt

_GameOverText::
	text "Koniec gry w"
	line "SAFARI!"
	done

_CinnabarGymQuizIntroText::
	text "Pokémon Quiz!"

	para "Zrób to dobrze, a"
	line "drzwi otworzą się"
	cont "na następny pokój!"

	para "Get it wrong and"
	line "face a trainer!"

	para "If you want to"
	line "conserve your"
	cont "#MON for the"
	cont "GYM LEADER..."

	para "Then get it right!"
	line "Here we go!"
	prompt

_CinnabarQuizQuestionsText1::
	text "CATERPIE ewoluuje"
	line "w BUTTERFREE?"
	done

_CinnabarQuizQuestionsText2::
	text "Istnieje 9"
	line "certyfikowanych"
	cont "Pokémon LEAGUE"
	cont "BADGE?"
	done

_CinnabarQuizQuestionsText3::
	text "POLIWAG ewoluuje 3"
	line "razy?"
	done

_CinnabarQuizQuestionsText4::
	text "Czy ruchy pioruna"
	line "są skuteczne"
	cont "przeciwko"
	cont "elementom"
	cont "naziemnym typu"
	cont "Pokémon?"
	done

_CinnabarQuizQuestionsText5::
	text "Pokémon tego"
	line "samego rodzaju i"
	cont "poziomu nie są"
	cont "identyczne?"
	done

_CinnabarQuizQuestionsText6::
	text "TM28 zawiera"
	line "TOMBSTONER?"
	done

_CinnabarGymQuizCorrectText::
	text "Masz całkowitą"
	line "rację!"

	para "Go on through!@"
	text_end

_CinnabarGymQuizIncorrectText::
	text "Przepraszam, zła"
	line "decyzja!"
	prompt

_MagazinesText::
	text "Magazyny Pokémon!"

	para "Pokémon notebook!"

	para "Grafy Pokémona!"
	done

_BillsHouseMonitorText::
	text "TELEPORTER jest"
	line "wyświetlany na"
	cont "monitorze PC."
	done

_BillsHouseInitiatedText::
	text "<PLAYER> initiated"
	line "TELEPORTER's Cell"
	cont "Separator!@"
	text_end

_BillsHousePokemonListText1::
	text "BARTEK Ulubiona"
	line "lista Pokémon!"
	prompt

_BillsHousePokemonListText2::
	text "Którego Pokémona"
	line "chcesz zobaczyć?"
	done

_OakLabEmailText::
	text "There's an e-mail"
	line "message here!"

	para "..."

	para "Wzywam wszystkich"
	line "trenerów Pokémon!"

	para "The elite trainers"
	line "of #MON LEAGUE"
	cont "are ready to take"
	cont "on all comers!"

	para "Bring your best"
	line "#MON and see"
	cont "how you rate as a"
	cont "trainer!"

	para "#MON LEAGUE HQ"
	line "INDIGO PLATEAU"

	para "PS: PROF.DĄB,"
	line "please visit us!"
	cont "..."
	done

_GameCornerCoinCaseText::
	text "Wymagany jest"
	line "wypadek z bronią!"
	done

_GameCornerNoCoinsText::
	text "Nie masz żadnych"
	line "monet!"
	done

_GameCornerOutOfOrderText::
	text "To jest zepsute."
	done

_GameCornerOutToLunchText::
	text "To jest"
	line "zarezerwowane."
	done

_GameCornerSomeonesKeysText::
	text "Niech ktoś wezwie"
	line "klucze!"
	done

_JustAMomentText::
	text "Chwileczkę."
	done

TMNotebookText::
	text "To jest broszurka"
	line "o TM."

	para "..."

	para "W sumie jest ich"
	line "50."

	para "There are also 5"
	line "HMs that can be"
	cont "used repeatedly."

	para "SILPH CO.@"
	text_end

_TurnPageText::
	text "Przekręcić stronę?"
	done

_ViridianSchoolNotebookText5::
	text "Nie patrz na moje"
	line "notatki!@"
	text_end

_ViridianSchoolNotebookText1::
	text "Spojrzałem na"
	line "notes!"

	para "First page..."

	para "Poké Balls są"
	line "używane do"
	cont "złapania Pokémona."

	para "Up to 6 #MON"
	line "can be carried."

	para "People who raise"
	line "and make #MON"
	cont "fight are called"
	cont "#MON trainers."
	prompt

_ViridianSchoolNotebookText2::
	text "Druga strona..."

	para "Zdrowy Pokémon"
	line "może być trudne do"
	cont "złapania, więc"
	cont "najpierw go"
	cont "osłabić!"

	para "Poison, burns and"
	line "other damage are"
	cont "effective!"
	prompt

_ViridianSchoolNotebookText3::
	text "Trzecia strona..."

	para "Trenerzy Pokémon"
	line "szukają innych do"
	cont "walki Pokémon."

	para "Battles are"
	line "constantly fought"
	cont "at #MON GYMs."
	prompt

_ViridianSchoolNotebookText4::
	text "Czwarta strona..."

	para "Celem trenerów"
	line "Pokémon jest"
	cont "pokonanie 8"
	cont "najlepszych"
	cont "Pokémon GYM"
	cont "LEADERs."

	para "Do so to earn the"
	line "right to face..."

	para "The ELITE FOUR of"
	line "#MON LEAGUE!"
	prompt

_EnemiesOnEverySideText::
	text "Wrogowie po każdej"
	line "stronie!"
	done

_WhatGoesAroundComesAroundText::
	text "Co się dzieje, to"
	line "się dzieje!"
	done

_FightingDojoText::
	text "ZWALCZANIE DOJO"
	done

_IndigoPlateauHQText::
	text "Kwatera główna"
	line "INDIGO PLATEAU"
	cont "Pokémon LEAGUE"
	done

_RedBedroomSNESText::
	text "<PLAYER> is"
	line "playing the SNES!"
	cont "...Okay!"
	cont "It's time to go!"
	done

_Route15UpstairsBinocularsText::
	text "Spojrzałem w"
	line "lornetkę."

	para "A large, shining"
	line "bird is flying"
	cont "toward the sea."
	done

_AerodactylFossilText::
	text "AERODACTYL Fossil"
	line "prymitywne i"
	cont "rzadkie Pokémon."
	done

_KabutopsFossilText::
	text "KABUTOPS Fossil"
	line "prymitywne i"
	cont "rzadkie Pokémon."
	done

_LinkCableHelpText1::
	text "KRYTERIA SZKOLENIA"

	para "Korzystanie z gry"
	line "Link Cable"
	prompt

_LinkCableHelpText2::
	text "Którą stronę"
	line "chcesz przeczytać?"
	done

_LinkCableInfoText1::
	text "Kiedy połączysz"
	line "swojego chłopca z"
	cont "innym chłopcem,"
	cont "porozmawiaj z"
	cont "opiekunem po"
	cont "prawej w każdym"
	cont "Pokémon CENTER."
	prompt

_LinkCableInfoText2::
	text "COLOSSEUM pozwala"
	line "grać przeciwko"
	cont "przyjacielowi."
	prompt

_LinkCableInfoText3::
	text "HANDEL CENTER jest"
	line "używany do handlu"
	cont "Pokémon."
	prompt

_ViridianSchoolBlackboardText1::
	text "Tablica opisuje"
	line "zmiany Pokémon"
	cont "STATUS podczas"
	cont "bitwy."
	prompt

_ViridianSchoolBlackboardText2::
	text "Którą stronę"
	line "chcesz przeczytać?"
	done

_ViridianBlackboardSleepText::
	text "Pokémon może"
	line "powstrzymać atak,"
	cont "jeśli zasnie!"

	para "#MON will stay"
	line "asleep even after"
	cont "battles."

	para "Use AWAKENING to"
	line "wake them up!"
	prompt

_ViridianBlackboardPoisonText::
	text "Po zatruciu,"
	line "Pokémon stale"
	cont "spada zdrowie."

	para "Poison lingers"
	line "after battles."

	para "Use an ANTIDOTE"
	line "to cure poison!"
	prompt

_ViridianBlackboardPrlzText::
	text "Paraliż może"
	line "spowodować, że"
	cont "Pokémon się nie"
	cont "zapali!"

	para "Paralysis remains"
	line "after battles."

	para "Use PARLYZ HEAL"
	line "for treatment!"
	prompt

_ViridianBlackboardBurnText::
	text "Oparzenie"
	line "zmniejsza moc i"
	cont "prędkość. Powoduje"
	cont "również ciągłe"
	cont "uszkodzenia."

	para "Burns remain"
	line "after battles."

	para "Use BURN HEAL to"
	line "cure a burn!"
	prompt

_ViridianBlackboardFrozenText::
	text "Jeśli zamarznie,"
	line "Pokémon stanie się"
	cont "całkowicie"
	cont "unieruchomiony!"

	para "It stays frozen"
	line "even after the"
	cont "battle ends."

	para "Use ICE HEAL to"
	line "thaw out #MON!"
	prompt

_VermilionGymTrashText::
	text "Nie, tu są tylko"
	line "śmieci."
	done

_VermilionGymTrashSuccessText1::
	text "Pod śmieciami jest"
	line "przełącznik!"

	para "The 1st electric"
	line "lock opened!@"
	text_end

_VermilionGymTrashSuccessText2::
	text "Hej, jeszcze jeden"
	line "przełącznik pod"
	cont "śmieciami!"
	prompt

_VermilionGymTrashSuccessText3::
	text "Drugi elektryczny"
	line "zamek otwarty!"

	para "The motorized door"
	line "opened!@"
	text_end

_VermilionGymTrashFailText::
	text "Nie, tu są tylko"
	line "śmieci.@"
	text_end

_FoundHiddenItemText::
	text "<PLAYER> found"
	line "@"
	text_ram wNameBuffer
	text "!@"
	text_end

_HiddenItemBagFullText::
	text "But, <PLAYER> has"
	line "no more room for"
	cont "other items!"
	done

_FoundHiddenCoinsText::
	text "<PLAYER> found"
	line "@"
	text_bcd hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " coins!@"
	text_end

_FoundHiddenCoins2Text::
	text "<PLAYER> found"
	line "@"
	text_bcd hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " coins!@"
	text_end

_DroppedHiddenCoinsText::
	text_start
	para "Ups, zgubiłem"
	line "kilka monet!"
	done

_IndigoPlateauStatuesText1::
	text "INDIGO PLATEAU"
	prompt

_IndigoPlateauStatuesText2::
	text "Ostateczny cel"
	line "trenerów! Pokémon"
	cont "LEAGUE HQ"
	done

_IndigoPlateauStatuesText3::
	text "Najwyższy"
	line "autorytet Pokémon"
	cont "Pokémon LEAGUE"
	done

_PokemonBooksText::
	text "Pełno książek"
	line "Pokémona!"
	done

_DiglettSculptureText::
	text "To rzeźba DIGLETT."
	done

_ElevatorText::
	text "To winda."
	done

_TownMapText::
	text "Miejska mapa.@"
	text_end

_PokemonStuffText::
	text "Mnóstwo"
	line "pokemońskich"
	cont "rzeczy!"
	done

_OutOfSafariBallsText::
	text "PA: Ding - dong!"

	para "Skończyły ci się"
	line "balony SAFARI!"
	prompt

_WildRanText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "ran!"
	prompt

_EnemyRanText::
	text "Enemy @"
	text_ram wEnemyMonNick
	text_start
	line "ran!"
	prompt

_HurtByPoisonText::
	text "<USER>'s"
	line "hurt by poison!"
	prompt

_HurtByBurnText::
	text "<USER>'s"
	line "hurt by the burn!"
	prompt

_HurtByLeechSeedText::
	text "LEECH SEED saps"
	line "<USER>!"
	prompt

_EnemyMonFaintedText::
	text "Enemy @"
	text_ram wEnemyMonNick
	text_start
	line "fainted!"
	prompt

_MoneyForWinningText::
	text "<PLAYER> got ¥@"
	text_bcd wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text_start
	line "for winning!"
	prompt

_TrainerDefeatedText::
	text "<PLAYER> defeated"
	line "@"
	text_ram wTrainerName
	text "!"
	prompt

_PlayerMonFaintedText::
	text_ram wBattleMonNick
	text_start
	line "fainted!"
	prompt

_UseNextMonText::
	text "Użyjesz następnego"
	line "Pokémona?"
	done

_Rival1WinText::
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	prompt

_PlayerBlackedOutText2::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_LinkBattleLostText::
	text "<PLAYER> lost to"
	line "@"
	text_ram wTrainerName
	text "!"
	prompt

_TrainerAboutToUseText::
	text_ram wTrainerName
	text " is"
	line "about to use"
	cont "@"
	text_ram wEnemyMonNick
	text "!"

	para "Will <PLAYER>"
	line "change #MON?"
	done

_TrainerSentOutText::
	text_ram wTrainerName
	text " sent"
	line "out @"
	text_ram wEnemyMonNick
	text "!"
	done

_NoWillText::
	text "Nie ma woli do"
	line "walki!"
	prompt

_CantEscapeText::
	text "Nie uciekniesz!"
	prompt

_NoRunningText::
	text "Nie ma ucieczki"
	line "przed bitwą"
	cont "trenerów!"
	prompt

_GotAwayText::
	text "Uciekł"
	line "bezpiecznie!"
	prompt

_ItemsCantBeUsedHereText::
	text "Elementy nie mogą"
	line "być używane tutaj."
	prompt

_AlreadyOutText::
	text_ram wBattleMonNick
	text " is"
	line "already out!"
	prompt

_MoveNoPPText::
	text "Nie ma PP na ten"
	line "ruch!"
	prompt

_MoveDisabledText::
	text "Ruch jest"
	line "wyłączony!"
	prompt

_NoMovesLeftText::
	text_ram wBattleMonNick
	text " has no"
	line "moves left!"
	done

_MultiHitText::
	text "Hit the enemy"
	line "@"
	text_decimal wPlayerNumHits, 1, 1
	text " times!"
	prompt

_ScaredText::
	text_ram wBattleMonNick
	text " is too"
	line "scared to move!"
	prompt

_GetOutText::
	text "Wynoś się."
	prompt

_FastAsleepText::
	text "<USER>"
	line "is fast asleep!"
	prompt

_WokeUpText::
	text "<USER>"
	line "woke up!"
	prompt

_IsFrozenText::
	text "<USER>"
	line "is frozen solid!"
	prompt

_FullyParalyzedText::
	text "<USER>'s"
	line "fully paralyzed!"
	prompt

_FlinchedText::
	text "<USER>"
	line "flinched!"
	prompt

_MustRechargeText::
	text "<USER>"
	line "must recharge!"
	prompt

_DisabledNoMoreText::
	text "<USER>'s"
	line "disabled no more!"
	prompt

_IsConfusedText::
	text "<USER>"
	line "is confused!"
	prompt

_HurtItselfText::
	text "Zranił się w swoim"
	line "zamieszaniu!"
	prompt

_ConfusedNoMoreText::
	text "<USER>'s"
	line "confused no more!"
	prompt

_SavingEnergyText::
	text "<USER>"
	line "is saving energy!"
	prompt

_UnleashedEnergyText::
	text "<USER>"
	line "unleashed energy!"
	prompt

_ThrashingAboutText::
	text "<USER>'s"
	line "thrashing about!"
	done

_AttackContinuesText::
	text "<USER>'s"
	line "attack continues!"
	done

_CantMoveText::
	text "<USER>"
	line "can't move!"
	prompt

_MoveIsDisabledText::
	text "<USER>'s"
	line "@"
	text_ram wNameBuffer
	text " is"
	cont "disabled!"
	prompt

_ActorNameText::
	text "<USER>@"
	text_end

_UsedMove1Text::
	text_start
	line "used @"
	text_end

_UsedMove2Text::
	text_start
	line "used @"
	text_end

_UsedInsteadText::
	text "Zamiast tego,@"
	text_end

_MoveNameText::
	text_ram wStringBuffer
	text "@"

_EndUsedMove1Text::
	text "!"
	done

_EndUsedMove2Text::
	text "!"
	done

_EndUsedMove3Text::
	text "!"
	done

_EndUsedMove4Text::
	text "!"
	done

_EndUsedMove5Text::
	text "!"
	done

_AttackMissedText::
	text "<USER>'s"
	line "attack missed!"
	prompt

_KeptGoingAndCrashedText::
	text "<USER>"
	line "kept going and"
	cont "crashed!"
	prompt

_UnaffectedText::
	text "<TARGET>'s"
	line "unaffected!"
	prompt

_DoesntAffectMonText::
	text "It doesn't affect"
	line "<TARGET>!"
	prompt

_CriticalHitText::
	text "Krytyczne"
	line "uderzenie!"
	prompt

_OHKOText::
	text "Raz - hit KO!"
	prompt

_LoafingAroundText::
	text_ram wBattleMonNick
	text " is"
	line "loafing around."
	prompt

_BeganToNapText::
	text_ram wBattleMonNick
	text " began"
	line "to nap!"
	prompt

_WontObeyText::
	text_ram wBattleMonNick
	text " won't"
	line "obey!"
	prompt

_TurnedAwayText::
	text_ram wBattleMonNick
	text " turned"
	line "away!"
	prompt

_IgnoredOrdersText::
	text_ram wBattleMonNick
	text_start
	line "ignored orders!"
	prompt

_SubstituteTookDamageText::
	text "The SUBSTITUTE"
	line "took damage for"
	cont "<TARGET>!"
	prompt

_SubstituteBrokeText::
	text "<TARGET>'s"
	line "SUBSTITUTE broke!"
	prompt

_BuildingRageText::
	text "<USER>'s"
	line "RAGE is building!"
	prompt

_MirrorMoveFailedText::
	text "MIRROR MOVE"
	next "failed!"
	prompt

_HitXTimesText::
	text "Hit @"
	text_decimal wEnemyNumHits, 1, 1
	text " times!"
	prompt

_GainedText::
	text_ram wNameBuffer
	text " gained"
	line "@"
	text_end

_WithExpAllText::
	text "Termin ważności"
	line "(EXP)@"
	text_end

_BoostedText::
	text "wzmocniony@"
	text_end

_ExpPointsText::
	text_decimal wExpAmountGained, 2, 4
	text " EXP. Points!"
	prompt

_GrewLevelText::
	text_ram wNameBuffer
	text " grew"
	line "to level @"
	text_decimal wCurEnemyLevel, 1, 3
	text "!@"
	text_end

_WildMonAppearedText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "appeared!"
	prompt

_HookedMonAttackedText::
	text "The hooked"
	line "@"
	text_ram wEnemyMonNick
	text_start
	cont "attacked!"
	prompt

_EnemyAppearedText::
	text_ram wEnemyMonNick
	text_start
	line "appeared!"
	prompt

_TrainerWantsToFightText::
	text_ram wTrainerName
	text " wants"
	line "to fight!"
	prompt

_UnveiledGhostText::
	text "SILPH SCOPE"
	line "ujawnił tożsamość"
	cont "GHOST!"
	prompt

_GhostCantBeIDdText::
	text "Cholera, GHOST nie"
	line "może być"
	cont "zidentyfikowany!"
	prompt

_GoText::
	text "Idź!@"
	text_end

_DoItText::
	text "Zrób to!@"
	text_end

_GetmText::
	text "Brać Hamilma!@"
	text_end

_EnemysWeakText::
	text "Wróg jest słaby!@"
	text_end

_PlayerMon1Text::
	text_ram wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	text_ram wBattleMonNick
	text " @"
	text_end

_EnoughText::
	text "Wystarczy!@"
	text_end

_OKExclamationText::
	text "OK!@"
	text_end

_GoodText::
	text "Dobrze!@"
	text_end

_ComeBackText::
	text_start
	line "Come back!"
	done

_SuperEffectiveText::
	text "To bardzo"
	line "skuteczne!"
	prompt

_NotVeryEffectiveText::
	text "To nie jest zbyt"
	line "skuteczne..."
	prompt

_SafariZoneEatingText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "is eating!"
	prompt

_SafariZoneAngryText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "is angry!"
	prompt

; money related
_PickUpPayDayMoneyText::
	text "<PLAYER> picked up"
	line "¥@"
	text_bcd wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "!"
	prompt

_ClearSaveDataText::
	text "Wyczyść wszystkie"
	line "zapisane dane?"
	done

_WhichFloorText::
	text "Które piętro"
	line "chcesz?"
	done

_PartyMenuNormalText::
	text "Wybierz Pokémon."
	done

_PartyMenuItemUseText::
	text "Użyj pozycji, na"
	line "której Pokémon?"
	done

_PartyMenuBattleText::
	text "Jaki Pokémon?"
	done

_PartyMenuUseTMText::
	text "Użyj TM na którym"
	line "Pokémon?"
	done

_PartyMenuSwapMonText::
	text "Przenieść Pokémona"
	line "gdzie?"
	done

_PotionText::
	text_ram wNameBuffer
	text_start
	line "recovered by @"
	text_decimal wHPBarHPDifference, 2, 3
	text "!"
	done

_AntidoteText::
	text_ram wNameBuffer
	text " was"
	line "cured of poison!"
	done

_ParlyzHealText::
	text_ram wNameBuffer
	text "'s"
	line "rid of paralysis!"
	done

_BurnHealText::
	text_ram wNameBuffer
	text "'s"
	line "burn was healed!"
	done

_IceHealText::
	text_ram wNameBuffer
	text " was"
	line "defrosted!"
	done

_AwakeningText::
	text_ram wNameBuffer
	text_start
	line "woke up!"
	done

_FullHealText::
	text_ram wNameBuffer
	text "'s"
	line "health returned!"
	done

_ReviveText::
	text_ram wNameBuffer
	text_start
	line "is revitalized!"
	done

_RareCandyText::
	text_ram wNameBuffer
	text " grew"
	line "to level @"
	text_decimal wCurEnemyLevel, 1, 3
	text "!@"
	text_end

_TurnedOnPC1Text::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

_AccessedBillsPCText::
	text "Dostęp do"
	line "komputera BARTEK"
	cont "BELS."

	para "Accessed #MON"
	line "Storage System."
	prompt

_AccessedSomeonesPCText::
	text "Dostała się do"
	line "kogoś, kto domaga"
	cont "się PC."

	para "Accessed #MON"
	line "Storage System."
	prompt

_AccessedMyPCText::
	text "Wszedł na mój"
	line "komputer."

	para "Dostęp do systemu"
	line "przechowywania"
	cont "elementów."
	prompt

_TurnedOnPC2Text::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

_WhatDoYouWantText::
	text "Co chcesz zrobić?"
	done

_WhatToDepositText::
	text "Co chcesz"
	line "zdeponować?"
	done

_DepositHowManyText::
	text "Ile?"
	done

_ItemWasStoredText::
	text_ram wNameBuffer
	text " was"
	line "stored via PC."
	prompt

_NothingToDepositText::
	text "Nie masz nic do"
	line "depozytu."
	prompt

_NoRoomToStoreText::
	text "Nie ma już miejsca"
	line "na rzeczy."
	prompt

_WhatToWithdrawText::
	text "Co chcesz wycofać?"
	done

_WithdrawHowManyText::
	text "Ile?"
	done

_WithdrewItemText::
	text "Withdrew"
	line "@"
	text_ram wNameBuffer
	text "."
	prompt

_NothingStoredText::
	text "Nic nie jest"
	line "przechowywane."
	prompt

_CantCarryMoreText::
	text "Nie możesz nosić"
	line "więcej rzeczy."
	prompt

_WhatToTossText::
	text "Co chcesz"
	line "wyrzucić?"
	done

_TossHowManyText::
	text "Ile?"
	done

_AccessedHoFPCText::
	text "Dostęp do strony"
	line "Pokémon LEAGUE."

	para "Accessed the HALL"
	line "OF FAME List."
	prompt

_SwitchOnText::
	text "Włączcie!"
	prompt

_WhatText::
	text "Co?"
	done

_DepositWhichMonText::
	text "Depozyt, który"
	line "Pokémon?"
	done

_MonWasStoredText::
	text_ram wStringBuffer
	text " was"
	line "stored in Box @"
	text_ram wBoxNumString
	text "."
	prompt

_CantDepositLastMonText::
	text "Możesz wpłacić"
	line "ostatni Pokémon!"
	prompt

_BoxFullText::
	text "Ta skrzynka jest"
	line "pełna Pokémona."
	prompt

_MonIsTakenOutText::
	text_ram wStringBuffer
	text " is"
	line "taken out."
	cont "Got @"
	text_ram wStringBuffer
	text "."
	prompt

_NoMonText::
	text "Nie ma tu żadnego"
	line "Pokemona!"
	prompt

_CantTakeMonText::
	text "Nie możesz brać"
	line "więcej Pokémona."

	para "Deposit #MON"
	line "first."
	prompt

_ReleaseWhichMonText::
	text "Wypuścić który"
	line "Pokémon?"
	done

_OnceReleasedText::
	text "Once released,"
	line "@"
	text_ram wStringBuffer
	text " is"
	cont "gone forever. OK?"
	done

_MonWasReleasedText::
	text_ram wStringBuffer
	text " was"
	line "released outside."
	cont "Bye @"
	text_ram wStringBuffer
	text "!"
	prompt

_RequireCoinCaseText::
	text "Wymagany jest"
	line "wypadek z bronią!@"
	text_end

_ExchangeCoinsForPrizesText::
	text "Wymieniamy twoje"
	line "monety na nagrody."
	prompt

_WhichPrizeText::
	text "Którą nagrodę"
	line "chcesz?"
	done

_HereYouGoText::
	text "Proszę!@"
	text_end

_SoYouWantPrizeText::
	text "So, you want"
	line "@"
	text_ram wNameBuffer
	text "?"
	done

_SorryNeedMoreCoinsText::
	text "Przepraszam,"
	line "potrzebujesz"
	cont "więcej monet.@"
	text_end

_OopsYouDontHaveEnoughRoomText::
	text "Nie masz"
	line "wystarczająco dużo"
	cont "miejsca.@"
	text_end

_OhFineThenText::
	text "W porządku.@"
	text_end

_GetDexRatedText::
	text "Chcesz dostać"
	line "ocenę Pokédex?"
	done

_ClosedOaksPCText::
	text "Zamknięty link do"
	line "PROF. DĄB Adus PC.@"
	text_end

_AccessedOaksPCText::
	text "Dostęp do PROF."
	line "DĄB does PC."

	para "Accessed #DEX"
	line "Rating System."
	prompt

_WhereWouldYouLikeText::
	text "Gdzie chciałabyś"
	line "pójść?"
	done

_PleaseWaitText::
	text "OK, proszę chwilę"
	line "poczekać."
	done

_LinkCanceledText::
	text "Połączenie zostało"
	line "anulowane."
	done

_OakSpeechText1::
	text "Witaj w świecie"
	line "Pokémonów!"

	para "Nazywam się Dąb."
	line "Mówią na mnie"
	cont "profesor Pokémon!"
	prompt

_OakSpeechText2A::
	text "Ten świat"
	line "zamieszkują"
	cont "stworzenia zwane"
	cont "Pokémonami!@"
	text_end

_OakSpeechText2B::
	text_start

	para "Dla jednych to"
	line "towarzysze. Inni"
	cont "trenują je do"
	cont "walki."

	para "A ja..."

	para "Badam Pokémony."
	prompt

_IntroducePlayerText::
	text "Najpierw powiedz,"
	line "jak masz na imię?"
	prompt

_IntroduceRivalText::
	text "To mój wnuk."
	line "Rywalizujecie ze"
	cont "sobą od dziecka."

	para "Chwileczkę..."
	line "Jak on ma na imię?"
	prompt

_OakSpeechText3::
	text "<PLAYER>!"

	para "Zaczyna się twoja"
	line "własna legenda"
	cont "Pokémonów!"

	para "Czeka na ciebie"
	line "świat marzeń"
	cont "i przygód!"
	cont "Ruszajmy!"
	done

_DoYouWantToNicknameText::
	text "Nadać imię"
	line "Pokémonowi?"
	cont "@"
	text_ram wNameBuffer
	text "?"
	done

_YourNameIsText::
	text "Już wiem!"
	line "Masz na imię"
	cont "<PLAYER>!"
	prompt

_HisNameIsText::
	text "Tak, już pamiętam!"
	line "Ma na imię"
	cont "<RIVAL>!"
	prompt

_WillBeTradedText::
	text_ram wNameOfPlayerMonToBeTraded
	text " and"
	line "@"
	text_ram wNameBuffer
	text " will"
	cont "be traded."
	done

_TextIDErrorText::
	text_decimal hTextID, 1, 2
	text " ERROR."
	done

_ContCharText::
	text "<_CONT>@"
	text_end
