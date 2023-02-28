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

local function starting()
    local okL = {
        "getServerTimeRemote",
    }
    
    local Events = {
        Fire = true, 
        Invoke = true, 
        FireServer = true, 
        InvokeServer = true,
        OnClientEvent = true,
    }
    
    local gameMeta = getrawmetatable(game)
    local psuedoEnv = {
        ["__index"] = gameMeta.__index,
        ["__namecall"] = gameMeta.__namecall;
    }
    setreadonly(gameMeta, false)
    gameMeta.__index, gameMeta.__namecall = newcclosure(function(self, index, ...)
        if Events[index] then
            if table.find(okL, self.Name) and not checkcaller() and getnilinstances() then
                return nil
            end
        end
        return psuedoEnv.__index(self, index, ...)
    end)
    setreadonly(gameMeta, true)
    rconsoleinfo("Starting dupe ...")
end
local function throwaccept()
    local args = {
        [1] = "acceptTrade"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args))   
                 
end  
local function throwrejoin()
    local ts = game:GetService("TeleportService")

   local p = game:GetService("Players").LocalPlayer

   ts:Teleport(game.PlaceId, p)
end
local function throwdupe()
    game:GetService("Players").LocalPlayer:Kick("Duped")
end

getgenv().SelectOption = nil
local Crystals = {
	"Astral Crystal",
	"Blue Crystal",
	"Enchanted Crystal",
	"Eternal Crystal",
	"Frozen Crystal",
	"Galaxy Crystal",
	"Golden Crystal",
	"Inferno Crystal",
	"Infinity Void Crystal",
	"Purple Crystal",
	"Secret Blades Crystal",
	"Storm Crystal",
	"Thunder Crystal",
	"Ultra Shockwave Crystal",
}
local function OpenCrystal()
	if getgenv().SelectOption == "Astral Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Astral Crystal")

	elseif getgenv().SelectOption == "Blue Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Blue Crystal")

	elseif getgenv().SelectOption == "Enchanted Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Enchanted Crystal")

	elseif getgenv().SelectOption == "Eternal Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Eternal Crystal")

	elseif getgenv().SelectOption == "Frozen Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Frozen Crystal")

	elseif getgenv().SelectOption == "Galaxy Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Galaxy Crystal")

	elseif getgenv().SelectOption == "Golden Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Golden Crystal")

	elseif getgenv().SelectOption == "Inferno Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Inferno Crystal")

	elseif getgenv().SelectOption == "Infinity Void Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Infinity Void Crystal")

	elseif getgenv().SelectOption == "Purple Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Purple Crystal")

	elseif getgenv().SelectOption == "Secret Blades Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Secret Blades Crystal")

	elseif getgenv().SelectOption == "Storm Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Storm Crystal")

	elseif getgenv().SelectOption == "Thunder Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Thunder Crystal")

	elseif getgenv().SelectOption == "Ultra Shockwave Crystal" then
			game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Ultra Shockwave Crystal")
	end
end


local Bosses = {
	"RobotBoss",
	"EternalBoss",
	"AncientMagmaBoss",
}
local function AutoBosses()
	if getgenv().SelectOption == "RobotBoss" then
		
	end
end
local function AutoHoops()
	local ohString1 = "useHoop"
	local ohInstance2 = workspace.Hoops.Hoop
	game:GetService("ReplicatedStorage").rEvents.hoopEvent:FireServer(ohString1, ohInstance2)
end

--<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>--

--//  AFK FARM FUNCTIONS
local TweenService 		= 		game:GetService('TweenService')
local Player 			= 		game.Players.LocalPlayer
local Char 				= 		Player.Character or Player.CharacterAdded:wait()
local Position1 	= 	  Vector3.new(1855.973, 38.706, -6790.186)
local Position2 	= 	  Vector3.new(98.164, 91245.539, 123.954)
local t1 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Position1)}  )
local t2 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Position2)}  )
--// Function
local function AutoFarm()
	t1:Play()
	wait(3)
	task.spawn( function()
		repeat task.wait()
			game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
		until 1+1==2
	end)

	wait(20)
	t2:Play()
end

--<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>--



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


local Section = Tab:CreateSection("--// Auto Crystal", true)
local Dropdown = Tab:CreateDropdown({
   Name = "Select Cystal",
   Options = Crystals,
   CurrentOption = "Option 1",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
		getgenv().SelectOption = Option
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Crystal (No Animation)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				OpenCrystal()
			end
		end
   end,
})


local Section = Tab:CreateSection("--// Auto Boss", true)
local Dropdown = Tab:CreateDropdown({
   Name = "Select Boss",
   Options = Bosses,
   CurrentOption = "Option 1",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
		getgenv().SelectOption = Option
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Boss (Soon..)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				print("Soon")
			end
		end
   end,
})


local Section = Tab:CreateSection("--// Auto Hoops", true)
local Toggle = Tab:CreateToggle({
    Name = "Auto Hoops",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
		Settings = State
		while wait(.1) and Settings do
			AutoHoops()
		end
    end,
})


local Section = Tab:CreateSection("--// Afk Farm", true)
local Paragraph = Tab:CreateParagraph({Title = "Info", Content = 'Requer rank "Mestres dos elementos+", lembrando que pode lagar um pouco recomendo que desative as particulas. Se n estiver gostando use um AutoCliker'})

local Toggle = Tab:CreateToggle({
   Name = "Afk Farm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait(4) and Settings do
				AutoFarm()
			end
		end
   end,
})




--// Islands
local Tab = Window:CreateTab("Islands")
local Section = Tab:CreateSection("--// Unlock All Islands", true)
local Paragraph = Tab:CreateParagraph({Title = "Info", Content = "Desbloqueia todas as ilhas."})

local Toggle = Tab:CreateToggle({
    Name = "Unlock All Islands",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
		Settings = State
		if Settings then
			while wait(1) and Settings do
				for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetDescendants()) do
					if v:IsA("TouchTransmitter") then
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
					end
				end
			end
		end
    end,
})




--// Dupe
local Tab = Window:CreateTab("Dupe")
local Section = Tab:CreateSection("--// Dupe Pets", true)
local Paragraph = Tab:CreateParagraph({Title = "Info", Content = "A pessoa na qual você dará os pets tem que aceita primeiro, depois aperte na opção Dupe e os pets serão duplicados."})

local Toggle = Tab:CreateToggle({
    Name = "Dupe",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				starting()
            	throwaccept()
            	wait(0.2)
            	throwrejoin()
            	throwdupe()
			end
		end
    end,
})
