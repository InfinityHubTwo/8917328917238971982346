--// Auto Boss Mobile






--// Notification Libray
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()



--// Prints
print("Infinity Hub Loaded")
print("Heve fun")




--// Rayfiel Libray
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/XInfiniteHub/teste/main/Main/Code/Libray%20Raifield'))()
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
      Key = "3!aTqFE5)1bm2tI1sRBXF6ybDHG9Ty"
   }
})



--// Mobile Version
local Tab = Window:CreateTab("Mobile Version")
local Paragraph = Tab:CreateParagraph({Title = "Mobile Version Main", Content = "Aperto no botão abaixo para criar o botão de abrir e fechar a gui"})
local Button = Tab:CreateButton({
   Name = "Create Button",
   Info = "Mobile Version create a button to opoe / close gui.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      task.spawn(function ()
			    loadstring(game:HttpGet("https://raw.githubusercontent.com/XInfiniteHub/Main/main/MobileVersion/Main/Mobile.lua"))()
		  end)
   end,
})




--// Auto Boss Main
local Tab = Window:CreateTab("Auto Boss")
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

local Section = Tab:CreateSection("-<    More Options    >-")
local Button = Tab:CreateButton({
   Name = "Disable Effect",
   Info = "Effect = false", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    if game:GetService("Workspace"):FindFirstChild("Effects") then
        	game:GetService("Workspace"):FindFirstChild("Effects"):Destroy()
	    end
	    if game:GetService("Workspace").Map:FindFirstChild("ThunderParts") then
   	    	game:GetService("Workspace").Map:FindFirstChild("ThunderParts"):Destroy()
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
