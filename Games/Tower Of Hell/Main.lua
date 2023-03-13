--// Variables
local plr = game:GetService("Players").LocalPlayer
local valuesI = {
	"coinMultiplier",
	"height",
	"maxCoins",	
	"maxXp",
	"sectionCount",
}
getgenv().ModdedValues = nil
local function Values()
	if getgenv().ModdedValues == "coinMultiplier" then
		game:GetService("Workspace").tower.coinMultiplier = Slider
		
		
	elseif getgenv().ModdedValues == "height" then
		game:GetService("Workspace").tower.height.Value = Slider
	
        
	elseif getgenv().ModdedValues == "maxCoins" then
		game:GetService("Workspace").tower.maxCoins.Value = Slider
	

	elseif getgenv().ModdedValues == "maxXp" then
		game:GetService("Workspace").tower.maxXp.Value = Slider
	

	elseif getgenv().ModdedValues == "sectionCount" then
		game:GetService("Workspace").tower.sectionCount.Value = Slider
		
	end
end

local Finish = game:GetService("Workspace").tower.sections.finish.FinishGlow
local Floor  = game:GetService("Workspace").tower.sections.start.floor.floor
local function TpFinish()
    if Finish then
	    plr.Character.HumanoidRootPart.CFrame = Finish.CFrame wait(1.2)
        plr.Character.HumanoidRootPart.CFrame = Floor.CFrame 
    end
end


--// not libray
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

--// Rayfiel Libray
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
      Key = ""
   }
})



--// Tabs: Info
local Tab = Window:CreateTab("Info")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
Tower Off Hell Op Script
Feito por: Infinity Hub - by Darkzin

Obs: Se quise deletar alguns script (Que possivelmente pode ser AntiCheat), aperte no botão abaixo.
Aproveite.
]]})

local Section = Tab:CreateSection("--// Delete", true)

local script1 = game:GetService("Workspace").Script
local script2 = game:GetService("Workspace"):GetChildren()[4]
local script3 = game:GetService("Workspace").sectionorganizer
local script4 = game:GetService("Workspace").shade
local Button = Tab:CreateButton({
    Name = "Delete Scripts",
    Callback = function()
        if script1 then
            if plr then
                script1:Destroy()
                script2:Destroy()
                script3:Destroy()
                script4:Destroy()
            end
        end
    end,
})


--// Tabs: Farming
local Tab = Window:CreateTab("Farming")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
Opções para farmar automaticamente.
Cuidado! Não abuse muito pois pode acabar levando Ban.
]]})


local Section = Tab:CreateSection("--// Values", true)
local Dropdown = Tab:CreateDropdown({
    Name = "Select Value: ",
    Options = valuesI,
    CurrentOption = "",
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        getgenv().ModdedValues = Option
    end,
})
local Slider = Tab:CreateSlider({
    Name = "Modded Value Soon",
    Range = {1, 1000},
    Increment = 1,
    Suffix = "",
    CurrentValue = 1,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Slider)
        Values()
    end,
})

local Section = Tab:CreateSection("--// Teleport Finish", true)
local Button = Tab:CreateButton({
    Name = "Teleport Finish",
    Callback = function()
        TpFinish()
    end,
})



--// Tabs: Player
local Tab = Window:CreateTab("Player")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
Opções para usar no player.
Script que são feitos para ajuda o Player.
]]})

local GodMode = game:GetService("Players").LocalPlayer.Character.KillScript
local Button = Tab:CreateButton({
    Name = "GodMode",
    Callback = function()
        if GodMode then
            GodMode:Destroy()
        end
    end,
})

local AntiSpeed = game:GetService("Players").LocalPlayer.Character.speedscript
local Button = Tab:CreateButton({
    Name = "AntiSpeed",
    Callback = function()
        if AntiSpeed then
            AntiSpeed:Destroy()
        end
    end,
})

local AntiJump = game:GetService("Players").LocalPlayer.Character.bunnyJump
local Button = Tab:CreateButton({
    Name = "AntiJump",
    Callback = function()
        if AntiJump then
            AntiJump:Destroy()
        end
    end,
})

local AntiWind = game:GetService("Players").LocalPlayer.Character.WindScript
local Button = Tab:CreateButton({
    Name = "AntiWind",
    Callback = function()
        if AntiWind then
            AntiWind:Destroy()
        end
    end,
})



--// Tabs: Troll
local Tab = Window:CreateTab("Troll")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
Opções para zua 😐👍
]]})

local Section = Tab:CreateSection("--// Troll Options", true)
local Button = Tab:CreateButton({
    Name = "Make a Creator",
    Callback = function()
        game:GetService("Workspace").tower.sections.Code.creator.Value = game.Players.LocalPlayer.UserId
    end,
})
local Button = Tab:CreateButton({
    Name = "Give all tools",
    Callback = function()
        for i, v in pairs (game:GetService("ReplicatedStorage").Gear:GetChildren()) do
            if v:IsA("Tool") then
                poop = v:Clone()
                poop.Parent = game:GetService("Players").LocalPlayer:FindFirstChild("Backpack")
            end
        end
    end,
})
