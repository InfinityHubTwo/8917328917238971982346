--// Ninja Legend


print[[
	:
	
	--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--

	- Infinity Hub |  Loaded InfHub Ninja Legends
	- Infinity Hub |  Have Fun

	--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>-- 
]]



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

--<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>--

--// Collect all chest
local function FeKill()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end


local TweenService 		= 		game:GetService('TweenService')
local Player 			= 		game.Players.LocalPlayer
local Char 				= 		Player.Character or Player.CharacterAdded:wait()
local Chest1 			= 	  	Vector3.new(36.509, 28262.557, 52.999)
local Chest2 			= 	  	Vector3.new(429.406, 74564.469, -51.228)
local Chest3 			= 	  	Vector3.new(46.385, 772.894, -180.719)
local Chest4 			= 	  	Vector3.new(34.042, 13686.296, 61.769)
local Chest5 			= 	  	Vector3.new(-133.609, 39439.184, 168.25)
local Chest6 			= 	  	Vector3.new(523.742, 149.138, 367.945)
local Chest7 			= 	  	Vector3.new(424.7, 52729.375, -51.62)
local Chest8 			= 	  	Vector3.new(-63.143, 9.894, 191.883)
local Chest9 			= 	  	Vector3.new(11.232, 9298.025, 42.026)
local Chest10 			= 	  	Vector3.new(425.248, 39439.184, -47.775)
local Chest11 			= 	  	Vector3.new(207.716, 4054.094, 60.408)
local Chest12 			= 	  	Vector3.new(-46.072, 33363.348, -183.772)
local Chest13 			= 	  	Vector3.new(34.239, 5663.447, 54.605)
local Chest14 			= 	  	Vector3.new(34.191, 17692.592, 53.851)
local Chest15 			= 	  	Vector3.new(425.721, 70392.781, -51.555)
local Chest16 			= 	  	Vector3.new(428.273, 79868.602, -50.783)
local Chest17 			= 	  	Vector3.new(33.76, 24076.285, 54.364)
local Chest18 			= 	  	Vector3.new(429.553, 46132.172, -50.634)


local t1 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest1)}  )
local t2 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest2)}  )
local t3 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest3)}  )
local t4 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest4)}  )
local t5 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest5)}  )
local t6 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest6)}  )
local t7 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest7)}  )
local t8 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest8)}  )
local t9 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest9)}  )
local t10 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest10)}  )
local t11 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest11)}  )
local t12 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest12)}  )
local t13 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest13)}  )
local t14 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest14)}  )
local t15 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest15)}  )
local t16 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest16)}  )
local t17 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest17)}  )
local t18 	  			= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Chest18)}  )


local function CollectAllChest()
		t1:Play()
	wait(3)
		t2:Play()
	wait(3)
		t3:Play()
	wait(3)
		t4:Play()
	wait(3)
		t5:Play()
	wait(3)
		t6:Play()
	wait(3)
		t7:Play()
	wait(3)
		t8:Play()
	wait(3)
		t9:Play()
	wait(3)
		t10:Play()
	wait(3)
		t11:Play()
	wait(3)
		t12:Play()
	wait(3)
		t13:Play()
	wait(3)
		t14:Play()
	wait(3)
		t15:Play()
	wait(3)
		t16:Play()
	wait(3)
		t17:Play()
	wait(3)
		t18:Play()
	wait(3)
end


--<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>--





--<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>--
--[[ Auto Boss

--// Auto Bosses \\--
local AncienteMagmaBoss 	= 		game:GetService("Workspace").bossFolder.AncientMagmaBoss
local EternalBoss 			= 		game:GetService("Workspace").bossFolder.EternalBoss
local RobotBoss 			=		game:GetService("Workspace").bossFolder.RobotBoss


local TweenService 			= 		game:GetService('TweenService')
local Player 				= 		game.Players.LocalPlayer
local Char 					= 		Player.Character or Player.CharacterAdded:wait()
local Position1 			= 	  	Vector3.new(AncienteMagmaBoss.UpperTorso.Position)
local Position2 			= 	  	Vector3.new(EternalBoss.UpperTorso.position)
local Position3				=		Vector3.new(RobotBoss.UpperTorso.position)
local t1 	  				= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Position1)}  )
local t2 	  				= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Position2)}  )
local t3					= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(Position3)}  )


if AncienteMagmaBoss then
local function AncienteMagmaBoss()
	t1:Play()
end
end

if EternalBoss then
local function EternalBoss()
	t2:Play()
end
end

if RobotBoss then
local function RobotBoss()
	t3:Play()
end
end

local Bosses = {
	"RobotBoss",
	"EternalBoss",
	"AncientMagmaBoss",
}
local function AutoBosses()
	if getgenv().SelectOption == "RobotBoss" then
		AncienteMagmaBoss()
		
	elseif getgenv().SelectOption == "EternalBoss" then
		EternalBoss()
		
	elseif getgenv().SelectOption == "AncientMagmaBoss" then
		AncienteMagmaBoss()
	end
end
--]]

--<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>----<>--


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




--// Tabs: Info 
local Tab = Window:CreateTab("Chests")
local Section = Tab:CreateSection("--// Collect All Chest", true)
local Paragraph = Tab:CreateParagraph({Title = "Info", Content = "Coleta os baús automaticamente."})

local Toggle = Tab:CreateToggle({
    Name = "Collect All Chest",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
		Settings = State
		if Settings then
			CollectAllChest()
		else
			FeKill()
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
