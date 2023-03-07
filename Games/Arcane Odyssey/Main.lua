--// Variables
local function FeKill()
	game.Players.LocalPlayer.Character.Head.Neck:Destroy()
end
local Settings = {
    Killaura = false;
    Undetect = false;
    InfDash = false;
    LoadedFarm = false;
    MobToFarm = "";
    MobFarm = false;
    ModDetector = false;
    WeaponFarm = "";
    ChestAura = false;
    Fame = "Positive";
    FruitFarm = false;
    ASV = false;
    ASM = false;
    ASS = false;
    ASW = false;
    ChestESP = false;
    TeleportTo = "Dawn Island";
}
local signal = game.ReplicatedStorage.RS.Remotes.Misc.OnTeleport.OnClientEvent
local load = nil

for index, connection in next, getconnections(signal) do -- Made by DYLAN not me
    local env = connection.Function and getfenv(connection.Function)

    if env and tostring(rawget(env, "script")) == "Unloading" then
        load = debug.getupvalue(connection.Function, 2)
        break
    end
end

local LoadNPC = nil

for index, connection in next, getconnections(game.ReplicatedStorage.RS.Remotes.Misc.OnTeleport.OnClientEvent) do -- Made by DYLAN not me
    if connection.Function and tostring(rawget(getfenv(connection.Function), "script")) == "SetupNPCs" then
        LoadNPC = hookfunction(debug.getupvalue(connection.Function, 6), function(...)
            if not checkcaller() then
                return
            end LoadNPC(...)
        end)
    end
end
local getclosestmob = function()
    local MaxDistance= math.huge
    local ClosestObject
    pcall(function()
        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
            local MinDistance = MaxDistance
            if not v:FindFirstChild("DeadRagdoll") and Settings.LoadedFarm and v.Attributes.Health.Value > 0 and v.Name ~= "Shark" and not v:FindFirstChild("Prompt") and not v:FindFirstChild("JailMark") and not v:FindFirstChild("JailedAt") and v:FindFirstChild("Data") and v.Data:FindFirstChild("RenownType") and tostring(v.Data.RenownType.Value) ~= Settings.Fame or v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                local dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
                if dist < MinDistance then
                    MinDistance, ClosestObject = dist, v
                end
            end
        end
    end);
    return ClosestObject
end
local Mobed = {}
for i,v in ipairs(game.Workspace.Enemies:GetChildren()) do 
    for g,e in ipairs(game:GetService("ReplicatedStorage").RS.UnloadEnemies:GetChildren()) do 
        for _,i in ipairs(game:GetService("ReplicatedStorage").RS.Bosses:GetChildren()) do 
            if not table.find(Mobed,v.Name) then
                table.insert(Mobed,v.Name)
                table.sort(Mobed)
            end;
            if not table.find(Mobed,e.Name) then
                table.insert(Mobed,e.Name)
                table.sort(Mobed)
            end;
            if not table.find(Mobed,i.Name) then
                table.insert(Mobed,i.Name)
                table.sort(Mobed)
            end;
        end;
    end;
end;
local getclosestfruit = function()
    local MaxDistance= math.huge
    local ClosestObject
    pcall(function()
        for i, v in pairs(game.workspace:GetChildren()) do
            local MinDistance = MaxDistance
            if v.Name == "Fruit" and v:IsA("Part") then
                local dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
                if dist < MinDistance then
                    MinDistance, ClosestObject = dist, v
                end
            end
        end
    end);
    return ClosestObject
end
function addui(part,part2)
    local partui = Instance.new("BillboardGui",part2)
    partui.Size = UDim2.new(1,0,1,0)
    partui.AlwaysOnTop = true
    partui.Name = "Item-Esp"
    local frame = Instance.new("Frame",partui)
    frame.BackgroundColor3 = Color3.fromRGB(255,80,60)
    frame.BackgroundTransparency = 0.75
    frame.BorderSizePixel = 0
    local namegui = Instance.new("BillboardGui",part2)
    namegui.Size = UDim2.new(3,0,1.5,0)
    namegui.SizeOffset = Vector2.new(0,1)
    namegui.AlwaysOnTop = true
    namegui.Name = "Name"
    local text = Instance.new("TextLabel",namegui)
    text.Text = part.Name
    text.TextColor3 = Color3.fromRGB(255,80,60)
    text.TextTransparency = 0.25
    text.BackgroundTransparency = 1
    text.TextScaled = true 
    text.Size = UDim2.new(2,0,2,0)
    text.Font = Enum.Font.GothamSemibold
    text.Name = part.Name
end;


local Player 			= 		game.Players.LocalPlayer
local TweenService 		= 		game:GetService('TweenService')
local Player 			= 		game.Players.LocalPlayer
local Char 				= 		Player.Character or Player.CharacterAdded:wait()


local Position1 		= 	  	Vector3.new(19228.37109375, 511, 9963.859375)
local Position2 		= 	  	Vector3.new(3851.619140625, 2239, 4.222255706787109)
local Position3 		= 	  	Vector3.new(1702, 460.27374267578125, 5052.5)
local Position4 		= 	  	Vector3.new(688.342041015625, 403.5, 6366.77099609375)
local Position5 		= 	  	Vector3.new(7297.9248046875, 2514, 1143.7659912109375)
local Position6 		= 	  	Vector3.new(-481.40625, 432, 6471.37890625)
local Position7 		= 	  	Vector3.new(10745.4091796875, 415.99365234375, -14.5606689453125)
local Position8 		= 	  	Vector3.new(3017.748779296875, 525.0000610351562, 6844.462890625)
local Position9 		= 	  	Vector3.new(3040.05859375, 431.5001220703125, 4426.72216796875)
local Position10 		= 	  	Vector3.new(7413.22021484375, 455.500244140625, 793.445556640625)
local Position11 		= 	  	Vector3.new(5611.669921875, 463.5011901855469, 5779.02490234375)
local Position12 		= 	  	Vector3.new(-300.8798828125, 396, 5530.361328125)
local Position13 		= 	  	Vector3.new(27848.5, 29564.470703125, 7698.94287109375)
local Position14 		= 	  	Vector3.new(10368.5, 397.5, 3178.5)
local Position15 		= 	  	Vector3.new(5166.5283203125, 363, 3080.630615234375)
local Position16 		= 	  	Vector3.new(16689.5, 234, 1517.5)
local Position17 		= 	  	Vector3.new(331.5, 426.5, 3068.5)
local Position18 		= 	  	Vector3.new(12726.0048828125, 441.4988708496094, 2210.0068359375)
local Position19 		= 	  	Vector3.new(13572.4091796875, 406.4832458496094, 5723.98681640625)
local Position20 		= 	  	Vector3.new(12752.921875, 436.9987487792969, 2260.244140625)
local Position21 		= 	  	Vector3.new(11913.5, 357, 11025.5)
local Position22 		= 	  	Vector3.new(6092, 369.5, 5510)
local Position23 		= 	  	Vector3.new(7332.94140625, 410.4993896484375, 3834.105712890625)
local Position24 		= 	  	Vector3.new(693.5, 2590, -618.5)
local Position25 		= 	  	Vector3.new(9725.048828125, 427.4978332519531, 7131.43212890625)
local Position26 		= 	  	Vector3.new(6364.619140625, 2818, 3028.221923828125)
local Position27 		= 	  	Vector3.new(-1974.50048828125, 426.4999694824219, 3006.50048828125)
local Position28 		= 	  	Vector3.new(1968.49951171875, 426.4999694824219, 1457.50048828125)
local Position29 		= 	  	Vector3.new(4005.619140625, 1282, 1220.22216796875)
local Position30 		= 	  	Vector3.new(4180.59033203125, 413.2923583984375, 9189.1494140625)
local Position31 		= 	  	Vector3.new(6415.9521484375, 408.5, 8273.9287109375)
local Position32 		= 	  	Vector3.new(4459.67431640625, 395.00006103515625, -257.2719421386719)
local Position33 		= 	  	Vector3.new(21876.5, 234, 32.5)


local t1 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position1)}  )
local t2 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position2)}  )
local t3 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position3)}  )
local t4 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position4)}  )
local t5 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position5)}  )
local t6 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position6)}  )
local t7 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position7)}  )
local t8 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position8)}  )
local t9 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position9)}  )
local t10 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position10)}  )
local t11	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position11)}  )
local t12 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position12)}  )
local t13 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position13)}  )
local t14 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position14)}  )
local t15 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position15)}  )
local t16 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position16)}  )
local t17 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position17)}  )
local t18 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position18)}  )
local t19 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position19)}  )
local t20 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position20)}  )
local t21 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position21)}  )
local t22 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position22)}  )
local t23 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position23)}  )
local t24 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position24)}  )
local t25 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position25)}  )
local t26 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position26)}  )
local t27 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position27)}  )
local t28 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position28)}  )
local t29 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position29)}  )
local t30 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position30)}  )
local t31 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position31)}  )
local t32 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position32)}  )
local t33 	  = 	TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(10), {CFrame = CFrame.new(Position33)}  )


getgenv().SelectIslands = nil
local islands = {
	"Akursius Keep", -- 1
	"Cirrus Island", -- 2
	"Darkpine Isle", -- 3
	"Dawn Island", -- 4
	"Djin Ruins", -- 5
	"Elm Island", -- 6
	"Fort Talos", -- 7 
	"Frostmill Island", -- 8
	"Goso Jungle", -- 9
	"Harvest Island", -- 10
	"Limestone Key", -- 11
	"Mango Isle", -- 12
	"Mount Othrys", -- 13
	"Munera Garden", -- 14
	"Palo Town", -- 15
	"Ravenna", -- 16
	"Redwake", -- 17
	"Sailor's Lodge", -- 18
	"Sandfall Isle", -- 19
	"SeaContent", -- 20
	"Shell Island", -- 21
	"Shipwreck1", -- 22
	"Silverhold", -- 23
	"Skycliff Island", -- 24
	"The Forest of Cernunno", -- 25
	"The Myriad", -- 26
	"The Northern Jaws", -- 27
	"The Southern Jaws", -- 28
	"The Stepstones", -- 29 
	"Thorin's Refuge", -- 30
	"Whispering Caverns", -- 31
	"Whitesummit", -- 32
	"Wind-Row Island", -- 33

}
local function TeleportIslands()
	if getgenv().SelectIslands == "Akursius Keep" then
		t1:Play()

		
	elseif getgenv().SelectIslands == "Cirrus Island" then
		t2:Play()
		
			
	elseif getgenv().SelectIslands == "Darkpine Isle" then
		t3:Play()
		
		
	elseif getgenv().SelectIslands == "Dawn Island" then
		t4:Play()
		
		
	elseif getgenv().SelectIslands == "Djin Ruins" then
		t5:Play()
		
		
	elseif getgenv().SelectIslands == "Elm Island" then
		t6:Play()
		
		
	elseif getgenv().SelectIslands == "Fort Talos" then
		t7:Play()
		
		
	elseif getgenv().SelectIslands == "Frostmill Island" then
		t8:Play()
		
		
	elseif getgenv().SelectIslands == "Goso Jungle" then
		t9:Play()
		
		
	elseif getgenv().SelectIslands == "Harvest Island" then
		t10:Play()
		
		
	elseif getgenv().SelectIslands == "Limestone Key" then
		t11:Play()
		
		
	elseif getgenv().SelectIslands == "Mango Isle" then
		t12:Play()
		
		
	elseif getgenv().SelectIslands == "Mount Othrys" then
		t13:Play()
		
		
	elseif getgenv().SelectIslands == "Munera Garden" then
		t14:Play()
		
		
	elseif getgenv().SelectIslands == "Palo Town" then
		t15:Play()
		
		
	elseif getgenv().SelectIslands == "Ravenna" then
		t16:Play()
		
		
	elseif getgenv().SelectIslands == "Redwake" then
		t17:Play()
		
		
	elseif getgenv().SelectIslands == "Sailor's Lodge" then
		t18:Play()
		
		
	elseif getgenv().SelectIslands == "Sandfall Isle" then
		t19:Play()
		
		
	elseif getgenv().SelectIslands == "SeaContent" then
		t20:Play()
		
		
	elseif getgenv().SelectIslands == "Shell Island" then
		t21:Play()
		
		
	elseif getgenv().SelectIslands == "Shipwreck1" then
		t22:Play()
		
		
	elseif getgenv().SelectIslands == "Silverhold" then
		t23:Play()
		
		
	elseif getgenv().SelectIslands == "Skycliff Island" then
		t24:Play()
		
		
	elseif getgenv().SelectIslands == "The Forest of Cernunno" then
		t25:Play()
		
		
	elseif getgenv().SelectIslands == "The Myriad" then
		t26:Play()
		
		
	elseif getgenv().SelectIslands == "The Northern Jaws" then
		t27:Play()
		
		
	elseif getgenv().SelectIslands == "The Southern Jaws" then
		t28:Play()
		
		
	elseif getgenv().SelectIslands == "The Stepstones" then
		t29:Play()
		
		
	elseif getgenv().SelectIslands == "Thorin's Refuge" then
		t30:Play()
		
		
	elseif getgenv().SelectIslands == "Whispering Caverns" then
		t31:Play()
		
		
	elseif getgenv().SelectIslands == "Whitesummit" then
		t32:Play()
		
		
	elseif getgenv().SelectIslands == "Wind-Row Island" then
		t33:Play()
		
		
			
	end
end





--//
print[[
	:

	--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>
	|															  |
	|	Infinity Hub |  InfHub Arcane Odyssey, Version:  1.0.0 	  |
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
      Key = "qy&nBDu=mWJkrJ9D4T7!=i&=7mBQ62"
   }
})



--// Tabs: Info 
local Tab = Window:CreateTab("Info")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
	Este jogo foi lançado agora para Teste.
	Então tem muitas falhas, falo que tome cuidado pois provavelmente no futuro ele ira fechalo.

	Tome cuidado tambem para ninguem te ver. Obrigado.
]]})
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
	Lembrando que esta Gui ainda esta em Beta.
	Então qualquer erro será corrigido em breve.

	Atenciosamente Infinity Hub Support 😄
]]})




--// Tabs: Farming 
local Tab = Window:CreateTab("Farming")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
	Opções para você (O jogador) usar parar ter vantagens para farmar algo.
	EX: {
		Baús, mobs etc...
	}
]]})

local Section = Tab:CreateSection("--// Farm All Mobs", true)
local Toggle = Tab:CreateToggle({
   Name = "Farm All Mobs",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
		Settings.LoadedFarm = State
		if Settings.LoadedFarm then
        	spawn(function()
        	    while wait() and Settings.LoadedFarm do 
        	        pcall(function()
        	            local p = getclosestmob()
        	            if p and Settings.LoadedFarm then 
        	                repeat task.wait(0.5)
        	                    LoadNPC(p,p.HumanoidRootPart.Position)
        	                    load(p.HumanoidRootPart.Position,false)
        	                    game.Players.LocalPlayer.Character.PrimaryPart.CFrame = p.HumanoidRootPart.CFrame
        	                until p:FindFirstChild("DeadRagdoll") or not Settings.LoadedFarm or p.Attributes.Health.Value <= 0 or not p or not p.Parent
        	            end
        	        end)
        	    end
        	end)
		else
			Notification.new("info", "Force Respawn", "Player respawned.")
			FeKill()
		end
   end,
})
local Dropdown = Tab:CreateDropdown({
   Name = "Select a Mob",
   Options = Mobed,
   CurrentOption = "Option 1",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(x)
		Settings.MobToFarm = x;
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Mob Farm",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
		Settings.MobFarm = State
		if Settings.MobFarm then
        	spawn(function()
        	    while wait() and Settings.MobFarm do 
        	        pcall(function()
        	            for i,v in ipairs(game.Workspace.Enemies:GetChildren()) do 
        	                if not v:FindFirstChild("DeadRagdoll") and Settings.MobFarm and v.Name == Settings.MobToFarm then 
        	                    repeat task.wait(1)
        	                        LoadNPC(v,v.HumanoidRootPart.Position)
        	                        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = v.HumanoidRootPart.CFrame
        	                    until v:FindFirstChild("DeadRagdoll") or not Settings.MobFarm or v.Attributes.Health.Value <= 0
        	                end
        	            end
        	        end)
        	    end
        	end)
		end
   end,
})


local Section = Tab:CreateSection("--// More Farms Functions {", true)

local Toggle = Tab:CreateToggle({
   Name = "Fruit Farm",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
        Settings.FruitFarm = State;
        spawn(function()
            while task.wait(1) and Settings.FruitFarm do 
                pcall(function()
                    local p = getclosestfruit()
                    if p and Settings.FruitFarm then
                        repeat task.wait()
                            load(p.Position, false)
                            game.Players.LocalPlayer.Character.PrimaryPart.CFrame = p.CFrame
                            if game.Players.LocalPlayer:DistanceFromCharacter(p.Position) <= 10 then 
                                fireproximityprompt(p.Prompt)
                            end;
                        until not Settings.FruitFarm or not p
                    end;
                end);
            end;
        end);
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Chest Farm",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
        Settings.ChestFarm = x;
        spawn(function()
            while task.wait() and Settings.ChestFarm do 
                for i,v in ipairs(game.Workspace:GetChildren()) do 
                    if v.Name == "Great Sailor Chest" or v.Name == "Elite Sailor Chest" or v.Name == "Golden Chest" and not v:FindFirstChild("Open") and Settings.ChestFarm then 
                        for _,g in ipairs(v:GetChildren()) do 
                            if g:FindFirstChild("Prompt") and not v:FindFirstChild("Open") and Settings.ChestFarm then
                                repeat wait(5)
                                    if v:FindFirstChild("Open") then break end
                                    pcall(function()
                                        load(g.Position,false)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = g.CFrame
                                        wait(0.5)
                                        if g:FindFirstChild("Prompt") and game.Players.LocalPlayer:DistanceFromCharacter(g.Position) <= 10 then
                                            game:GetService("ReplicatedStorage").RS.Remotes.Misc.OpenChest:FireServer(v)
                                        end;
                                    end);
                                until v:FindFirstChild("Open") or not Settings.ChestFarm
                            end;
                        end;
                    end;
                end;
            end;
        end);
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Chest Aura",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
        Settings.ChestAura = State;
        spawn(function()
            while task.wait() and Settings.ChestAura do 
                for i,v in ipairs(game.Workspace:GetChildren()) do 
                    if string.find(v.Name,"Chest") and not v:FindFirstChild("Open") and Settings.ChestAura then 
                        for _,g in ipairs(v:GetChildren()) do 
                            if g:FindFirstChild("Prompt") and Settings.ChestAura and game.Players.LocalPlayer:DistanceFromCharacter(g.Position) <= 10 then
                                game:GetService("ReplicatedStorage").RS.Remotes.Misc.OpenChest:FireServer(v)
                            end;
                        end;
                    end;
                end;
            end;
        end);
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Chest Esp",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
        Settings.ChestESP = State;
        spawn(function()
            if not Settings.ChestESP then 
                for i,v in ipairs(game.Workspace:GetChildren()) do 
                    if string.find(v.Name,"Chest") then 
                        for _,g in ipairs(v:GetChildren()) do 
                            if string.find(v.Name,"Chest") and g:FindFirstChild("Item-Esp") then 
                                for _,p in ipairs(g:GetChildren()) do 
                                    if p:IsA("BillboardGui") then 
                                        p:Destroy()
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end);
        spawn(function()
            while task.wait() and Settings.ChestESP do 
                for i,v in ipairs(game.Workspace:GetChildren()) do 
                    if string.find(v.Name,"Chest") and not v:FindFirstChild("Open") and Settings.ChestESP then 
                        for _,g in ipairs(v:GetChildren()) do 
                            if g.Name == "Base" and not g:FindFirstChild("Item-Esp") then 
                                addui(v,g)
                            end;
                        end;
                    elseif string.find(v.Name,"Chest") and v:FindFirstChild("Open") and Settings.ChestESP then 
                        pcall(function()
                            for _,g in ipairs(v:GetChildren()) do 
                                for _,p in ipairs(g:GetChildren()) do 
                                    if p.Name == "Name" or p.Name == "Item-Esp" then 
                                        p:Destroy()
                                    end;
                                end;
                            end;
                        end);
                    end;
                end;
            end;
        end);
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Kill Aura (Select weapon in 1 slot) ",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
        Settings.Killaura = State;
        while task.wait() and Settings.Killaura do 
            for i,v in ipairs(game.Workspace.Enemies:GetChildren()) do 
                pcall(function()
                    if v:FindFirstChild("HumanoidRootPart") and not v:FindFirstChild("DeadRagdoll") and game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) <= 20 and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
                        game:GetService("ReplicatedStorage").RS.Remotes.Combat.DealWeaponDamage:FireServer(0,game.Players.LocalPlayer.Character,v,game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"),"Slash")
                    end;
                end);
            end;
        end;
   end,
})
local Section = Tab:CreateSection("}", true)




--// Tabs: Misc 
local Tab = Window:CreateTab("Misc")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
	Opções para você executar no seu jogador para te dar vantagens.
	EX { 
		| Ultimate Dash
	}
]]})

local Section = Tab:CreateSection("--// Misc options {", true)

local Toggle = Tab:CreateToggle({
   Name = "Anti Target ",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
        Settings.Undetect = x;
        while wait() and Settings.Undetect do 
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerScripts.NPCAI:Destroy()
            end);
        end;
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Ultimate Dash ",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
		Settings.InfDash = State;
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "infinite Stamina and Walk on Sea ",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
		Settings = State
		if Settings then
			game:GetService("Players").LocalPlayer.bin.MaxStamina:Destroy()
			game:GetService("Players").LocalPlayer.bin.Stamina:Destroy()
		else
			print[[
				Infinite Stamina Desactived
			]]
		end
   end,
})

local Group = 3596833
local Toggle = Tab:CreateToggle({
   Name = "Mod Detector ",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
        Settings.ModDetector = State;
        Group = 3596833
        for i,v in ipairs(game.Players:GetChildren()) do 
            if Settings.ModDetector and v:IsA("Player") and v:IsInGroup(Group) and v:GetRoleInGroup(3596833) == "🎤 Game Moderator" or v:GetRoleInGroup(3596833) == "📃 Group Manager" or v:GetRoleInGroup(3596833) == "📜 Developer" then 
                game:GetService("Players").LocalPlayer:Kick(tostring(v).." joined (Staff)")
            end;
        end;
   end,
})

local Section = Tab:CreateSection("}", true)





--// Tabs: Teleports 
local Tab = Window:CreateTab("Teleports")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
	Uma dica, fica ativando e desativando a toggle de teleport pois a ilha demora para carrega.
	E tambem para não morrer no mar :>
]]})

local Dropdown = Tab:CreateDropdown({
   Name = "Select Islands",
   Options = islands,
   CurrentOption = "",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
		getgenv().SelectIslands = Option
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Teleport Island",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			TeleportIslands()
		else
			print[[
				:

				Teleport Island |  Desactived ✅
				Success
			]]
		end
   end,
})




--// Tabs: Status 
local Tab = Window:CreateTab("Status")
local Paragraph = Tab:CreateParagraph({Title = "Aviso", Content = [[
	Aqui você pode selecionar oque deseja que o script coloque os pontos que você obteve em uma determinada função, EX: {
		Magia, Vitalidade, Força e Armas
	}
]]})

local Toggle = Tab:CreateToggle({
   Name = "Auto Status Vitality",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait(.1) and Settings do
				game:GetService("ReplicatedStorage").RS.Remotes.UI.SpendSP:InvokeServer("Vitality")
			end
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Status Magic",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait(.1) and Settings do
				game:GetService("ReplicatedStorage").RS.Remotes.UI.SpendSP:InvokeServer("Magic")
			end
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Status Strength",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait(.1) and Settings do
				game:GetService("ReplicatedStorage").RS.Remotes.UI.SpendSP:InvokeServer("Strength")
			end
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Status Weapons",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait(.1) and Settings do
			   	game:GetService("ReplicatedStorage").RS.Remotes.UI.SpendSP:InvokeServer("Weapons")
			end
		end
   end,
})





















spawn(function()
    while task.wait() do 
        if Settings.Killaura then
            pcall(function()
                for i,v in ipairs(game.Workspace.Enemies:GetChildren()) do 
                    pcall(function()
                        if v:FindFirstChild("LOADED") and v:FindFirstChild("HumanoidRootPart") and not v:FindFirstChild("DeadRagdoll") and game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) <= 20 then 
                            game:GetService("ReplicatedStorage").RS.Remotes.Combat.DealWeaponDamage:FireServer(0,game.Players.LocalPlayer.Character,v,game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"),"Slash")
                        end;
                    end);
                end;
            end);
        end;
    end;
end);

spawn(function()
    while wait(2) do 
        if Settings.LoadedFarm or Settings.MobFarm  then
            for i,v in ipairs(game:GetService("ReplicatedStorage").RS.UnloadEnemies:GetChildren()) do 
                v.Parent = game.Workspace.Enemies
            end;
        end;
    end;
end);

spawn(function()
    while wait(2) do 
        if Settings.LoadedFarm or Settings.MobFarm  then
            for i,v in ipairs(game:GetService("ReplicatedStorage").RS.Bosses:GetChildren()) do 
                v.Parent = game.Workspace.Enemies
            end;
        end;
    end;
end);

spawn(function()
    while wait(1) do 
        pcall(function()
            if not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and Settings.Killaura then
                game:GetService('VirtualInputManager'):SendKeyEvent(true, "One", false, game) 
            end;
        end);
    end;
end);

spawn(function()
    while wait(1) do 
        if Settings.ChestFarm or Settings.ChestAura or Settings.ChestESP then
            for i,v in ipairs(game.Workspace.Map:GetDescendants()) do 
                if string.find(v.Name,"Chest") then 
                    v.Parent = game.Workspace
                end;
            end;
        end;
    end;
end);


spawn(function()
    while wait(1) do 
        if Settings.FruitFarm then
            for i,v in ipairs(game.Workspace.Map:GetDescendants()) do 
                if v.Name == "Fruit" and v:IsA("Part") then 
                    v.Parent = game.Workspace
                end;
            end;
        end;
    end;
end);

game:GetService("Players").ChildAdded:Connect(function(player)
    if Settings.ModDetector and player:IsA("Player") and player:IsInGroup(Group) and player:GetRoleInGroup(3596833) == "🎤 Game Moderator" or player:GetRoleInGroup(3596833) == "📃 Group Manager" or player:GetRoleInGroup(3596833) == "📜 Developer" then
        game:GetService("Players").LocalPlayer:Kick(tostring(player).." joined (Staff)")
    end
end)

spawn(function()
    while wait() do 
        if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end;
    end;
end);
