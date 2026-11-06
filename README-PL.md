# Pokémon Red / Blue po polsku

Wersja na Game Boy Color z kolorowym światem z projektu
[pokered-gbc](https://github.com/dannye/pokered-gbc). Grafiki Espeona i Umbreona
pochodzą z [pokecrystal](https://github.com/pret/pokecrystal). Kira ma własne
czarno-białe sprite’y.

Polskie dialogi są wersją roboczą. Wstęp i Drogę 1 zredagowano ręcznie.
W dalszej części gry część tekstów i menu wciąż jest po angielsku.
Rozmówcy mają polskie imiona nad oknem dialogowym, a rywal zachowuje imię
wybrane przez gracza.

Zbuduj grę poleceniem `make`, korzystając z instrukcji w [INSTALL.md](INSTALL.md).
Na Windows można budować w WSL. Uruchom `pokered.gbc` lub `pokeblue.gbc`
w emulatorze Game Boy Color. Rozpocznij nową grę, ponieważ rozszerzony Pokédex
zmienia format zapisu.

Na Drodze 1 można złapać Espeona i Umbreona. Kira pojawia się rzadko w tej samej
trawie, jeśli postać gracza ma dokładnie na imię `Baraqda`. Wielkość liter
nie ma znaczenia. Kira jest typu smoczego i latającego, ma najwyższą sumę
statystyk w grze i zna od początku Lot, Teleport, Hyper Beam oraz Blizzard.
Lot poza walką wymaga odpowiedniej odznaki.

## Wspólna mapa i czat dla czterech osób

Pokój LAN wyświetla postacie innych graczy na tej samej mapie i udostępnia
czat tekstowy. Każdy zachowuje własny zapis i postęp fabuły. Walka i wymiana
przez Cable Club to osobny tryb dla dwóch osób.

1. Gospodarz uruchamia w Pythonie 3.10 lub nowszym
   `python lan/server.py 192.168.1.20`, podając rzeczywisty adres IPv4 swojego
   komputera. Serwer wyświetli kod pokoju i port (domyślnie `8766`).
2. Na każdym komputerze uruchomcie ten sam ROM w [wersji deweloperskiej
   mGBA](https://mgba.io/downloads.html), która ma interfejs skryptowy Canvas.
   Plik `.sym` musi pochodzić z tej samej kompilacji co ROM.
3. W mGBA wybierzcie **Tools → Scripting** i wczytajcie
   [lan/client.lua](lan/client.lua). W polu poleceń wpiszcie poniższe polecenie,
   podmieniając adres, kod, nick i ścieżkę. Na Windows można użyć ukośników
   `/` w ścieżce. Każdy gracz wybiera inny nick.

```lua
lanJoin("192.168.1.20", "1234abcd", "Ola", "C:/Pokemon/pokered.sym")
lanSay("Cześć! Spotkajmy się na Drodze 1.")
lanLeave()
```

Czat widać w oknie skryptowym. Gracze pojawiają się na ekranie po wejściu na
tę samą mapę i zbliżeniu się do siebie. Nie kolidują ze sobą. Po wejściu w
walkę lub menu postać znika z widoku pozostałych osób do powrotu na mapę.

## Walka i wymiana w parze

Walka i wymiana działają w parach przez Cable Club, który emuluje kabel łączący
dwa Game Boye. Każdy gra na własnym zapisie. Kilka par może grać równocześnie,
jeśli gospodarze używają różnych adresów lub portów.

1. Na obu komputerach uruchom tę samą wersję gry w [BGB](https://bgb.bircd.org/).
   Oba komputery muszą móc łączyć się ze sobą w tej samej sieci.
2. Gospodarz sprawdza swój adres IPv4 poleceniem `ipconfig`. W menu BGB
   wybiera **Link → Listen** i port `8765`.
3. Drugi gracz wybiera **Link → Connect** i wpisuje adres gospodarza z portem,
   np. `192.168.1.20:8765`.
4. Gdy BGB pokaże połączenie, obaj gracze rozmawiają z obsługą Cable Club
   w Pokémon Center i wybierają ten sam tryb, walkę albo wymianę.

Skrypt [play-lan.ps1](play-lan.ps1) uruchamia BGB i wybiera tryb połączenia.
Domyślnie szuka `bgb.exe` i `pokered.gbc` obok skryptu. Ścieżki można podać
opcjami `-Emulator` i `-Rom`.

```powershell
.\play-lan.ps1 -Mode Host -Address 192.168.1.20
.\play-lan.ps1 -Mode Join -Address 192.168.1.20
```

Jeśli szkolna sieć blokuje ruch między komputerami, skontaktuj się z osobą
zarządzającą siecią. Gra nie wymaga przekierowania portu na routerze.
