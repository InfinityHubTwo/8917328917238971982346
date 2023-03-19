--// Librays
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Librays/Rayfield/Main.lua'))()



--// Var
local plr = game.Players.LocalPlayer
local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
local Bosses = {
	Coldjason  				=				game:GetService("Workspace").Coldjason,
	Juubito					=				game:GetService("Workspace").Juubito,
	Kaguyai					=				game:GetService("Workspace").Kaguyai,
	Mizouki					=				game:GetService("Workspace").Mizouki,
	Nadara					=				game:GetService("Workspace").Nadara,
	Oroshimaro				=				game:GetService("Workspace").Oroshimaro,
	Pain 					=				game:GetService("Workspace").Pain,
--  TenthBeast 				=				game:GetService("Workspace")["Tenth Beast"].BossAbility
}
getgenv().InstaKillBosses = nil
BossesInstaKill = {
	"Coldjason",
	"Juubito",
	"Kaguyai",
	"Mizouki",
	"Nadara",
	"Oroshimaro",
	"Pain",
}
local function InstaKillBosses()
	if getgenv().InstaKillBosses == "Coldjason" then

		local Mob = "Coldjason" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
				        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Coldjason.HumanoidRootPart.CFrame
				    end
				end
				pcall(
					function ()
    					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    					    if v.name == "Combat" then
    					        v.Parent = game.Players.LocalPlayer.Character
    					    end
    					end
						game:GetService("Players").LocalPlayer.Character.Combat.Attack:FireServer()
						wait(1.5)
						game:GetService("Workspace").Coldjason.Head:Destroy()
					end
				)
			until 1+1==2
		end)


	elseif getgenv().InstaKillBosses == "Juubito" then
		local Mob = "Juubito" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Juubito.HumanoidRootPart.CFrame
				    end
				end
				pcall(
					function ()
    					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    					    if v.name == "Combat" then
    					        v.Parent = game.Players.LocalPlayer.Character
    					    end
    					end
						game:GetService("Players").LocalPlayer.Character.Combat.Attack:FireServer()
						wait(1.5)
						game:GetService("Workspace").Juubito.Head:Destroy()
					end
				)
			until 1+1==2
		end)


	elseif getgenv().InstaKillBosses == "Kaguyai" then
		local Mob = "Kaguyai" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Kaguyai.HumanoidRootPart.CFrame
				    end
				end
				pcall(
					function ()
    					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    					    if v.name == "Combat" then
    					        v.Parent = game.Players.LocalPlayer.Character
    					    end
    					end
						game:GetService("Players").LocalPlayer.Character.Combat.Attack:FireServer()
						wait(1.5)
						game:GetService("Workspace").Kaguyai.Head:Destroy()
					end
				)
			until 1+1==2
		end)


	elseif getgenv().InstaKillBosses == "Mizouki" then
		local Mob = "Mizouki" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Mizouki.HumanoidRootPart.CFrame
				    end
				end
				pcall(
					function ()
    					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    					    if v.name == "Combat" then
    					        v.Parent = game.Players.LocalPlayer.Character
    					    end
    					end
						game:GetService("Players").LocalPlayer.Character.Combat.Attack:FireServer()
						wait(1.5)
						game:GetService("Workspace").Mizouki.Head:Destroy()
					end
				)
			until 1+1==2
		end)


	elseif getgenv().InstaKillBosses == "Nadara" then
		local Mob = "Nadara" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Nadara.HumanoidRootPart.CFrame
				    end
				end
				pcall(
					function ()
    					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    					    if v.name == "Combat" then
    					        v.Parent = game.Players.LocalPlayer.Character
    					    end
    					end
						game:GetService("Players").LocalPlayer.Character.Combat.Attack:FireServer()
						wait(1.5)
						game:GetService("Workspace").Nadara.Head:Destroy()
					end
				)
			until 1+1==2
		end)


	elseif getgenv().InstaKillBosses == "Oroshimaro" then
		local Mob = "Oroshimaro" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Oroshimaro.HumanoidRootPart.CFrame
				    end
				end
				pcall(
					function ()
    					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    					    if v.name == "Combat" then
    					        v.Parent = game.Players.LocalPlayer.Character
    					    end
    					end
						game:GetService("Players").LocalPlayer.Character.Combat.Attack:FireServer()
						wait(1.5)
						game:GetService("Workspace").Oroshimaro.Head:Destroy()
					end
				)
			until 1+1==2
		end)


	elseif getgenv().InstaKillBosses == "Pain" then
		local Mob = "Pain" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Pain.HumanoidRootPart.CFrame
				    end
				end
				pcall(
					function ()
    					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    					    if v.name == "Combat" then
    					        v.Parent = game.Players.LocalPlayer.Character
    					    end
    					end
						game:GetService("Players").LocalPlayer.Character.Combat.Attack:FireServer()
						wait(1.5)
						game:GetService("Workspace").Pain.Head:Destroy()
					end
				)
			until 1+1==2
		end)
	end
end

getgenv().NormalBossesFarmG = nil
NormalBossesFarm = {
	"Tenth Beast",
	"Jigan		-- 1 and 2",
	"Sound Ninja",
}
local function NormalFarm()
	if getgenv().NormalBossesFarmG == "Tenth Beast" then
		local Mob = "Tenth Beast"
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Tenth Beast"].HumanoidRootPart.CFrame
				    end
				end
			until 1+1==2
		end)

	
	elseif getgenv().NormalBossesFarmG == "Jigan" then
		local Mob = "Jigan" -- Fase 1
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Jigan.HumanoidRootPart.CFrame
				    end
				end
			until 1+1==2
		end)
		local Mob2 = "Nisshiki Otsutsushi" -- Fase 2
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob2 and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Nisshiki Otsutsushi"].HumanoidRootPart.CFrame
				    end
				end
			until 1+1==2
		end)


	elseif getgenv().NormalBossesFarmG == "Sound Ninja" then
		local Mob = "Sound Ninja"
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace"):GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Sound Ninja"].HumanoidRootPart.CFrame
				    end
				end
				pcall(
					function ()
    					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    					    if v.name == "Combat" then
    					        v.Parent = game.Players.LocalPlayer.Character
    					    end
    					end
						plr.Character.Combat.Attack:FireServer()

						if game:GetService("Workspace").CashScroll then
							plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CashScroll.CFrame
							KeyPress("F")
						end
						if game:GetService("Workspace").EScroll then
							plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").EScroll.CFrame
							KeyPress("F")
						end
					end
				)
			until 1+1==2
		end)
	end
end

getgenv().AutoClickTycoon = nil
Tycoons = {
	"Akatsuke",
	"Hotate Clan",
	"Hyago Clan",
	"Kazeka Clan",
	"Otsutsushi Clan",
	"Sarukobi Clan",
	"Sonju Clan",
	"Uchika Clan",
	"Uzumonki Clan",
}
local function AutoMineClicker()
	if getgenv().AutoClickTycoon == "Akatsuke" then
		for i,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons.Akatsuke.PurchasedObjects.Mine.Clicker:GetDescendants()) do
			if v.ClassName == "ProximityPrompt" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons.Akatsuke.PurchasedObjects.Mine.Clicker.CFrame
				fireproximityprompt(v,0)
			end
		end


	elseif getgenv().AutoClickTycoon == "Hotate Clan" then
		for i,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Hotate Clan"].PurchasedObjects.Mine.Clicker:GetDescendants()) do
			if v.ClassName == "ProximityPrompt" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Hotate Clan"].PurchasedObjects.Mine.Clicker.CFrame
				fireproximityprompt(v,0)
			end
		end

		
	elseif getgenv().AutoClickTycoon == "Hyago Clan" then
		for i,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Hyago Clan"].PurchasedObjects.Mine.Clicker:GetDescendants()) do
			if v.ClassName == "ProximityPrompt" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Hyago Clan"].PurchasedObjects.Mine.Clicker.CFrame
				fireproximityprompt(v,0)
			end
		end


	elseif getgenv().AutoClickTycoon == "Kazeka Clan" then
		for i,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Kazeka Clan"].PurchasedObjects.Mine.Clicker:GetDescendants()) do
			if v.ClassName == "ProximityPrompt" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Kazeka Clan"].PurchasedObjects.Mine.Clicker.CFrame
				fireproximityprompt(v,0)
			end
		end


	elseif getgenv().AutoClickTycoon == "Otsutsushi Clan" then
		for i,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Otsutsushi Clan"].PurchasedObjects.Mine.Clicker:GetDescendants()) do
			if v.ClassName == "ProximityPrompt" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Otsutsushi Clan"].PurchasedObjects.Mine.Clicker.CFrame
				fireproximityprompt(v,0)
			end
		end


	elseif getgenv().AutoClickTycoon == "Sarukobi Clan" then
		for i,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Sarukobi Clan"].PurchasedObjects.Mine.Clicker:GetDescendants()) do
			if v.ClassName == "ProximityPrompt" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Sarukobi Clan"].PurchasedObjects.Mine.Clicker.CFrame
				fireproximityprompt(v,0)
			end
		end


	elseif getgenv().AutoClickTycoon == "Sonju Clan" then
		for i,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Sonju Clan"].PurchasedObjects.Mine.Clicker:GetDescendants()) do
			if v.ClassName == "ProximityPrompt" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Sonju Clan"].PurchasedObjects.Mine.Clicker.CFrame
				fireproximityprompt(v,0)
			end
		end


	elseif getgenv().AutoClickTycoon == "Uchika Clan" then
		for i,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Uchika Clan"].PurchasedObjects.Mine.Clicker:GetDescendants()) do
			if v.ClassName == "ProximityPrompt" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Uchika Clan"].PurchasedObjects.Mine.Clicker.CFrame
				fireproximityprompt(v,0)
			end
		end


	elseif getgenv().AutoClickTycoon == "Uzumonki Clan" then
		for i,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Uzumonki Clan"].PurchasedObjects.Mine.Clicker:GetDescendants()) do
			if v.ClassName == "ProximityPrompt" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons["Uzumonki Clan"].PurchasedObjects.Mine.Clicker.CFrame
				fireproximityprompt(v,0)
			end
		end

	end
end






---// Windown
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




--// Tabs: Welcome
local Tab = Window:CreateTab("Welcome", 12827783428)
local Paragraph = Tab:CreateParagraph({Title = "Bem Vindo", Content = [[
Bem vindo ao Infinity Hub.
Espero que goste e Aproveite :>

Tome cuidado tambem ao usar as opções, Obrigado :>
]]})


--// Tabs: Farming
local Tab = Window:CreateTab("Farming", 7743866529)
local Paragraph = Tab:CreateParagraph({Title = "Bem Vindo", Content = [[
Aqui tem o InstaKill e o Normal.
Obs: O InstaKillMob não funciona na jubi, infelizmente :<
]]})


local Section = Tab:CreateSection("--// Options: Insta Kill ", true)
local Dropdown = Tab:CreateDropdown({
   Name = "Select Mob: ",
   Options = BossesInstaKill,
   CurrentOption = "Option 1",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
		getgenv().InstaKillBosses = Option
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "InstaKill Boss",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait() and Settings do
				InstaKillBosses()
			end
		end
   end,
})

local Section = Tab:CreateSection("--// Options: Normal Farm Mob ", true)
local Paragraph = Tab:CreateParagraph({Title = "Bem Vindo", Content = [[
Uma recomendação, se for a jubi compre o: Ice Death Senbons
E se for o jogan compre o: Frang Driller
]]})
local Dropdown = Tab:CreateDropdown({
   Name = "Select Mob: ",
   Options = NormalBossesFarm,
   CurrentOption = "Option 1",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
		getgenv().NormalBossesFarmG = Option
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "AutoFarm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait() and Settings do
				NormalFarm()
			end
		end
   end,
})

local Section = Tab:CreateSection("--// Options: Auto Mine Click ", true)
local Dropdown = Tab:CreateDropdown({
   Name = "Select Tycoon: ",
   Options = Tycoons,
   CurrentOption = "Option 1",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
		getgenv().AutoClickTycoon = Option
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Start",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait() and Settings do
				AutoMineClicker()
			end
		end
   end,
})



--// Tabs: Farming
local Tab = Window:CreateTab("Settings", 7734053495)
local Paragraph = Tab:CreateParagraph({Title = "Settings", Content = [[
Em Breve 💤
]]})
