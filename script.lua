local recoilX = 0                   -- right / left | pos / neg
local recoilY = 0
local disable = true
----------- DEFENDING -----------
-- Rook(PISTOL): (1,1)
-- Alibi(SHOTTY), Azami(SHOTTY): (1,2)
-- Castle, Pulse, Tachanka: (0,3)
-- Caveira(AR): (1,3)
-- Sentry, Kaid, Skopos: (1,4)
-- Aruni(SS): (0,5)
-- Echo, Clash, Kapkan, Azami(AR), Thorn, Warden, Valkyrie, Wamai, Tubby, Melusi: (1,5)
-- Mozzie, Bandit, Fenrir, Lesion, Jager, Vigil(AR), Solis, Maestro, Oryx, Thunderbird, Aruni, Caveira(PISTOL): (1,6)
-- Alibi(AR): (0,7)
-- Ela: (1,7)
-- Mira: (0,8)
-- Smoke, Mute, SMG11: (1,9)
-- Frost: (0,10)
-- Echo (SHOTTY): (1,10)
-- Vigil, Dokkaebi, SMG12: (2,10)
-- Doc, Rook: (0,13)
-- Doc(BALIFF): (0,17)
-- Goyo: (0,19)
----------- ATTACKING -----------
-- Monty, P9: (1,1)
-- Blitz, P12: (1,2)
-- Kali: (1,5)
-- Maverick: (1,6)
-- Sledge, Thatcher: (1,10)
-- Thermite: (2,10)
-- Deimos, Nomad: (-1,11)
-- Gridlock, Brava: (0,11)
-- Flores, Lion: (1,11)
-- Osa, Grim: (0,12)
-- Ying, Sense: (1,12)
-- Amaru: (-1,13)
-- Striker, Hibana: (0,14)
-- Fuze, Ace: (-1,14)
-- IQ: (1,14)
-- Dokkaebi: (-1,15)
-- Buck: (0,15)
-- Iana, Jackal: (1,15)
-- Finka: (0,16)
-- Nokk, Zero: (1,16)
-- Ash, Ram: (0,18)
-- Twitch: (0,25)




















EnablePrimaryMouseButtonEvents  (true);
function OnEvent(event,arg)
    if IsKeyLockOn("numlock")then
        if not disable then
          if IsMouseButtonPressed(3)then 
            repeat
                if IsMouseButtonPressed(1) then
                    repeat
                    MoveMouseRelative(recoilX - 1, recoilY)
                        Sleep(2,3)
                    until not IsMouseButtonPressed(1)
                end
            until not IsMouseButtonPressed(3)
        end
    end
  end
end
