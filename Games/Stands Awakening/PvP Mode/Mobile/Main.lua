local AntiTs = game:GetService("Lighting").TS

getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/8917328917238971982346/main/Librays/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
   Name = "Infinity Hub PvP Mode  |  @Darkzin",
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
      Key = ""
   }
})

local Tab = Window:CreateTab("PvP")
local Section = Tab:CreateSection("--// PvP Mode", true)


local Toggle = Tab:CreateToggle({
   Name = "Loop Auto Block",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
	    		local args = {
					[1] = "Alternate",
					[2] = "Block"
				}
				game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
			end
		end
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


local Section = Tab:CreateSection("--// Stw", true)
local Toggle = Tab:CreateToggle({
   Name = "Loop Stw H",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
   				local args = {
	  				[1] = "Alternate",
	  				[2] = "STWRTZ",
	  				[3] = true
				}
				game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
			end
		end
   end,
})
local Button = Tab:CreateButton({
   Name = "Stw Ts 15 / 20 Seconds",
   Callback = function()
		game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "shadowdio")
   end,
})


local Section = Tab:CreateSection("--// Close / Open button", true)
local Button = Tab:CreateButton({
   Name = "Create Button",
   Callback = function()
		loadstring(
			game:HttpGet"https://pastebin.com/raw/SPquMPZ3"
		)()
   end,
})
