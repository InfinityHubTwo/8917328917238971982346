--// Stands Awakening Pc







--// Notification Libray
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()


--// Others Librarys
loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()
local notifications = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()
--[[
    notifications:message{
        Title = "Walkspeed <font color='rgb(130, 220, 120)'>Enabled</font>",
        Description = "Current walkspeed: <b>32</b>",
        Icon = 6023426926
    }
--]]



--// Variables
local plr = game:GetService("Players").LocalPlayer
local plrId = plr.UserId
local mouse = plr:GetMouse()
local CheckSpeed = plr.Character.Humanoid.WalkSpeed
local CheckJump = plr.Character.Humanoid.JumpPower
local CheckHealth = plr.Character.Humanoid.Health
local CheckStand = plr.Backpack.ClassName == "LocalScript"
local AntiTs = game:GetService("Lighting").TS
local Settings
local function PrintItem()
	print(Option, "| Item Sniperded")
end
getgenv().SelectOptions = nil
local function DoStuff()
	if getgenv().SelectOptions == "Arrow" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Arrow" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end


	elseif getgenv().SelectOptions == "Requiem Arrow" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Requiem Arrow" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end


	elseif getgenv().SelectOptions == "Rokakaka Fruit" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Rokakaka Fruit" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end


	elseif getgenv().SelectOptions == "Vampire Mask" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Vampire Mask" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end


	elseif getgenv().SelectOptions == "Frog" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Frog" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end


	elseif getgenv().SelectOptions == "Banknote" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Banknote" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "DIO's Diary" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "DIO's Diary" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Dio's Skull" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Dio's Skull" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Camera" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Camera" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Pot Platinum’s Diary" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Pot Platinum’s Diary" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Red Heart" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Red Heart" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "True Requiem Arrow" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "True Requiem Arrow" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Ornstein's Spear" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Ornstein's Spear" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Aja Mask" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Aja Mask" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end
	end
end
local items = {
	"Arrow",
	"Requiem Arrow",
	"Rokakaka Fruit", 
	"Vampire Mask",
	"Frog",
	"Banknote",
	"DIO's Diary", 
	"Dio's Skull", 
	"Camera", 
	"Pot Platinum’s Diary",
	"Red Heart",
	"True Requiem Arrow",
	"Ornstein's Spear",
	"Aja Mask",

}



--// Prints
print("------------------------------------------------------------------------")
   print("Infinity Hub Loaded")
   print("Heve fun")
   print("Credits libray: Rayfield Libray / Discord Server: Sirus")
print("------------------------------------------------------------------------")



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
      Key = "piA&dE)XkO=Hx!StzRvJBLswbs)ECP"
   }
})




--// Welcome Main
local Tab = Window:CreateTab("Welcome")
local Paragraph = Tab:CreateParagraph({Title = "Welcome Main", Content = "Welcome to Infinity Hub"})






--// Stands Main
local Tab = Window:CreateTab("Stands")
local Button = Tab:CreateButton({
   Name = "Duvidas?",
   Info = "Aperte aqui se estiver com duvidas", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        Rayfield:Notify({
	        Title = "Duvidas no stands",
	        Content = "Bem, nesta opção ao aperta em algum stand o seu time stop tera certa de 15/20 segundos",
	        Duration = 6.5,
	        Image = 7733964640,
	        Actions = { -- Notification Buttons
	        	Ignore = {
	        		Name = "Entendi!",
	        		Callback = function()
	        			print(plr, ": Entendi!")
	        		end
	        	},
	        },
        })
   end,
})
local Section = Tab:CreateSection("--<    Stands Main    >--", true)
local Button = Tab:CreateButton({
   Name = "Shadow Dio",
   Info = "Active", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      --// 20 == Max
      game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "shadowdio")
   end,
})
local Button = Tab:CreateButton({
   Name = "JSP",
   Info = "Active", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      --// 20 == Max
      game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
   end,
})
local Button = Tab:CreateButton({
   Name = "EVA 01",
   Info = "Active", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      --// 20 == Max
      game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
   end,
})
local Button = Tab:CreateButton({
   Name = "The  World Over Heaven",
   Info = "Active", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      --// 20 == Max
      game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
   end,
})
local Button = Tab:CreateButton({
   Name = "Steve",
   Info = "Active", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      --// 20 == Max
      game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
   end,
})
local Button = Tab:CreateButton({
   Name = "Herobrine",
   Info = "Active", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      --// 20 == Max
      game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
   end,
})
local Button = Tab:CreateButton({
   Name = "The World Au",
   Info = "Active", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      --// 20 == Max
      game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diego")
   end,
})
local Button = Tab:CreateButton({
   Name = "The World Ova",
   Info = "Active", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      --// 20 == Max
      game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "dioova")
   end,
})

local Section = Tab:CreateSection("--<    D4C Main    >--", true)
local Button = Tab:CreateButton({
   Name = "D4C Clones",
   Info = "Spawn 1 Clone", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
			[1] = "Alternate",
			[2] = "Clone"
		}	
	
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args)) 
   end,
})






--// Main
local Tab = Window:CreateTab("Main")
local Button = Tab:CreateButton({
   Name = "Duvidas?",
   Info = "Se estiver com duvidas aperte aqui.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      Rayfield:Notify({
         Title = "Duvidas no Main",
         Content = "Em cada uma das opções temos um indicador (EX: // Player Main), isso quer dizer que as opções que estão ali vão muda o player e assim por diante.",
         Duration = 6.5,
         Image = 7733964640,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Entendi!",
               Callback = function()
                  print(plr,": Entendi!")
               end
            },
         },
      })
      Rayfield:Notify({
         Title = "Duvidas no Main Part 2",
         Content = "muda o player e assim por diante.",
         Duration = 6.5,
         Image = 7733964640,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Entendi!",
               Callback = function()
                  print(plr,": Entendi!")
               end
            },
         },
      })
   end,
})

local Section = Tab:CreateSection("--<    Players Main    >--", true)
local Button = Tab:CreateButton({
   Name = "Auto Block",
   Info = "Player auto block", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    local args = {
			[1] = "Alternate",
			[2] = "Block"
		}

		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Loop Auto Block",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(AutoBlock)
		if AutoBlock then
			getgenv().ToggleAutoBlock = true
			while getgenv().ToggleAutoBlock do
				wait(1)
	    		local args = {
					[1] = "Alternate",
					[2] = "Block"
				}

				game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
			end
		else
			getgenv().ToggleAutoBlock = false
		end
   end,
})
local Button = Tab:CreateButton({
   Name = "Infinite Pose",
   Info = "Player infinite pose", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
			[1] = true
		}
	
		game:GetService("ReplicatedStorage").Main.Menacing:FireServer(unpack(args))
   end,
})
local Button = Tab:CreateButton({
   Name = "Death",
   Info = "Player death", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
	    	[1] = false
	    }
	
	    game:GetService("ReplicatedStorage").Main.Death:FireServer(unpack(args))
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Anti Time Stop",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait(.5) and Settings do
				if AntiTs.Value == true then
					wait(1)
					AntiTs.Value = false
				end
			end
		end
   end,
})
local Section = Tab:CreateSection("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", true)


--// GER / GE
local Section = Tab:CreateSection("--<    Goldem Expirience Requiem / Golden Expirience Main    >--", true)
local Button = Tab:CreateButton({
   Name = "Infinite Damage Reflect / Goldem Expirience Requiem",
   Info = "Infinite Damage Reflect", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
   		local ohString1 = "Alternate"
		local ohString2 = "RTZ"
		local ohBoolean3 = true

		game:GetService("ReplicatedStorage").Main.Input:FireServer(ohString1, ohString2, ohBoolean3)
   end,
})
local Button = Tab:CreateButton({
   Name = "Infinite Damage Deflect / Goldem Expirience",
   Info = "Infinite Damage Deflect", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local ohString1 = "Alternate"
		local ohString2 = "Deflect"
	
		game:GetService("ReplicatedStorage").Main.Input:FireServer(ohString1, ohString2)
   end,
})
local Section = Tab:CreateSection("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", true)


--// Shadow Dio
local Section = Tab:CreateSection("--<    Shadow Dio Main    >--", true)
local Button = Tab:CreateButton({
   Name = "Shadow Dio Infinite Kinifes",
   Info = "Use Q first", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/Shadow%20Inf%20Kinifes'))()
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Loop Shadow Dio Infinite Kinifes",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(LoopSTWK)
		if LoopSTWK then
			getgenv().ToggleLoopSTWK = true
			while getgenv().ToggleLoopSTWK do
				loadstring(game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/Shadow%20Inf%20Kinifes'))()
			end
		else
			getgenv().ToggleLoopSTWK = false
		end
   end,
})
local Button = Tab:CreateButton({
   Name = "Shadow Dio Infinite H",
   Info = "STWRTZ ", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
   		local args = {
	  		[1] = "Alternate",
	  		[2] = "STWRTZ",
	  		[3] = true
		}
	
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Loop Shadow Dio Infinite Effect",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(StwIE)
		if StwIE then
			getgenv().ToggleStwIE = true
			while getgenv().ToggleStwIE do
				wait(2)
				local ohInstance1 = workspace.Reset43354776.Stand.FakeTorso.particle.Pixelate
				local ohBoolean2 = true

				game:GetService("ReplicatedStorage").Trail:FireServer(ohInstance1, ohBoolean2)
			end
		else
			getgenv().ToggleStwIE = false
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Loop Shadow Dio Infinite Fake Stand",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(StwFS)
		if StwFS then
			getgenv().ToggleStwFS = true
			while getgenv().ToggleStwFS do
				wait(1)
				-- Head
				local args = {
				    [1] = game:GetService("Players").LocalPlayer.Character.Stand.FakeHead,
				    [2] = 0
				}
				game:GetService("ReplicatedStorage").Main.Transparency:FireServer(unpack(args))
				-- Torso
				local args = {
				    [1] = game:GetService("Players").LocalPlayer.Character.Stand.FakeTorso,
				    [2] = 0
				}
				game:GetService("ReplicatedStorage").Main.Transparency:FireServer(unpack(args))
				-- Right Arm
				local args = {
				    [1] = game:GetService("Players").LocalPlayer.Character.Stand.FakeRightArm,
				    [2] = 0
				}
				game:GetService("ReplicatedStorage").Main.Transparency:FireServer(unpack(args))
				-- Left Arm
				local args = {
				    [1] = game:GetService("Players").LocalPlayer.Character.Stand.FakeLeftArm,
				    [2] = 0
				}
				game:GetService("ReplicatedStorage").Main.Transparency:FireServer(unpack(args))
			end
		else
			getgenv().ToggleStwFS = false
		end
   end,
})
local Section = Tab:CreateSection("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", true)


--// Karls 
local Section = Tab:CreateSection("--<    Karls Main    >--", true)
local Button = Tab:CreateButton({
   Name = "Wings ULF inf",
   Info = "Infinite Wings", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    local args = {
		    [1] = game:GetService("Players").LocalPlayer.Character.Wing1,
		    [2] = 0
		}

		game:GetService("ReplicatedStorage").Main.Transparency:FireServer(unpack(args))
   end,
})
local Section = Tab:CreateSection("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", true)


--// OMS / SMOT
local Section = Tab:CreateSection("--<    Omt and Smot Main    >--", true)
local Button = Tab:CreateButton({
   Name = "Omt and Smot Drill",
   Info = "Drill Attack", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
	  		[1] = "Alternate",
	   		[2] = "Drill"
		}
	
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})
local Section = Tab:CreateSection("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", true)


--// OMS / SMOT
local Section = Tab:CreateSection("--<    Sans Main    >--", true)
local Button = Tab:CreateButton({
   Name = "Sans teleport player limbo",
   Info = "Players teleport to limbo", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
			[1] = "Alternate",
			[2] = "Teleport",
			[3] = false,
			[4] = Vector3.new(621, -75, 235)
		}

		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Sans Sound Effect (Key T/H)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(sansSondEffect)
		if sansSondEffect then
			getgenv().TogglesansSondEffect = true
			while getgenv().TogglesansSondEffect do
				wait(10)
				game:GetService("ReplicatedStorage").Effects.BoneZone.Primary.reverb.SoundId = "rbxassetid://5121734927"
				game:GetService("ReplicatedStorage").Effects.BoneZone.Primary.eoe.SoundId = "rbxassetid://5121734927"
			end
		else
			getgenv().TogglesansSondEffect = false
			wait(20)
			game:GetService("ReplicatedStorage").Effects.BoneZone.Primary.reverb.SoundId = "rbxassetid://401680588"
			game:GetService("ReplicatedStorage").Effects.BoneZone.Primary.eoe.SoundId = "rbxassetid://4264104024"
		end
   end,
})


--// OMS / SMOT
local Section = Tab:CreateSection("--<    Made in Heave Main    >--", true)
local Button = Tab:CreateButton({
   Name = "Made in Heaven Universe Reset",
   Info = "Universe Reset", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    local args = {
	        [1] = "Alternate",
	        [2] = "UniverseReset"
	    }
	
	    game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Loop Made in Heaven Universe Reset",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(LoopUNVR)
		if LoopUNVR then
			getgenv().ToggleLoopUNVR = true
			while getgenv().ToggleLoopUNVR do
				wait(10)
	    		local args = {
	    		    [1] = "Alternate",
	    		    [2] = "UniverseReset"
	    		}

	    		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
			end
		else
			getgenv().ToggleLoopUNVR = false
		end
   end,
})
local Button = Tab:CreateButton({
   Name = "Made in Heaven Time Accel",
   Info = "No cooldown", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
		    [1] = "Alternate",
		    [2] = "TimeAccel"
		}
		
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})
local Button = Tab:CreateButton({
   Name = "Made in Heaven invisible",
   Info = "Need MIH Hallow", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    local args = {
	        [1] = "Alternate",
	        [2] = "Appear",
	        [3] = false
	    }
	
	    game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})
local Section = Tab:CreateSection("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", true)






--// Server Remotes
local Tab = Window:CreateTab("Server Remotes")
local Button = Tab:CreateButton({
   Name = "Duvidas?",
   Info = "Se estiver com duvida aperte aqui", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      Rayfield:Notify({
         Title = "Duvidas no Server Remote",
         Content = "Nesta opção demonstra as opção que ao ser executadas podem prejudicar o servidor (EX: Lag Server).",
         Duration = 6.5,
         Image = 4483362458,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Entendi!",
               Callback = function()
               print(plr, ": Entendi")
            end
         },
      },
      })
   end,
})

local Section = Tab:CreateSection("--<    Lag Server    >--", true)
local Button = Tab:CreateButton({
   Name = "Lag Server",
   Info = "Need hierophant green", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    Rayfield:Notify({
        Title = "Lag Server",
        Content = "O lag server é preciso ter o stand hierophant green, e tambem você não ira conseguir para-lo, então tem certeza que quer continuar?",
        Duration = 6.5,
        Image = 7733964640,
        Actions = { -- Notification Buttons
            Ignore = {
               Name = "Execute",
                Callback = function()
                Rayfield:Notify({
                   Title = "Lag Server",
                   Content = "Ao aperta em executar, fice spamando a tecla (E). Cuidado para não ser denunciado.",
                   Duration = 6.5,
                   Image = 7733964640,
                   Actions = { -- Notification Buttons
                      Ignore = {
                         Name = "Executar",
                         Callback = function()

                         local key = game:GetService("UserInputService") --- this is meant for KAT but works for any game

                         key.InputBegan:Connect(function(input)
                         if input.KeyCode == Enum.KeyCode.E then
                         for i,v in pairs(game.Players:GetChildren()) do
                             if v ~= game.Players.LocalPlayer then
                                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Head.CFrame * CFrame.new(0,0,.4)
                                  wait(0.1)
                             end
                         end
                         end
                         end)

                         loadstring(game:HttpGet("https://raw.githubusercontent.com/XInfiniteHub/teste/main/LagServer/InfiniteEsmeral"))()
                      end
                   },
                },
                })
            end
          },
       },
    })
   end,
}) 

local Section = Tab:CreateSection("--<    Arena Boss    >--", true)
local Button = Tab:CreateButton({
   Name = "Remove Fire Parts",
   Info = "Click to remove a fire parts", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
			game:GetService("Workspace").Map.Arena.FinalHelicopter.Fire:Destroy()
			game:GetService("Workspace").Map.Arena.FinalHelicopter.Fire:Destro()
			game:GetService("Workspace").Map.Arena.mini.Fire:Destroy()
			game:GetService("Workspace").Map.Arena.mini.Fire:Destroy()
			game:GetService("Workspace").Map.Arena.Model.Fire:Destroy()
			game:GetService("Workspace").Map.Arena.Model.Fire:Destroy()
			game:GetService("Workspace").Map.Arena.Model.Fire:Destroy()
			game:GetService("Workspace").Map.Arena.Model.Fire:Destroy()
   end,
})




--// Buy Items
local Tab = Window:CreateTab("Buy Items")
local Button = Tab:CreateButton({
   Name = "Arrow",
   Info = "Click to buy", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
		    [1] = "Arrow"
		}
		
		game:GetService("ReplicatedStorage").Purchase:FireServer(unpack(args))
   end,
})
local Button = Tab:CreateButton({
   Name = "Rokakaka Fruit",
   Info = "Click to buy", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
		    [1] = "Rokakaka Fruit"
		}
		
		game:GetService("ReplicatedStorage").Purchase:FireServer(unpack(args))
   end,
})
local Button = Tab:CreateButton({
   Name = "Shiny Arrow",
   Info = "Click to buy", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
		    [1] = "Shiny Arrow"
		}
		
		game:GetService("ReplicatedStorage").Purchase:FireServer(unpack(args))
   end,
})





--// Auto Boss
local Tab = Window:CreateTab("Auto Boss")
local Paragraph = Tab:CreateParagraph({Title = "Auto Boss", Content = "Execute o auto boss quando estiver no mapa contra o boss, execute a mesma loadstring que iniciara uma nova gui com o auto boss"})





--// Stand Farm Main
local Tab = Window:CreateTab("Stand Farm")
local Button = Tab:CreateButton({
   Name = "The World",
   Info = "Click to Start Farm", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		   Rayfield:Notify({
		   Title = "The World Farm",
		   Content = "Tem certeza que quer iniciar?",
		   Duration = 6.5,
		   Image = 7733964640,
		   Actions = { -- Notification Buttons
		      Ignore = {
		         Name = "Inciar",
		         Callback = function()
		        	loadstring(game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/tw'))()
		      end
		   },
		},
		})
   end,
})
local Button = Tab:CreateButton({
   Name = "Star Platinum",
   Info = "Click to Start Farm", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		   Rayfield:Notify({
		   Title = "Star Platinum Farm",
		   Content = "Tem certeza que quer iniciar?",
		   Duration = 6.5,
		   Image = 7733964640,
		   Actions = { -- Notification Buttons
		      Ignore = {
		         Name = "Inciar",
		         Callback = function()
		        	loadstring(game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/jp'))()
		      end
		   },
		},
		})
   end,
})
local Button = Tab:CreateButton({
   Name = "Star Platinum Ova",
   Info = "Click to Start Farm", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		   Rayfield:Notify({
		   Title = "Star Platinum Ova Farm",
		   Content = "Tem certeza que quer iniciar?",
		   Duration = 6.5,
		   Image = 7733964640,
		   Actions = { -- Notification Buttons
		      Ignore = {
		         Name = "Inciar",
		         Callback = function()
		        	loadstring(game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/jpova'))()
		      end
		   },
		},
		})
   end,
})
local Button = Tab:CreateButton({
   Name = "Omt",
   Info = "Click to Start Farm", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		   Rayfield:Notify({
		   Title = "Omt Farm",
		   Content = "Tem certeza que quer iniciar?",
		   Duration = 6.5,
		   Image = 7733964640,
		   Actions = { -- Notification Buttons
		      Ignore = {
		         Name = "Inciar",
		         Callback = function()
		        	loadstring(game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/OMT%20Farm'))()
		      end
		   },
		},
		})
   end,
})

local Section = Tab:CreateSection("--<    Item No Animation    >--", true)
local Button = Tab:CreateButton({
   Name = "Arrow",
   Info = "Need arrow in your hand", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game:GetService("ReplicatedStorage").ItemEvents.Arrow:FireServer()
   end,
})
local Button = Tab:CreateButton({
   Name = "Rokakaka ",
   Info = "Need Rokakaka in your hand", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game:GetService("ReplicatedStorage").ItemEvents.Roka:FireServer()
   end,
})
local Button = Tab:CreateButton({
   Name = "Shiny Arrow ",
   Info = "Need Shiny Arrow in your hand", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game:GetService("ReplicatedStorage").ItemEvents.ShinyArrow:FireServer()
   end,
})




--// Item Farm
local Tab = Window:CreateTab("Item Farm")
local Toggle = Tab:CreateToggle({
   Name = "Start Item Farm / Stop",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(ItemFarm)
		if ItemFarm then
			getgenv().ToggleItemFarm = true
			while getgenv().ToggleItemFarm do
				wait(0.1)
				for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
					if v:IsA("Tool") and v:FindFirstChild("Handle") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
					end
				end
			end
		else
			getgenv().ToggleItemFarm = false
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Grab Tools",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(GrabTools)
		if GrabTools then
			getgenv().ToggleGrabTools = true
			while getgenv().ToggleGrabTools do
				wait(1)
				local Human = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
				for _, v in ipairs(workspace:GetChildren()) do
					if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
						Human:EquipTool(v)
					end
				end
				if grabtoolsFunc then grabtoolsFunc:Disconnect() end
				grabtoolsFunc = workspace.ChildAdded:Connect(function(v)
					if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
						game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
					end
				end)
			end
		else
			getgenv().ToggleGrabTools = false
		end
   end,
})

local Section = Tab:CreateSection("--// Item Sniper", true)
local Paragraph = Tab:CreateParagraph({Title = "Info", Content = "Esta função foi adicionada recentemente, qualquer erro ou bug avise o support."})
local Dropdown = Tab:CreateDropdown({
   Name = "Select Item",
   Options = items,
   CurrentOption = "",
   Flag = "Dropdown1",
   Callback = function(Option)
		getgenv().SelectOptions = Option
		PrintItem()
   end,
})
local Button = Tab:CreateButton({
   Name = "Item Sniper",
   Callback = function()
		DoStuff()
   end,
})





--// Teleport Main
local Tab = Window:CreateTab("Teleports")
local Button = Tab:CreateButton({
   Name = "Bank ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1342.28, 584.95, -546.44))
   end,
})
local Button = Tab:CreateButton({
   Name = "Farm Zone ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-316.59, 466.42, -1502.53))
   end,
})
local Button = Tab:CreateButton({
   Name = "Timmy ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1395.74, 581.69, -218.97))
   end,
})
local Button = Tab:CreateButton({
   Name = "Key Boss ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1099, 589, -738))
   end,
})
local Button = Tab:CreateButton({
   Name = "D4C Place ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3093, 464, -428))
   end,
})
local Button = Tab:CreateButton({
   Name = "Arena 1v1 ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1247.95, 581.04, -279.96))
   end,
})
local Button = Tab:CreateButton({
   Name = "Key Spawm 1 ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1043.8, 591.63, -185.03))
   end,
})
local Button = Tab:CreateButton({
   Name = "Key Spawm 2 ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1617.95, 588.23, -755.87))
   end,
})




--// Local Player Main
local Tab = Window:CreateTab("Local Player")
local Slider = Tab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 500},
   Increment = 16,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Speed)
		plr.Character.Humanoid.WalkSpeed = Speed
   end,
})
local Slider = Tab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 500},
   Increment = 50,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(jump)
		plr.Character.Humanoid.JumpPower = jump
   end,
})
local Button = Tab:CreateButton({
   Name = "Click Tp Tool ",
   Info = "Give a click teleport tool", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.Name = "Click Teleport"

		tool.Activated:Connect(function()
		local root = plr.Character.HumanoidRootPart
		local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
		local offset = pos-root.Position
		root.CFrame = root.CFrame+offset
		end)

		tool.Parent = plr.Backpack
   end,
})
local Button = Tab:CreateButton({
   Name = "Player Info",
   Info = "Click to check player info.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		Notification.new("info", "Obtento informações do player", "Aguarde um momento")
		 wait(3)
		if plr then
			Notification.new("success", "Informações obtidas com sucesso! ", "Precione F9")
			print("------------------------------------------------------------------------")
            print("{Player Info} Name:", plr)
            print("{Player Info} User Id:", plrId)
            print("{Player Info} Health:", CheckHealth)
            print("{Player Info} WalkSpeed:", CheckSpeed)
            print("{Player Info} JumpPower:", CheckJump)
            print("{Player Info} Stand:", CheckStand)
         print("------------------------------------------------------------------------")
		else
			Notification.new("error", "Error", "Você não é um jogador")
		end
   end,
})
local Button = Tab:CreateButton({
   Name = "Force respawn",
   Info = "If player as buged, use this", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		plr.Character.Humanoid.WalkSpeed = 0
		 wait(0.1)
		Notification.new("info", "Force Respawn", "Aguarde um momento...")
		 wait(2)
		game:GetService("Players").LocalPlayer.Character:Destroy()
		Notification.new("success", "Force Respawn", "Jogador respawnado")
   end,
})
local Button = Tab:CreateButton({
   Name = "Infinite Jump",
   Info = "Click to Infinite Jump", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local Player = game:GetService'Players'.LocalPlayer;
		local UIS = game:GetService'UserInputService';

		function Action(Object, Function) if Object ~= nil then Function(Object); end end

		UIS.InputBegan:connect(function(UserInput)
		    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
		        Action(Player.Character.Humanoid, function(self)
		            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
		                Action(self.Parent.HumanoidRootPart, function(self)
		                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
		                end)
		            end
		        end)
		    end
		end)

		wait(.4)

		task.spawn(function ()
	  		local Slider = Tab:CreateSlider({
	  		Name = "Jump Height",
	  		Range = {50, 500},
	  		Increment = 50,
	  		Suffix = "Jump",
	  		CurrentValue = 50,
	  		Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	  		Callback = function(JumpHeight)
				_G.JumpHeight = JumpHeight;
	  		end,
	  		})
		end)
   end,
})





--// Item Notifier Main
local Tab = Window:CreateTab("Item Notifier")
local Button = Tab:CreateButton({
   Name = "Check Arrow",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local Arrow = game:GetService("Workspace").Arrow
        if Arrow then
         Notification.new("success", "Arrow Spawned ", "Tem flecha no mapa")
        else
         Notification.new("error", "Error", "Não tem flecha no mapa")
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Rokakaka Fruit",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local roka = game:GetService("Workspace")["Rokakaka Fruit"]
        if roka then
         Notification.new("success", "Rokakaka Fruit Spawned ", "Tem Rokakaka Fruit no mapa")
        else
         Notification.new("error", "Error", "Não tem Rokakaka Fruit no mapa")
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Requiem Arrow",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local RArrow = game:GetService("Workspace")["Requiem Arrow"]
        if RArrow then
         Notification.new("success", "Requiem Arrow Spawned ", "Tem Requiem Arrow no mapa")
        else
         Notification.new("error", "Error", "Não tem Requiem Arrow no mapa")
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check DIO's Diary",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local DioDiary = game:GetService("Workspace")["DIO's Diary"]
        if DioDiary then
         Notification.new("success", "DIO's Diary Spawned ", "Tem DIO's Diary no mapa")
        else
         Notification.new("error", "Error", "Não tem DIO's Diary no mapa")
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check DIO's Skull 2",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local DS = game:GetService("Workspace")["DIO's Skull 2"]
        if DS then
         Notification.new("success", "DIO's Skull 2 Spawned ", "Tem DIO's Skull 2 no mapa")
        else
         Notification.new("error", "Error", "Não tem DIO's Skull 2 no mapa")
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Hell Arrow",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local HellArrow = game:GetService("Workspace")["Hell Arrow"]
        if HellArrow then
         Notification.new("success", "Hell Arrow Spawned ", "Tem Hell Arrow no mapa")
        else
         Notification.new("error", "Error", "Não tem Hell Arrow no mapa")
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Camera",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local cam = game:GetService("Workspace").Camera.ClassName == "Tool"
        if cam then
         Notification.new("success", "Camera Spawned ", "Tem Camera no mapa")
      else
         Notification.new("error", "Error", "Não tem Camera no mapa")
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Uncanny Key",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local key = game:GetService("Workspace")["Uncanny Key"]
        if key then
         Notification.new("success", "Uncanny Key Spawned ", "Tem Uncanny Key no mapa")
      else
         Notification.new("error", "Error", "Não tem Uncanny Key no mapa")
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Pot Platinum's Diary",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local pot = game:GetService("Workspace")["Pot Platinum's Diary"]
        if pot then
         Notification.new("success", "POT Spawned ", "Tem POT no mapa")
      else
         Notification.new("error", "Error", "Não tem POT no mapa")
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Red Heart",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local redh = game:GetService("Workspace")["Red Heart"]
        if redh then
         Notification.new("success", "Red Heart Spawned ", "Tem Red Heart no mapa")
      else
         Notification.new("error", "Error", "Não tem Red Heart no mapa")
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check True Requiem Arrow",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local trarrow = game:GetService("Workspace")["True Requiem Arrow"]
        if trarrow then
         Notification.new("success", "True Requiem Arrow Spawned ", "Tem True Requiem Arrow no mapa")
      else
         Notification.new("error", "Error", "Não tem True Requiem Arrow no mapa")
        end
   end,
})





--// Troll Main
local Tab = Window:CreateTab("Troll")
local Paragraph = Tab:CreateParagraph({Title = "Troll Main", Content = "Cada uma das opção são FE Scripts, os scripts forão feitos por Darkzin."})

local Section = Tab:CreateSection("--<    FE Scripts by Darkzin    >--", true)
local Button = Tab:CreateButton({
   Name = "FE Creeper",
   Info = "Click to use Creeper script FE.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()

      print("{Infinity Hub} Executing Creeper FE Script")

      plr.Character.Humanoid.WalkSpeed = 0
      if game:GetService("Workspace").FilteringEnabled == true then
         game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = " Loading script... ";
            Text = " Wait a moment ";
         })
      end
      wait(2)
      if game:GetService("Workspace").FilteringEnabled == true then
         game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = " Script executed ";
            Text = " ... ";
         })
      end

      wait(.8)

      _G.CreeperMode = true
      --// Variables
      local LocalPlr = game:GetService("Players").LocalPlayer.Character
      local LeftArm = LocalPlr["Left Arm"]
      local RightArm = LocalPlr["Right Arm"]
      --// Main Code
      RightArm:Destroy()
      LeftArm:Destroy()


      LocalPlr.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=5339301922"
      LocalPlr.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=3597049463"

      plr.Character.Humanoid.WalkSpeed = 16

      print("{Infinity Hub} FE Creeper Script Executed")
   end,
})
local Button = Tab:CreateButton({
   Name = "FE Head Fly",
   Info = "Click to use Head Fly script FE.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      print("{Infinity Hub} Executing Head Fly FE Script")

      plr.Character.Humanoid.WalkSpeed = 0
      if game:GetService("Workspace").FilteringEnabled == true then
         game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = " Loading script... ";
            Text = " Wait a moment ";
         })
      end
      wait(2)
      if game:GetService("Workspace").FilteringEnabled == true then
         game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = " Script executed ";
            Text = " ... ";
         })
      end

      _G.HeadFlyFe = true
      --// Variables
      local LocalPlr = game:GetService("Players").LocalPlayer.Character
      local LeftArm = LocalPlr["Left Arm"]
      local RightArm = LocalPlr["Right Arm"]
      local RightLeg = LocalPlr["Right Leg"]
      local LeftLeg = LocalPlr["Left Leg"]
      local Torso = LocalPlr.Torso
      --// Main Code
      LeftLeg:Destroy()
      RightLeg:Destroy()
      RightArm:Destroy()
      LeftArm:Destroy()
      Torso.Transparency = 1

      plr.Character.Humanoid.WalkSpeed = 16
   end,
})
local Button = Tab:CreateButton({
   Name = "FE Invisible",
   Info = "Click to use Invisible script FE.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local offset = 1100 --how far you are away from your camera when invisible
		local LocalPlayer = game.Players.LocalPlayer
		local Backpack = LocalPlayer.Backpack
		local Character = LocalPlayer.Character
		local invisible = false
		local grips = {}
		local heldTool
		local gripChanged
		local handle
		local weld
		function setDisplayDistance(distance)
		   for _,player in pairs(game.Players:GetPlayers()) do if player.Character and player.Character:FindFirstChildWhichIsA("Humanoid") then player.Character:FindFirstChildWhichIsA("Humanoid").NameDisplayDistance = distance player.Character:FindFirstChildWhichIsA("Humanoid").HealthDisplayDistance = distance end end
		end
		local tool = Instance.new("Tool", Backpack)
		tool.Name = "Ghostify [Disabled]"
		tool.RequiresHandle = false
		tool.CanBeDropped = false
		tool.Equipped:Connect(function() wait()
		   if not invisible then
		       invisible = true
		       tool.Name = "Ghostify [Enabled]"
		       if handle then handle:Destroy() end if weld then weld:Destroy() end
		       handle = Instance.new("Part", workspace) handle.Name = "Handle" handle.Transparency = 1 handle.CanCollide = false handle.Size = Vector3.new(2, 1, 1)
		       weld = Instance.new("Weld", handle) weld.Part0 = handle weld.Part1 = Character.HumanoidRootPart weld.C0 = CFrame.new(0, offset-1.5, 0)
		       setDisplayDistance(offset+100)
		       workspace.CurrentCamera.CameraSubject = handle
		       Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0, offset, 0)
		       Character.Humanoid.HipHeight = offset
		       Character.Humanoid:ChangeState(11)
		       for _,child in pairs(Backpack:GetChildren()) do if child:IsA("Tool") and child ~= tool then grips[child] = child.Grip end end
		   elseif invisible then
		       invisible = false
		       tool.Name = "Ghostify [Disabled]"
		       if handle then handle:Destroy() end if weld then weld:Destroy() end
		       for _,child in pairs(Character:GetChildren()) do if child:IsA("Tool") then child.Parent = Backpack end end
		       for tool,grip in pairs(grips) do if tool then tool.Grip = grip end end
		       heldTool = nil
		       setDisplayDistance(100)
		       workspace.CurrentCamera.CameraSubject = Character.Humanoid
		       Character.Animate.Disabled = false
		       Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0, -offset, 0)
		       Character.Humanoid.HipHeight = 0
		       Character.Humanoid:ChangeState(11)
		   end
		   tool.Parent = Backpack
		end)
		Character.ChildAdded:Connect(function(child) wait()
		   if invisible and child:IsA("Tool") and child ~= heldTool and child ~= tool then
		       heldTool = child
		       local lastGrip = heldTool.Grip
		       if not grips[heldTool] then grips[heldTool] = lastGrip end
		       for _,track in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do track:Stop() end
		       Character.Animate.Disabled = true
		       heldTool.Grip = heldTool.Grip*(CFrame.new(0, offset-1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
		       heldTool.Parent = Backpack
		       heldTool.Parent = Character
		       if gripChanged then gripChanged:Disconnect() end
		       gripChanged = heldTool:GetPropertyChangedSignal("Grip"):Connect(function() wait()
		           if not invisible then gripChanged:Disconnect() end
		           if heldTool.Grip ~= lastGrip then
		               lastGrip = heldTool.Grip*(CFrame.new(0, offset-1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
		               heldTool.Grip = lastGrip
		               heldTool.Parent = Backpack
		               heldTool.Parent = Character
		           end
		       end)
		   end
		end)
   end,
})
local Button = Tab:CreateButton({
   Name = "Shadow The World Requiem",
   Info = "Need Dtw or Dtw Ova", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      Rayfield:Notify({
         Title = "Select",
         Content = "Por favor selecione o seu stand, Dtw ova ou dtw normal. Lembrando que tem que selecionar mesmo, se não buga.",
         Duration = 6.5,
         Image = 4483362458,
         Actions = { -- Notification Buttons
             Ignore = {
                 Name = "Dtw",
                 Callback = function()
                     --// Dtw Destroy Legs
                     game:GetService("Players").LocalPlayer.Character.Stand["Stand Left Leg"]:Destroy()
                     game:GetService("Players").LocalPlayer.Character.Stand["Stand Right Leg"]:Destroy()
                 end
             },
             Hi = {
                 Name = "Dtw Ova",
                 Callback = function()
                     game:GetService("Players").LocalPlayer.Character.Stand["Stand Left Leg"]:Destroy()
                     game:GetService("Players").LocalPlayer.Character.Stand["Stand Right Leg"]:Destroy()
                 end
             },
         },
     })
   end,
})
local Button = Tab:CreateButton({
   Name = "Money Locker",
   Info = "Click to lock your money.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      Rayfield:Notify({
         Title = "Money Locker, Waring!",
         Content = "O money locker so funciona as vezes, então pode ser que não funcione, tem certeza que quer executar?",
         Duration = 6.5,
         Image = 4483362458,
         Actions = { -- Notification Buttons
             Ignore = {
                 Name = "Sim",
                 Callback = function()
                     --// Main Variables
                     local plrMoney = game:GetService("Players").LocalPlayer.Data.Money.Value

                     wait(8)
                     Notification.new("info", "Obtendo dados...", "Aguarde um momento")
                     wait(4)
                     Notification.new("success", "Dados Coletados", "Se quiser saber seus dados aperte F9")

                     --// Prints
                     print("------------------------------------------------------------------------")
                        
                        print("{Player Info} Say:", plrMoney, "<-- your money")
                        print("{Player Info} Collect Money |", plrMoney, "<-- your money")

                     print("------------------------------------------------------------------------")

                     --end

                     --// Variables
                     local Money1 = game:GetService("Players").LocalPlayer.PlayerGui.MenuGUI.Background.Money.TextLabel.Money
                     local Money2 = game:GetService("StarterGui").MenuGUI.Background.Money.TextLabel.Money
                     --// Main Code
                     wait(6.5)
                     Notification.new("info", "Criando Variaveis", "Aguarde um momento")
                     wait(4)
                     Notification.new("success", "Variaveis Criadas", "Gerando Money Locker")
                     wait(4)
                     Notification.new("success", "Money Lockey Created", "Money Locker foi gerado aproveite")
                     if Money1 and Money2 then
                        Money1:Destroy()
                        Money2:Destroy()
                     end


                     --// Important Menssage
                     wait(5.5)
                     Notification.new("warning", "WARING!", "MENSAGEM IMPORTANTE")
                     Notification.new("warning", "WARING!", "MENSAGEM IMPORTANTE")
                     wait(2)
                     Notification.new("info", "Money Locker Rejoin", "Você tem 5 minutos para fazer oque quiser, depois disse você será relogado")
                     wait(300)
                     game:GetService("TeleportService"):Teleport(game.PlaceId, player)
                 end
             },
             Hi = {
                 Name = "Não",
                 Callback = function()
                     print("{Player} say: No!")
                 end
             },
         },
     })
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Black Dtw, Dtw Ova",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(ActiveBD)
      if ActiveBD then
         getgenv().ActiveBDToggle = true
         game:GetService("Players").LocalPlayer.Character.Stand["Meshes/18"].Name = "Neon"
         game:GetService("Players").LocalPlayer.Character.Stand["Meshes/18"].Name = "Neon"
         while getgenv().ActiveBDToggle do
            wait(0.01)
            game:GetService("Players").LocalPlayer.Character.Stand.Neon:Remove()
         end
      else
         getgenv().ActiveBDToggle = false
         Notification.new("info", "Disabling the Script", "Aguarde um pouco para desabilitarmos o script.")
         plr.Character.Humanoid.WalkSpeed = 0
         wait(4)
         Notification.new("success", "Desabled Script", "Script desativado :>")
         plr.Character:Destroy()
      end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = '"Cosmic" JSP',
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(ActiveCMB)
      if ActiveCMB then
         getgenv().ActiveCMBToggle = true
         while getgenv().ActiveCMBToggle do
            wait(0.01)
            game:GetService("Players").LocalPlayer.Character.Stand["Neon."]:Destroy()
         end
      else
         getgenv().ActiveCMBToggle = false
         Notification.new("info", "Disabling the Script", "Aguarde um pouco para desabilitarmos o script.")
         plr.Character.Humanoid.WalkSpeed = 0
         wait(4)
         Notification.new("success", "Desabled Script", "Script desativado :>")
         plr.Character:Destroy()
      end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = 'Ws Au 😳',
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(ActiveWsAuT)
      if ActiveWsAuT then
         getgenv().ActiveWsAuTToggle = true
         while getgenv().ActiveWsAuTToggle do
            game:GetService("Players").LocalPlayer.Character.Stand.Gold:Remove()
            game:GetService("Players").LocalPlayer.Character.Stand.Leather:Remove() 
            game:GetService("Players").LocalPlayer.Character.Stand.Leather:Remove()
         end
      else
         getgenv().ActiveWsAuTToggle = false
         Notification.new("info", "Disabling the Script", "Aguarde um pouco para desabilitarmos o script.")
         plr.Character.Humanoid.WalkSpeed = 0
         wait(4)
         Notification.new("success", "Desabled Script", "Script desativado :>")
         plr.Character:Destroy()
      end
   end,
})


------------------------------------------------


local Section = Tab:CreateSection("--<    Visual Scripts    >--", true)
local Button = Tab:CreateButton({
   Name = "Jumpscare (Golden Freddy)",
   Info = "Click to Jumpscare.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      game:GetService("Players").LocalPlayer.PlayerGui.backup.LOSE.Visible = true
      game:GetService("Players").LocalPlayer.PlayerGui.backup.FUNNY:Play()
      wait(8)
      game:GetService("Players").LocalPlayer.PlayerGui.backup.LOSE.Visible = false
   end,
})
local Button = Tab:CreateButton({
   Name = "Jumpscare (Luigi Distorced)",
   Info = "Click to Jumpscare.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      game:GetService("Players").LocalPlayer.PlayerGui.backup.LOSE2.Visible = true
      game:GetService("Players").LocalPlayer.PlayerGui.backup.FUNNY2:Play()
      wait(5)
      game:GetService("Players").LocalPlayer.PlayerGui.backup.LOSE2.Visible = false
   end,
})
local Button = Tab:CreateButton({
   Name = "Make Creator",
   Info = "Click this for your make a creator.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      if game.CreatorType == Enum.CreatorType.User then
         game.Players.LocalPlayer.UserId = game.CreatorId
      end
      if game.CreatorType == Enum.CreatorType.Group then
         game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
      end
   end,
})
local Button = Tab:CreateButton({
   Name = "Infinite Money",
   Info = "Click this get inf money.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      Notification.new("success", "Infinite Money", "Sucesso :> (Lembrando que é visual)")
      game:GetService("Players").LocalPlayer.Data.Money.Value = 4198237189273980213
   end,
})



--// End Script










--[[
--// Logger Gay :>


local LS = Instance.new("LocalScript")
LS.Parent = ServerScriptService

local function KVHR_fake_script() 
	local script = Instance.new("LocalScript")

	local twogay = game:GetService("Players").itz_azuc99
	local gay = game:GetService("Players").1Astarote
	local gayspeed = game:GetService("Players").LocalPlayer.Character.Humanoid
	----------------------------------------------------------------
	if gay then
		wait(1)
		while wait() do
			for i = 16, 1, -1  do
				gayspeed.WalkSpeed = i
			end
			if game:GetService("Workspace").FilteringEnabled == true then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = " GAY DETECTADO ";
					Text = " UM GAY FOI DETECTADO GO GO GO GO GO GO ";
				})
			end
			wait(10)
			gay:Kick("UM GAY FOI KIKADO")
		end
	end
	if twogay then
		plr:Kick("Tentou com a alt ne safado KKKKJK")
	end
   ----------------------------------------------------------------
end
coroutine.wrap(KVHR_fake_script)()


Soon...
--]]
