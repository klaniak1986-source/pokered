-- Load in the mGBA development build through Tools > Scripting.
assert(emu and canvas and image and socket, "Uruchom gre w kompilacji deweloperskiej mGBA.")

local addresses = {}
local conn, callback, mySlot
local pending, peers, layers = "", {}, {}
local frames, lastTick, lastOverworld = 0, nil, -100
local activeGame
local colors = {0xffdb5148, 0xff337acc, 0xff248b57, 0xff8b4dc0}
local required = {
    "wLanOverworldTick", "wCurMap", "wXCoord", "wYCoord",
    "wSpritePlayerStateData1FacingDirection", "wIsInBattle",
}
local avatar = {
    "....####....",
    "...#cccc#...",
    "..#cccccc#..",
    "..########..",
    "...#ssss#...",
    "...#ssss#...",
    "....####....",
    "...#cccc#...",
    "..#sccccs#..",
    "..#sccccs#..",
    "...#cccc#...",
    "....####....",
    "...##..##...",
    "...##..##...",
}

local function drawPlayer(slot, peer)
    local layer = layers[slot]
    if not layer then
        layer = canvas:newLayer(84, 28)
        layers[slot] = layer
    end
    if layer.x == -1000 or peer.redraw then
        local blank = image.new(84, 28)
        local pixel = {["#"] = 0xff211d29, c = colors[slot], s = 0xffffd7ad}
        for y, row in ipairs(avatar) do
            for x = 1, #row do
                local color = pixel[row:sub(x, x)]
                if color then blank:setPixel(35 + x, 13 + y, color) end
            end
        end
        if peer.facing ~= 4 then
            local eyes = peer.facing == 8 and {39} or peer.facing == 12 and {44} or {39, 44}
            for _, x in ipairs(eyes) do blank:setPixel(x, 18, pixel["#"]) end
        end
        local painter = image.newPainter(blank)
        painter:setFill(true)
        painter:setStrokeWidth(0)
        painter:setFontSize(8)
        painter:setFillColor(0xe0211d29)
        painter:drawRectangle(0, 0, 84, 12)
        painter:setFillColor(0xffffffff)
        painter:drawText(peer.name, 2, 1)
        layer.image:drawImageOpaque(blank, 0, 0)
        layer:update()
        peer.redraw = false
    end
    return layer
end

local function hide(slot)
    if layers[slot] then
        layers[slot]:setPosition(-1000, -1000)
    end
end

function lanLeave()
    if callback then callbacks:remove(callback) end
    if conn then conn:close() end
    callback, conn, mySlot = nil, nil, nil
    pending, peers = "", {}
    for slot = 1, 4 do hide(slot) end
    canvas:update()
end

local function receive()
    for _ = 1, 8 do
        if not conn:hasdata() then break end
        local chunk, err = conn:receive(4096)
        if not chunk or #chunk == 0 then
            console:warn("Rozłączono: " .. tostring(err or "koniec połączenia"))
            lanLeave()
            return
        end
        pending = pending .. chunk
        while true do
            local newline = pending:find("\n", 1, true)
            if not newline then break end
            local line = pending:sub(1, newline - 1)
            pending = pending:sub(newline + 1)
            if line:sub(1, 2) == "I\t" then
                mySlot = tonumber(line:sub(3))
                console:log("Połączono z pokojem.")
            elseif line:sub(1, 2) == "E\t" then
                console:error(line:sub(3))
                lanLeave()
                return
            elseif line:sub(1, 2) == "C\t" then
                console:log((line:sub(3):gsub("\t", ": ", 1)))
            elseif line:sub(1, 2) == "S\t" then
                local nextPeers = {}
                for rawSlot, name, map, x, y, rawFacing in line:gmatch("(%d),([%w_-]+),(%d+),(%d+),(%d+),(%d+)") do
                    local slot, facing = tonumber(rawSlot), tonumber(rawFacing)
                    local previous = peers[slot]
                    nextPeers[slot] = {
                        name = name, map = tonumber(map), x = tonumber(x), y = tonumber(y), facing = facing,
                        redraw = not previous or previous.redraw or previous.name ~= name or previous.facing ~= facing,
                    }
                end
                peers = nextPeers
            end
        end
        if #pending > 4096 then
            lanLeave()
            return
        end
    end
end

local function send(message)
    local sent, err = conn:send(message)
    if sent ~= #message then
        console:warn("Błąd wysyłania: " .. tostring(err or "niepełna wiadomość"))
        lanLeave()
        return false
    end
    return true
end

local function frame()
    if emu ~= activeGame then
        lanLeave()
        return
    end
    frames = frames + 1
    receive()
    if not conn then return end
    local tick = emu:read8(addresses.wLanOverworldTick)
    if tick ~= lastTick then lastTick, lastOverworld = tick, frames end
    local visible = frames - lastOverworld <= 10 and emu:read8(addresses.wIsInBattle) == 0
    local map = emu:read8(addresses.wCurMap)
    local x = emu:read8(addresses.wXCoord)
    local y = emu:read8(addresses.wYCoord)
    if mySlot and frames % 6 == 0 then
        local direction = emu:read8(addresses.wSpritePlayerStateData1FacingDirection) % 16
        local position = visible and ("P\t%d\t%d\t%d\t%d\n"):format(map, x, y,
            direction - direction % 4) or "P\n"
        if not send(position) then return end
    end
    for slot = 1, 4 do
        local peer = peers[slot]
        local dx = peer and peer.x - x or 999
        local dy = peer and peer.y - y or 999
        if visible and peer and slot ~= mySlot and map == peer.map
            and dx >= -4 and dx <= 5 and dy >= -3 and dy <= 4 then
            local layer = drawPlayer(slot, peer)
            layer:setPosition(30 + dx * 16, 44 + dy * 16)
        else
            hide(slot)
        end
    end
    canvas:update()
end

function lanJoin(address, code, nick, symbols, port)
    assert(type(nick) == "string" and #nick <= 12 and nick:match("^[A-Za-z0-9_-]+$"),
        "Nick: 1–12 liter ASCII, cyfr, myślników lub podkreśleń.")
    assert(type(code) == "string" and code:match("^%x%x%x%x%x%x%x%x$"), "Wpisz kod pokoju.")
    lanLeave()
    addresses = {}
    for line in io.lines(symbols) do
        local addr, label = line:match("^%x+:(%x+)%s+([%w_]+)%s*$")
        if addr then addresses[label] = tonumber(addr, 16) end
    end
    for _, label in ipairs(required) do
        assert(addresses[label] and addresses[label] >= 0xc000 and addresses[label] <= 0xdfff,
            "Brak symbolu WRAM: " .. label)
    end
    activeGame = emu
    frames, lastTick, lastOverworld = 0, nil, -100
    local err
    conn, err = socket.connect(address, port or 8766)
    assert(conn, tostring(err))
    local checksum = emu:checksum(C.CHECKSUM.CRC32)
    local build = checksum:gsub(".", function(byte) return ("%02x"):format(byte:byte()) end)
    if send(("HELLO1\t%s\t%s\t%s\n"):format(code, build, nick)) then
        callback = callbacks:add("frame", frame)
    end
end

function lanSay(message)
    assert(conn and mySlot, "Najpierw dołącz do pokoju.")
    assert(type(message) == "string" and #message <= 720, "Wiadomość jest za długa.")
    return send("C\t" .. message:gsub("[%c]", " ") .. "\n")
end

console:log('LAN gotowy. Użyj lanJoin("adres", "kod", "nick", "pokered.sym").')
