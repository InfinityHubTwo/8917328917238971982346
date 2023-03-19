--// Auto Boss Pc






--// Notification Libray
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()



--// Prints
print("Infinity Hub Loaded")
print("Heve fun")




-- Important Variables
local Players           =  game:GetService("Players")
local LocalPlayer       =  Players.LocalPlayer
local Character         =  LocalPlayer.Character
local HumanoidRootPart  =  Character.HumanoidRootPart
local Humanoid          =  Character.Humanoid
local Settings 




--// Rayfiel Libray
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Librays/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
   Name = "Infinity Hub  |  @Darkzin, @Cool",
   LoadingTitle = "Infinity Hub",
   LoadingSubtitle = "by darkzin and cool",
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
      Key = "qy&nBDu=mWJkrJ9D4T7!=i&=7mBQ62"
   }
})




--// Auto Boss Main
local Tab = Window:CreateTab("Auto Boss", 12828636851)
local Paragraph = Tab:CreateParagraph({Title = "Welcome to auto boss", Content = "O auto boss foi iniciado, cuidado ao executar algumas opções e ações pois pode acabar levando kick. Aproveite"})

local Section = Tab:CreateSection("-<    Auto    >-")
local Button = Tab:CreateButton({
   Name = "Auto Boss",
   Info = "Star Auto Boss", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
  	    getgenv().WaitTime = 240 -- amount time you want added to your run in seconds
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/sunexn/standsawakening/main/uncanny.lua",true))()
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Op Auto Farm    - Kick Risk",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			-- Sword Size
			if LocalPlayer.Backpack:FindFirstChild("KnightsSword") then
			    LocalPlayer.Backpack["KnightsSword"].Parent = Character
			    if Character:FindFirstChild("KnightsSword") then
			        local Sword            =  Character:FindFirstChild("KnightsSword")
			        local Box              =  Instance.new("SelectionBox")
			        Box.Name               =  "SelectionBoxCreated"
			        Box.Parent             =  Sword.Handle
			        Box.Adornee            =  Sword.Handle
			        Sword.Handle.Massless  =  true
			        Sword.GripPos          =  Vector3.new(0,0,0)
			        Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
			        LocalPlayer.Backpack["KnightsSword"].Parent = Character
			        Character.KnightsSword.Handle.Size = Vector3.new(20, 20, 500)
			    end
			elseif Character:FindFirstChild("KnightsSword") then
			    local Sword            =  Character:FindFirstChild("KnightsSword")
			    local Box              =  Instance.new("SelectionBox")
			    Box.Name               =  "SelectionBoxCreated"
			    Box.Parent             =  Sword.Handle
			    Box.Adornee            =  Sword.Handle
			    Sword.Handle.Massless  =  true
			    Sword.GripPos          =  Vector3.new(0,0,0)
			    Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
			    LocalPlayer.Backpack["KnightsSword"].Parent = Character
			    Character.KnightsSword.Handle.Size = Vector3.new(20, 20, 500)
			end
			wait(1.2)
			-- Sword No Cooldown
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyouranya/free/main/Anya%20Stands%20Awakening%20Helper.lua'),true))()
			wait(1.2)
			-- Attack
			while wait() do
				task.spawn(function()
				    if Character:FindFirstChild("KnightsSword") then
				        Character.KnightsSword:Activate()
				    end
				end)
			end
			wait(1.2)
			-- Mob Farm
			getgenv().Start = true
			while wait() and getgenv().Start do 
				LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").TrollPrism.Chat.CFrame 
			end
		end
   end,
})

local Section = Tab:CreateSection("-<    More Options    >-")
local Button = Tab:CreateButton({
   Name = "Disable Effect",
   Info = "Effect = false", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		while wait() do
	    	if game:GetService("Workspace"):FindFirstChild("Effects") then
        		game:GetService("Workspace"):FindFirstChild("Effects"):Destroy()
	    	end
	    	if game:GetService("Workspace").Map:FindFirstChild("ThunderParts") then
   	    		game:GetService("Workspace").Map:FindFirstChild("ThunderParts"):Destroy()
	    	end
		end
   end,
})
local Button = Tab:CreateButton({
   Name = "Sword no cooldown",
   Info = "Disable cooldown in sword", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyouranya/free/main/Anya%20Stands%20Awakening%20Helper.lua'),true))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Complete Parkour",
   Info = "Click to complete parkour", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(20.4561386, 113.245972, 196.61351, 0.0634383112, 5.81675401e-08, -0.99798578, 8.29346689e-08, 1, 6.35567972e-08, 0.99798578, -8.67995524e-08, 0.0634383112))
   end,
})


--// Options
local Tab = Window:CreateTab("Options")
local Section = Tab:CreateSection("-<    Options:    >-")
local Toggle = Tab:CreateToggle({
   Name = "Boss Esp",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			function CreateESPPart(BodyPart,color)
				local ESPPartparent = BodyPart
				local Box = Instance.new("BoxHandleAdornment")
				Box.Size = BodyPart.Size + Vector3.new(0.1, 0.1, 0.1)
				Box.Name = "ESPPart"
				Box.Adornee = ESPPartparent
				Box.Color3 = color
				Box.AlwaysOnTop = true
				Box.ZIndex = 5
				Box.Transparency = 0.8
				Box.Parent = BodyPart
			end

			CreateESPPart(game:GetService("Workspace").TrollPrism, Color3.fromRGB(0,255,0)) 
		else
			game:GetService("Workspace").TrollPrism.ESPPart:Destroy()
		end
   end,
})
