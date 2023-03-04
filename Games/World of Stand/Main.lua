--// Print
print[[
	:

	--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>
	|															  |
	|	Infinity Hub |  InfHub Worlds Of Stans Update:  1.0.2 	  |
	|	Infinity Hub |  Have Fun.								  |
	|															  |
	--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>

]]




--// not libray
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

--// Rayfiel Libray
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Librays/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
   Name = "Wos Farmming Test",
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


local Player 			= 		game.Players.LocalPlayer
local TweenService 		= 		game:GetService('TweenService')
local Player 			= 		game.Players.LocalPlayer
local Char 				= 		Player.Character or Player.CharacterAdded:wait()


--// Function
local FarmOption = {
	"Auto Farm lvl",
	"Auto Farm Chest",
	"Stand Farm",
}

getgenv().NotificationOption = nil
local function FeKill()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end
local function NotOp()
	if getgenv().NotificationOption == "Auto Farm lvl" then
		Notification.new("info", "Auto Farm lvl", "Auto Farm lvl soon..")

	elseif getgenv().NotificationOption == "Auto Farm Chest" then
		Notification.new("success", "Auto Farm Chest", "Farm Chest selected")
		
	elseif getgenv().NotificationOption == "Stand Farm" then
		Notification.new("info", "Stand Farm", "Stand Farm Soon..")
	end
end
--------------------------------------------------------

getgenv().AutoFarm = nil
local function AutoChes()
	if getgenv().AutoFarm == "Auto Farm Chest" then
		FeKill()
		Notification.new("info", "Returning to spawn", "Player reseted.")
		 wait(8)
		Notification.new("success", "Auto Farm Chest", "Stanting Auto Chest")
		 wait(1)
		Notification.new("warning", "Warning! ", "Dont Move and desactive your stand.")
		 wait(.2)
		loadstring(
			game:HttpGet"https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Games/World%20of%20Stand/AutoChest.lua"
		)()
	end
end
local function FeKillAutoChest()
	if getgenv().AutoFarm == "Auto Farm Chest" then
		Notification.new("success", "Kill", "player killed for desactive AutoFarm.")
		 wait(.1)
		game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
	end
end


--[[ Auto Farm Level;

local function AutoClicker()
	local cps = 0.5 -- Clicks per second here
    mouse1click()    
	wait(1/cps)
end
local function KillThugs()
    pcall(function()
        for i,v in pairs(game.Workspace:GetChildren()) do --enemy location
            if v:IsA("Model") and v.Name == "Thug" then --remove this if you want farm all mobs 
                if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                    repeat
                        wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,5,0) * CFrame.Angles(math.rad(-30),0,0) --distance and angles
                    until v.Humanoid.Health <= 0 or getgenv().autofarm == false
                end
            end
        end
    end)
	AutoClicker()
end
local function AutoPunch()
	getgenv().Settings = {
	    ["Auto Click Keybind"] = "V", -- Use an UpperCase letter or KeyCode Enum. Ex: Enum.KeyCode.Semicolon
	    ["Lock Mouse Position Keybind"] = "B",
	    ["Right Click"] = false,
	    ["GUI"] = false, -- A drawing gui that tells you what is going on with the autoclicker.
	    ["Delay"] = 0 -- 0 for RenderStepped, other numbers go to regular wait timings.
	}
	loadstring(game:HttpGet("https://raw.githubusercontent.com/BimbusCoder/Script/main/Auto%20Clicker.lua"))()
end
local Level = game:GetService("Players").LocalPlayer.Level

local Position1 	= 	  	Vector3.new(488.87, 10.814, 201.354)
local t1 	  		= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position1)}  )
local Position2 	= 	  	Vector3.new(306.019, 10.2, 226.434)
local t2 	  		= 		TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(4), {CFrame = CFrame.new(Position2)}  )


local function AutoFarmLevel()
	if getgenv().AutoFarm == "Auto Farm lvl" then
		task.spawn(function ()
			if Level.Value <= 5 then
				t1:Play()
				wait(6)
				local KeyPress = function(v)
				   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
				end
				KeyPress("E")
				wait(1)
				AutoClicker()
				wait(8)
				t2:Play()
				wait(2)
				KillThugs()
				AutoPunch()
				wait(20)
			end
		end)
	end
end
local function AutoFarmLvl()
	if getgenv().AutoFarm == "Auto Farm lvl" then
		Notification.new("info", "Auto Farm Level", "Auto Farm Level in coming soon...")
	end
end

--]]




--// Variables
local Settings 
local plr = game:GetService("Players").LocalPlayer
local Char = plr.Character
local Hum = Char.Humanoid
local Speed = Hum.WalkSpeed
local Jump = Hum.JumpPower
local Health = Hum.Health




--// Tabs: Info 
local Tab = Window:CreateTab("Info")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
	Lembrando que esta Gui ainda esta em Beta.
	Então qualquer erro será corrigido em breve.
	Auto Farm Level esta sendo desenvolvido, junto com o Auto Farm Stands.


	Atenciosamente Infinity Hub Support 😄
]]})



--// Tabs: Farming 
local Tab = Window:CreateTab("LocalPlayer")

local Section = Tab:CreateSection("--// Local Player Scripts patched for AntiCheat :<", true)
local Toggle = Tab:CreateToggle({
   Name = "Loop Kill Player",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				FeKill()
			end
		else
			print(Settings)
		end
   end,
})





local Tab = Window:CreateTab("Farming")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
	Opções que estão funcionando:

	[=] - Auto Farm Chest: 		✅
	[=] - Auto Farm Level: 		Soon.. 😴
	[=] - Stands Farm:			Soon.. 😴
	
	Infinity Hub.
]]})

local Dropdown = Tab:CreateDropdown({
   Name = "Select Option Farm",
   Options = FarmOption,
   CurrentOption = "",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
		getgenv().NotificationOption = Option
		getgenv().AutoFarm = Option
		NotOp()
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Start AutoFarm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			AutoChes()
		else
			FeKillAutoChest()
		end
   end,
})
