--// Ninja Legend






--[==================[
    Ninja Legend Script Op
        { v 1.0.0 }
    Made By Darkzin
--]==================]

repeat wait() until game:IsLoaded() wait()




--// Variables
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
game:GetService('RunService').RenderStepped:connect(function()
game:GetService("Players").LocalPlayer.multiJumpCount.Value = 50
if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("statEffectsGui") then
game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui:remove()
end end)
jk = {}
for _,v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do
if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then
table.insert(jk,v.Name)
end end 
jk1 = {}
for _,v in pairs(game:GetService("ReplicatedStorage").Ranks.Ground:GetDescendants()) do
if v:FindFirstChild("rankColor") then
table.insert(jk1,v.Name)
end end 
jk2 = {}
for _,v in pairs(game:GetService("Workspace").mapCrystalsFolder:GetDescendants()) do
if v:FindFirstChild("Crystal") then
table.insert(jk2,v.Name)
end end 
jk3 = {}
for _,v in pairs(game:GetService("Workspace").bossFolder:GetDescendants()) do
if v:FindFirstChild("HumanoidRootPart") then
table.insert(jk3,v.Name)
end end

local Settings
local plr = game:GetService("Players").LocalPlayer




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
      Key = "teste"
   }
})




--// Tabs: Info 
local Tab = Window:CreateTab("Info")
local Section = Tab:CreateSection("--// Welcome", true)
local Paragraph = Tab:CreateParagraph({Title = "Welcome", Content = "Bem vindo ao Infinity Hub Bild a boat for tesure."})


local Section = Tab:CreateSection("--// Game", true)
local Label = Tab:CreateLabel("Ninja Legend")


local Section = Tab:CreateSection("--// Hub Version", true)
local Label = Tab:CreateLabel("Hub Version: 1.0.0")




--// Player
local Tab = Window:CreateTab("Local Player")
local Section = Tab:CreateSection("--// Client", true)
local Paragraph = Tab:CreateParagraph({Title = "Farming", Content = "Scripts para o LocalPlayer."})

local Toggle = Tab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
		Settings = State
		game:GetService("UserInputService").JumpRequest:connect(function()
			if Settings then
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			end
		end)
    end,
})
local Slider = Tab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 1000},
   Increment = 16,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Speed)
		plr.Character.Humanoid.WalkSpeed = Speed
  end,
})
local Slider = Tab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 1000},
   Increment = 50,
   Suffix = "Speed",
   CurrentValue = 50,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Jump)
		plr.Character.Humanoid.JumpPower = Jump
  end,
})




--// Farm
local Tab = Window:CreateTab("Farming")
local Section = Tab:CreateSection("--// Farms", true)
local Paragraph = Tab:CreateParagraph({Title = "Info", Content = "Opções para se auto farmar aotomaticamente."})

local Button = Tab:CreateButton({
   Name = "Auto Clicker",
   Info = "Press V",
   Callback = function()
	getgenv().Settings = {
    	["Auto Click Keybind"] = "V", -- Use an UpperCase letter or KeyCode Enum. Ex: Enum.KeyCode.Semicolon
    	["Lock Mouse Position Keybind"] = "B",
    	["Right Click"] = false,
    	["GUI"] = true, -- A drawing gui that tells you what is going on with the autoclicker.
    	["Delay"] = 0 -- 0 for RenderStepped, other numbers go to regular wait timings.
	}
	loadstring(game:HttpGet("https://raw.githubusercontent.com/BimbusCoder/Script/main/Auto%20Clicker.lua"))()
   end,
})

local Section = Tab:CreateSection("--// Farm Swing and Sell", true)
local Toggle = Tab:CreateToggle({
    Name = "Auto Swing",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
		Settings = State
		while wait(.1) and Settings do
			game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
		end
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Sell",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
		Settings = State
		while wait(1) and Settings do
			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner, 0) --0 is touch
		end
    end,
})


local Section = Tab:CreateSection("--// Auto Buy", true)
local Toggle = Tab:CreateToggle({
    Name = "Auto Buy Sword",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
		Settings = State
		while wait() and Settings do
			game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyAllSwords","Blazing Vortex Island")
		end
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Buy Belts",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
		Settings = State
		while wait() and Settings do
			game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyAllBelts","Blazing Vortex Island")
		end
    end,
})




--// Islands
local Tab = Window:CreateTab("Islands")
local Section = Tab:CreateSection("--// Unlock All Islands", true)
local Paragraph = Tab:CreateParagraph({Title = "Info", Content = "Desbloqueia todas as ilhas."})

local Button = Tab:CreateButton({
   Name = "Unlock All Islands",
   Callback = function()
		for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetDescendants()) do
			if v:IsA("TouchTransmitter") then
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
			end
		end
   end,
})
