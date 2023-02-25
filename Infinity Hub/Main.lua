--[===================================================[
Made by Darkzin
Version: 1.0.0

info:
Scripts Work: ✅
All games works: ✅

Games:
[+] = [ { Stands Awakening } ]
[+] = [ { Shindo Life } ]
[+] = [ { Build a Boat For Treasure } ]
[+] = [ { World of Stands } ]
[+] = [ { Lucky Blocks Battlegrounds } ]


--]===================================================]


repeat wait() until game:IsLoaded()
local PlaceId = game.PlaceId


--// Stands Awakening
if PlaceId == 5780309044 then
	loadstring(game:HttpGet"https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Obfuscate/Stands%20Awakening/Check/MainMapCheck.lua")()
elseif PlaceId == 11423467063 then
	loadstring(game:HttpGet"https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Obfuscate/Stands%20Awakening/Check/AutoBossCheck.lua")()

--// Shindo Life
elseif PlaceId == 4601350214 then
	loadstring(game:HttpGet"https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Obfuscate/Shindo%20Life/Main.lua")()

--// Build a Boat For Treasure
elseif PlaceId == 537413528 then
	loadstring(game:HttpGet"https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Obfuscate/Bild%20a%20Boat%20For%20Treasure/Main.lua")()

--// World of Stands
elseif PlaceId == 6728870912 then
	loadstring(game:HttpGet"https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Obfuscate/Worlds%20Of%20Stand/Main.lua")()

--// Lucky Blocks Battlegrounds
	-- Soon
end
