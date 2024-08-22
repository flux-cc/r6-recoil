local recoilX = 0             -- right / left | pos / neg
local recoilY = 0

local realisticRecoil = false -- no recoil / or some recoil
local realisticRecoilModX = 0 -- higher the more you have to work
local realisticRecoilModY = 1 -- higher the more you have to work
---------OPERATORS--------
-- Castle, Pulse, Tachanka: (0,3)
-- Echo, Vigil, Clash, Kaid, Kapkan, Azami, Thorn, Warden, Valkyrie: (0,5)
-- Mozzie, Lesion, Jager, Bandit, Fenrir: (0,6)
-- Alibi: (0,7)
-- Ela: (1,7)
-- Mira: (0,8)
-- Smoke, Mute, SMG11: (0,9)
-- Brava, Frost: (0,10)
-- Sledge, Thatcher: (1,10)
-- Thermite: (2,10)
-- Deimos, Nomad: (-1,11)
-- Gridlock, Brava: (0,11)
-- Jackal, Ying, Osa, Grim: (0,12)
-- Amaru: (-1,13)
-- Doc, Rook, Melusi: (0,13)
-- Fuze, Ace: (-1,14)
-- IQ: (1,14)
-- Nokk: (1,17)
-- Dokkaebi: (-1,15)
-- Buck: (0,15)
-- Iana: (1,15)
-- Ash, Ram: (-1,17)
-- Goyo: (0,19)
-- Twitch: (-1,25)




















EnablePrimaryMouseButtonEvents  (true);
function OnEvent(event,arg)
    if IsKeyLockOn("capslock")then
        if IsMouseButtonPressed(3)then 
            repeat
                if IsMouseButtonPressed(1) then
                    repeat
                    if realisticRecoil then
                        MoveMouseRelative(recoilX - realisticRecoilModX, recoilY - realisticRecoilModY)
                    else
                        MoveMouseRelative(recoilX, recoilY)
                    end
                        Sleep(2,3)
                    until not IsMouseButtonPressed(1)
                end
            until not IsMouseButtonPressed(3)
        end
    end
 end
