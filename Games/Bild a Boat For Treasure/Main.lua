--// Bild a boat for treasure






--[==================[

    Bild a boat for tesure Script Op
        { v 1.0.0 }
    Made By Darkzin

--]==================]

repeat wait() until game:IsLoaded() wait()


--// Variables
local wait = task.wait
local spawn = task.spawn
local Player = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local VirtualInputManager = game:GetService('VirtualInputManager')
local TeleportService = game:GetService("TeleportService")
local Settings
function ToxmodsisHOT()
    game.workspace.Gravity = 0
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-51.1823959, 80.6168747, -536.437805)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(30, Enum.EasingStyle.Linear)
    tween =
        tweenService:Create(
        game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
        tweenInfo,
        {CFrame = CFrame.new(-60.5737877, 53.9498825, 8666.35059)}
    )
    tween:Play()
    wait(30)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
    tween =
        tweenService:Create(
        game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
        tweenInfo,
        {CFrame = CFrame.new(-55.5486526, -360.063782, 9489.0498)}
    )
    tween:Play()
    game.workspace.Gravity = 196.2
end
getgenv().Number = 1




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
local Section = Tab:CreateSection("--// Welcome", true)
local Paragraph = Tab:CreateParagraph({Title = "Welcome", Content = "Bem vindo ao Infinity Hub Bild a boat for tesure."})


local Section = Tab:CreateSection("--// Game", true)
local Label = Tab:CreateLabel("Build a Boat For Treasure")


local Section = Tab:CreateSection("--// Hub Version", true)
local Label = Tab:CreateLabel("Hub Version: 1.0.0")




--// Player
local Tab = Window:CreateTab("Local Player")
local Section = Tab:CreateSection("--// Client", true)
local Paragraph = Tab:CreateParagraph({Title = "Info", Content = "Scripts para o LocalPlayer."})

local Toggle = Tab:CreateToggle({
    Name = "Water God Mode",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(WaterGod)
        Settings = WaterGod
        game:GetService("RunService").Stepped:connect(
            function()
                pcall(
                    function()
                        if Settings and game.Players.LocalPlayer.Character:FindFirstChild("WaterDetector") then
                            game.Players.LocalPlayer.Character.WaterDetector:remove()
                        end
                    end
                )
            end
        )
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(InfiniteJump)
        Settings = InfiniteJump
        UserInputService.JumpRequest:connect(
            function()
                if Settings then
                    game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass "Humanoid":ChangeState("Jumping")
                end
            end
        )
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Invisible Cam",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Invisicam)
        Settings = Invisicam
        if Settings then
            Player.DevCameraOcclusionMode = "Invisicam"
        else
            Player.DevCameraOcclusionMode = "Zoom"
        end
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "N Noclip",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(NNoclip)
        noclips = false
        Settings = NNoclip
        Player:GetMouse().KeyDown:connect(
            function(v)
                if v == "n" then
                    if Settings then
                        noclips = not noclips
                        for i, v in pairs(Player.Character:GetChildren()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                end
            end
        )
        RunService.Stepped:connect(
            function()
                if noclips then
                    for i, v in pairs(Player.Character:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end
        )
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Server Hop",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(ServerHop)
        Settings = ServerHop
        spawn(function()
        while Settings do wait(2)
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        local File = pcall(function()
            AllIDs = HttpService:JSONDecode(readfile("NotSameServers.json"))
        end)
        if not File then
            table.insert(AllIDs, actualHour)
            writefile("NotSameServers.json", HttpService:JSONEncode(AllIDs))
        end
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    delfile("NotSameServers.json")
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            writefile("NotSameServers.json", HttpService:JSONEncode(AllIDs))
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, Player)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport()
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        -- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
        Teleport() 
        end 
        end)
    end,
})
local Button = Tab:CreateButton({
    Name = "Anti Lag",
    Info = "If your game is laging, click this",
    Callback = function()
        for _, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
                v.Material = Enum.Material.SmoothPlastic
                if v:IsA("Texture") then
                    v:Destroy()
                end
            end
        end
    end,
})




--// Farming
local Tab = Window:CreateTab("Farming")
local Section = Tab:CreateSection("--// Farms", true)
local Paragraph = Tab:CreateParagraph({Title = "Farming", Content = "Selecione uma das opções para Auto Farmar automaticamente."})

local Toggle = Tab:CreateToggle({
    Name = "Auto Farm",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoFarm)
        Settings = AutoFarm
        game:GetService("RunService").Stepped:connect(
            function()
                if Settings then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
                end
            end
        )
        if Settings then
            ToxmodsisHOT()
        end
        
        if not Settings then
            game.Players.LocalPlayer.Character.Head:Destroy()
        end
        
        game.Players.LocalPlayer.CharacterAdded:Connect(
            function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                wait(3)
                if Settings then
                    ToxmodsisHOT()
                end
            end
        )
    end,
})
local Section = Tab:CreateSection("--// More soon...", true)




--// Auto Buy Chests
local Tab = Window:CreateTab("Auto Buy Chests")
local Section = Tab:CreateSection("--// Buy Chest", true)
local Paragraph = Tab:CreateParagraph({Title = "Info", Content = "Lembrando que ele vai gasta o seu dinheiro e ira abri-lo automaticamente."})

local Toggle = Tab:CreateToggle({
    Name = "Auto Common Chest",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoCommunChest)
        Settings = AutoCommunChest
        game:GetService('RunService').Stepped:connect(function()
        if Settings then
        workspace.ItemBoughtFromShop:InvokeServer("Common Chest",getgenv().Number)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto UnCommon Chest",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoUnCommunChest)
        Settings = AutoUnCommunChest
        game:GetService('RunService').Stepped:connect(function()
        if Settings then
        workspace.ItemBoughtFromShop:InvokeServer("Uncommon Chest",getgenv().Number)
        end
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Rare Chest",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoRareChest)
        Settings = AutoRareChest
        game:GetService('RunService').Stepped:connect(function()
        if Settings then
        workspace.ItemBoughtFromShop:InvokeServer("Rare Chest",getgenv().Number)
        end
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Epic Chest",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoEpicChest)
        Settings = AutoEpicChest
        game:GetService('RunService').Stepped:connect(function()
        if Settings then
        workspace.ItemBoughtFromShop:InvokeServer("Epic Chest",getgenv().Number)
        end
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Legendary Chest",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoLegendaryChest)
        Settings = AutoLegendaryChest
        game:GetService('RunService').Stepped:connect(function()
        if Settings then
        workspace.ItemBoughtFromShop:InvokeServer("Legendary Chest",getgenv().Number)
        end
        end)
    end,
})
