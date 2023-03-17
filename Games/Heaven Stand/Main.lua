-- var
local Player 			= 		game.Players.LocalPlayer
local TweenService 		= 		game:GetService('TweenService')
local Char 				= 		Player.Character or Player.CharacterAdded:wait()
local BossesAbility = {
	DioOverHeaven 			= 			game:GetService("Workspace").Enemies.Dio_OverHeaven,
	Denji 					=			game:GetService("Workspace").Enemies.Denji,
	JotaroKujo 				=			game:GetService("Workspace").Enemies.Jotaro_Kujo,
	Gojo 					=			game:GetService("Workspace").Enemies.Gojo,
}
local BossesHead = {
	DioOverHeaven 			=			game:GetService("Workspace").Enemies.Dio_OverHeaven.Head,
	Denji 					=			game:GetService("Workspace").Enemies.Denji.Head,
	JotaroKujo 				=			game:GetService("Workspace").Enemies.Jotaro_Kujo.Head,
	Gojo 					=			game:GetService("Workspace").Enemies.Gojo.Head,
}
local JumpCooldown 			= 			Player.Character.JumpCooldown
local function RJC()
	if JumpCooldown then
		JumpCooldown:Destroy()
	end
end


AutoFarmNormalBosses = {
	"Dio Over Heaven",
	"Denji",
	"Jotaro Kujo",
	"Gojo",
}
getgenv().AutoFarmNormal = nil
local function AutoFarmNormal()
	if getgenv().AutoFarmNormal == "Dio Over Heaven" then
		local Mob = "Dio_OverHeaven" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace").Enemies:GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
				        game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
				            CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
				    end
				end
				pcall(
					function ()
						game:GetService("ReplicatedStorage").Events.InputControl:FireServer("LMB")
					end
				)
			until 1+1==2
		end)

	
	elseif getgenv().AutoFarmNormal == "Denji" then
		local Mob = "Denji" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace").Enemies:GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
				        game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
				            CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
				    end
				end
				pcall(
					function ()
						game:GetService("ReplicatedStorage").Events.InputControl:FireServer("LMB")
					end
				)
			until 1+1==2
		end)

	elseif getgenv().AutoFarmNormal == "Jotaro Kujo" then
		local Mob = "Jotaro_Kujo" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace").Enemies:GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
				        game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
				            CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
				    end
				end
				pcall(
					function ()
						game:GetService("ReplicatedStorage").Events.InputControl:FireServer("LMB")
					end
				)
			until 1+1==2
		end)


	elseif getgenv().AutoFarmNormal == "Gojo" then
		local Mob = "Gojo" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace").Enemies:GetChildren()
				for i = 1, #Enemies do
				    local v = Enemies[i]
				    if
				        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
				            v:FindFirstChildOfClass("Humanoid").Health > 0
				     then
				        game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
				            CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
				    end
				end
				pcall(
					function ()
						game:GetService("ReplicatedStorage").Events.InputControl:FireServer("LMB")
					end
				)
			until 1+1==2
		end)
	end
end


getgenv().IntaKillBoss = nil
BossOptions = {
	"Dio Over Heaven",
	"Denji",
	"Jotaro Kujo",
	"Gojo",
}
local function FeKill()
	Player.Character.Humanoid.Health = 0
end
local function StartFarmBoss()
	if getgenv().IntaKillBoss == "Dio Over Heaven" then
					local Mob = "Dio_OverHeaven"
   					Enemies = game:GetService("Workspace").Enemies:GetChildren()
   					for i = 1, #Enemies do
   					    local v = Enemies[i]
   					    if
   					        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
   					            v:FindFirstChildOfClass("Humanoid").Health > 0
   					     then
   					        game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
   					            CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
   					    end
   					end
					pcall(
						function ()
							game:GetService("ReplicatedStorage").Events.InputControl:FireServer("LMB")
						end
					)
					wait(2)
					BossesHead.DioOverHeaven:Destroy()


	elseif getgenv().IntaKillBoss == "Jotaro Kujo" then
					local Mob = "Jotaro_Kujo"
   					Enemies = game:GetService("Workspace").Enemies:GetChildren()
   					for i = 1, #Enemies do
   					    local v = Enemies[i]
   					    if
   					        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
   					            v:FindFirstChildOfClass("Humanoid").Health > 0
   					     then
   					        game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
   					            CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
   					    end
   					end
					pcall(
						function ()
							game:GetService("ReplicatedStorage").Events.InputControl:FireServer("LMB")
						end
					)
					wait(2)
					BossesHead.JotaroKujo:Destroy()


	elseif getgenv().IntaKillBoss == "Denji" then
					local Mob = "Denji"
   					Enemies = game:GetService("Workspace").Enemies:GetChildren()
   					for i = 1, #Enemies do
   					    local v = Enemies[i]
   					    if
   					        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
   					            v:FindFirstChildOfClass("Humanoid").Health > 0
   					     then
   					        game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
   					            CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
   					    end
   					end
					pcall(
						function ()
							game:GetService("ReplicatedStorage").Events.InputControl:FireServer("LMB")
						end
					)
					wait(2)
					BossesHead.Denji:Destroy()


	elseif getgenv().IntaKillBoss == "Gojo" then

					local Mob = "Gojo"
   					Enemies = game:GetService("Workspace").Enemies:GetChildren()
   					for i = 1, #Enemies do
   					    local v = Enemies[i]
   					    if
   					        v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
   					            v:FindFirstChildOfClass("Humanoid").Health > 0
   					     then
   					        game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
   					            CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
   					    end
   					end
					pcall(
						function ()
							game:GetService("ReplicatedStorage").Events.InputControl:FireServer("LMB")
						end
					)
					wait(2)
					BossesHead.Gojo:Destroy()

	end
end
local Settings




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
Sei la so aproveita mesmo kk
]]})




--// Tabs: Insta Kill 
local Tab = Window:CreateTab("Farming")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
Insta Kill Bosses so isso mesmo.
Cuidado n pode te ninguem atacando o Boss se n buga.
]]})

local Section = Tab:CreateSection("--// Insta Kill Bosses", true)
local Dropdown = Tab:CreateDropdown({
   Name = "Select Boss:",
   Options = BossOptions,
   CurrentOption = "",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
		getgenv().IntaKillBoss = Option
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Start InstaKill",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait() and Settings do
				StartFarmBoss()
			end
		end
   end,
})


local Section = Tab:CreateSection("--// Normal Auto Farm", true)
local Dropdown = Tab:CreateDropdown({
   Name = "Select Boss:",
   Options = BossOptions,
   CurrentOption = "",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
		getgenv().AutoFarmNormal = Option
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Start AutoFarm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait() and Settings do
				AutoFarmNormal()
			end
		end
   end,
})
