--// Lucky Blocks Battlegrounds






--[[
    Made by darkzin
            { v 1.0.0 }
    InfinityHub
--]]

repeat task.wait() until game:IsLoaded()
local Settings

--// Rayfield Modfied
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Librays/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
    Name = "Infinity Hub  |  @Darkzin",
    LoadingTitle = "Infinity Hub",
    LoadingSubtitle = "by darkzin",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "sirius", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Infinity Hub",
       Subtitle = "Key System",
       Note = "Private Key",
       FileName = "SiriusKey",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "3!aTqFE5)1bm2tI1sRBXF6ybDHG9Ty"
    }
})




--// Tabs: Info 
local Tab = Window:CreateTab("Info")
local Section = Tab:CreateSection("--// Welcome", true)
local Paragraph = Tab:CreateParagraph({Title = "Bem Vindo", Content = "Bem vindo ao Infinity Hub Shindo Life (Beta)"})


local Section = Tab:CreateSection("--// Game", true)
local Label = Tab:CreateLabel("Lucky Blocks Battlegrounds")


local Section = Tab:CreateSection("--// Hub Version", true)
local Label = Tab:CreateLabel("Hub Version: 1.0.0")




--// Tabs: Get ALl Items
local Tab = Window:CreateTab("Get All Items")
local Section = Tab:CreateSection("--// Get All Items", true)
local Paragraph = Tab:CreateParagraph({Title = "Info", Content = "Te da todos os items do jogo."})


local Toggle = Tab:CreateToggle({
    Name = "Get All Items",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        Settings = State
		if Settings then
			while wait() and Settings do
				game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
			end
		end
    end,
}) 
