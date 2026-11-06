"""Four-player LAN room for the Pokémon Red/Blue overworld overlay."""

import argparse
import asyncio
import hmac
import ipaddress
import re
import secrets
from dataclasses import dataclass


@dataclass
class Player:
    name: str
    writer: asyncio.StreamWriter
    position: tuple[int, int, int, int] | None = None
    last_chat: float = -10


class Room:
    def __init__(self, code):
        self.code = code
        self.players = {}
        self.build = None

    def broadcast(self, message):
        data = (message + "\n").encode()
        for player in self.players.values():
            if player.writer.transport.get_write_buffer_size() > 16_384:
                player.writer.close()
            elif not player.writer.is_closing():
                player.writer.write(data)

    def positions(self):
        records = []
        for slot, player in self.players.items():
            if player.position:
                records.append(",".join(map(str, (slot, player.name, *player.position))))
        self.broadcast("S\t" + "\t".join(records))

    async def handle(self, reader, writer):
        slot = None
        try:
            hello = await self.readline(reader, 5)
            parts = hello.split("\t")
            if (len(parts) != 4 or parts[0] != "HELLO1"
                    or not hmac.compare_digest(parts[1].encode(), self.code.encode())
                    or not re.fullmatch(r"[0-9a-f]{8}", parts[2])
                    or not re.fullmatch(r"[A-Za-z0-9_-]{1,12}", parts[3])):
                writer.write(b"E\tNiepoprawny kod, wersja gry lub nick.\n")
                await writer.drain()
                return
            _, _, build, name = parts
            if self.build is not None and self.build != build:
                writer.write(b"E\tWszyscy musza uzyc tej samej kompilacji gry.\n")
                await writer.drain()
                return
            if len(self.players) == 4:
                writer.write(b"E\tPokoj jest pelny.\n")
                await writer.drain()
                return
            if any(player.name.lower() == name.lower() for player in self.players.values()):
                writer.write(b"E\tTen nick jest juz zajety.\n")
                await writer.drain()
                return
            slot = next(i for i in range(1, 5) if i not in self.players)
            player = self.players[slot] = Player(name, writer)
            self.build = build
            writer.write(f"I\t{slot}\n".encode())
            self.broadcast(f"C\tPokój\t{name} dołącza.")
            clock = asyncio.get_running_loop()
            last_position = -10
            while True:
                line = await self.readline(reader, 15)
                now = clock.time()
                if line == "P":
                    if player.position is not None:
                        player.position = None
                        self.positions()
                elif line.startswith("P\t") and now - last_position >= 0.075:
                    values = line.split("\t")[1:]
                    if len(values) != 4 or not all(re.fullmatch(r"[0-9]{1,3}", v) for v in values):
                        continue
                    location = tuple(map(int, values))
                    if max(location) > 255 or location[3] not in (0, 4, 8, 12):
                        continue
                    last_position = now
                    if player.position != location:
                        player.position = location
                        self.positions()
                elif line.startswith("C\t") and now - player.last_chat >= 0.6:
                    message = "".join(ch for ch in line[2:] if ch.isprintable()).strip()[:180]
                    if message:
                        player.last_chat = now
                        self.broadcast(f"C\t{name}\t{message}")
        except (TimeoutError, UnicodeError, ValueError, ConnectionError):
            pass
        finally:
            if slot is not None:
                del self.players[slot]
                if not self.players:
                    self.build = None
                self.broadcast(f"C\tPokój\t{name} rozłącza się.")
                self.positions()
            writer.close()
            try:
                await writer.wait_closed()
            except ConnectionError:
                pass

    @staticmethod
    async def readline(reader, timeout):
        raw = await asyncio.wait_for(reader.readline(), timeout)
        if not raw.endswith(b"\n"):
            raise ConnectionError("incomplete message")
        return raw[:-1].decode()


async def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("address", type=ipaddress.IPv4Address)
    parser.add_argument("--port", type=int, default=8766)
    args = parser.parse_args()
    if args.address.is_unspecified or args.address.is_multicast or not 1024 <= args.port <= 65535:
        parser.error("podaj konkretny adres IPv4 gospodarza i port 1024–65535")
    room = Room(secrets.token_hex(4))
    server = await asyncio.start_server(room.handle, str(args.address), args.port, limit=1024)
    print(f"Adres pokoju: {args.address}:{args.port} | Kod: {room.code}", flush=True)
    async with server:
        await server.serve_forever()


if __name__ == "__main__":
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        pass
