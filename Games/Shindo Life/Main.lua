--// Shindo Life






--[[
    Made by darkzin
            { v 1.0.0 }
    InfinityHub
--]]

repeat task.wait() until game:IsLoaded() 


local Shindo = {
    4616652839,
    4601350214,
    4601350394,
    4601350656,
    4601350809,
    5431071837,
    5447073001,
    5084678830,
    5431069982,
    4601350760,
    6341670805,
    6505734854,
    6901575446,
    6984568732,
    6986372023,
    5451398863,
    7214033433,
    5451401540,
    5307141034,
    7534339269,
    5451410109,
    6593187011,
    6593188260,
    5743370338,
    5664805984,
    5664803952,
    8184506020,
    8472733618,
    7923764447,
    9310522814,
    5451405681,
    7524809704,
    7524811367,
    6602058266,
    5255237254,
    6602103757,
    5824792748,
    4616652839,
    4601350214,
    4601350394,
    4601350656,
    4601350809,
    5431071837,
    5447073001,
    5431069982,
    4601350760,
    6341670805,
    6505734854,
    6901575446,
    6984568732,
    6986372023,
    5451398863,
    7214033433,
    5451401540,
    5307141034,
    7534339269,
    5451410109,
    6593187011,
    6593188260,
    5743370338,
    5664805984,
    5664803952,
    8184506020,
    8472733618,
    7923764447,
    9310522814,
    5451405681,
    7524809704,
    7524811367,
    6602058266,
    5255237254,
    6602103757,
    5824792748
}


--// Notification Libray
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()




--// Others Librarys
loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()
local notifications = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()




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



--// Rayfield Modfied
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/XInfiniteHub/Main/main/Font/Libray/RayFieldModed.lua'))()
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
       Key = "3!aTqFE5)1bm2tI1sRBXF6ybDHG9Ty"
    }
 })
for i,v in pairs(getconnections(Player.Idled)) do
    v:Disable()
end 

RunService.Stepped:connect(
    function()
        sethiddenproperty(Player, "SimulationRadius", 1000)
    end
)



--// Tabs: Info 
local Tab = Window:CreateTab("Info")
local Section = Tab:CreateSection("--// Welcome", true)
local Paragraph = Tab:CreateParagraph({Title = "Bem Vindo", Content = "Bem vindo ao Infinity Hub Shindo Life (Beta)"})


local Section = Tab:CreateSection("--// Game", true)
local Label = Tab:CreateLabel("Shindo Life")


local Section = Tab:CreateSection("--// Hub Version", true)
local Label = Tab:CreateLabel("Hub Version: 1.0.0")




--// Player
local Tab = Window:CreateTab("Local Player")
local Section = Tab:CreateSection("--// Local Player", true)
local Paragraph = Tab:CreateParagraph({Title = "Player Main", Content = "Scripts para o LocalPlayer"})
local Toggle = Tab:CreateToggle({
    Name = "God Mode",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(ActiveGodMode)
        Settings = ActiveGodMode
        if Settings then
        Notification.new("info", "God Mode", "Lembrando que você precisa morrer uma vez para isto funcionar.")
        spawn(function()
        while wait() and Settings do
            pcall(
                function()
                    if Player.Character:FindFirstChild("fakehealth") then
                        Player.Character.fakehealth:Destroy()
                    end
                end
            )
        end
        end)
    end
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Rank",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Rebirth)
        Settings = Rebirth
        spawn(
            function()
                while wait() and Settings do
                    if Player.statz.lvl:FindFirstChild("lvl").Value == 1000 then
                        if Player.statz.prestige.maxlvlpres.Value >= 1 then
                            repeat
                                wait()
                                Player.startevent:FireServer("maxlvlpres")
                            until Player.statz.lvl:FindFirstChild("lvl").Value == 1 or not Settings
                        else
                            repeat
                                wait()
                                Player.startevent:FireServer("rankup")
                            until Player.statz.lvl:FindFirstChild("lvl").Value == 1 or not Settings
                        end
                    end
                end
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
local Section = Tab:CreateSection("--// Farming", true)
local Paragraph = Tab:CreateParagraph({Title = "Farming", Content = "Nesta opções você escolhe oque deseja Auto Farmar"})

local Section = Tab:CreateSection("--// Auto Logs", true)
local Toggle = Tab:CreateToggle({
    Name = "Auto Farm Log",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoLog)
        Settings = AutoLog
        RunService.Stepped:connect(
            function()
                if Settings then
                    NoClip()
                end
            end
        )
        spawn(function()
        while Settings do
            wait()
            pcall(
                function()
                    Player.Character.HumanoidRootPart.CFrame =
                    Workspace.npc.logtraining.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                    Player.Character.combat.update:FireServer("mouse1", true)
                    Player.Character.combat.update:FireServer("mouse1", false)
                end
            )
        end
        end)
    end,
})

local Section = Tab:CreateSection("--// Auto Boss", true)
local Toggle = Tab:CreateToggle({
    Name = "Semi Insta Kill",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(SemiIK)
        Settings = SemiIK

        spawn(function()
            while Settings do wait()
                pcall(function()
                    for i,v in pairs(Workspace.npc:GetChildren()) do
                        if v:IsA("Model") and v:FindFirstChildWhichIsA("Humanoid") then
                            local Humanoid = v:FindFirstChildWhichIsA("Humanoid")
                            if Humanoid.Health < Humanoid.MaxHealth then
                                Humanoid.Health = 0 
                            end 
                        end 
                    end 
                end)
            end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Farm Boss",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoBosses)
        Settings = AutoBosses
        RunService.Stepped:connect(
            function()
                if Settings then
                    NoClip()
                end
            end
        )
        spawn(
            function()
                while Settings do
                    pcall(
                        function()
                            wait()
                            if
                                not Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory").Visible
                             then
                                for i, v in pairs(Workspace.bossdropmission.missions:GetChildren()) do
                                    for i, v in pairs(v:GetChildren()) do
                                        if v:IsA("Model") and v:FindFirstChild("Head") and not v:FindFirstChild("rpaw") then
                                            if
                                                Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                    "Missionstory"
                                                ).Visible == false
                                             then
                                                Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                    CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                                wait(0.5)
                                                v:FindFirstChild("CLIENTTALK"):FireServer()
                                                v:FindFirstChild("CLIENTTALK"):FireServer("accept")
                                            end
                                        end
                                    end
                                end
                            end
                            if Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory").Visible then
                                for i, v in pairs(Workspace.npc:GetChildren()) do
                                    if
                                        v:IsA("Model") and v:FindFirstChild("npctype") and
                                            not v.Head.mob.fram.name.info.Text:find("Spirit") and not v:FindFirstChild("rpaw") and
                                            string.find(
                                                Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                    "Missionstory"
                                                ).bg.name.Text,
                                                v.Head.mob.fram.name.info.Text
                                            ) and
                                        v.Head.CFrame.Y > -1000
                                     then
                                        if
                                            Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                "Missionstory"
                                            ).Visible == true
                                         then
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                            Player.Character.combat.update:FireServer("mouse1", true)
                                            Player.Character.combat.update:FireServer("mouse1", false)
        
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
    end,
})

local Section = Tab:CreateSection("--// Auto Mobs", true)
local Toggle = Tab:CreateToggle({
    Name = "Auto Farm Mobs",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoMobs)
        Settings = AutoMobs
        RunService.Stepped:connect(
            function()
                if Settings then
                    pcall(
                        function()
                            NoClip()
                        end
                    )
                end
            end
        )
        spawn(
            function()
                while Settings do
                    wait()
                    pcall(
                        function()
                            if
                                not Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory").Visible
                            then
                                for i, v in pairs(Workspace.missiongivers:GetChildren()) do
                                    if
                                        v:FindFirstChild("Head") and v.Head:FindFirstChild("givemission") and
                                        v.Head.givemission.Enabled and
                                        v.Head.givemission:FindFirstChild("color").Image ==
                                        "http://www.roblox.com/asset/?id=5459241648"
                                    then
                                        if
                                            Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                "Missionstory"
                                            ).Visible == false
                                        then
                                            repeat
                                                wait()
                                                Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                    CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                                v:FindFirstChild("CLIENTTALK"):FireServer()
                                                v:FindFirstChild("CLIENTTALK"):FireServer("accept")
                                            until Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                "Missionstory"
                                            ).Visible 
                                        end
                                    end
                                end
                            end
                            if Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory").Visible then
                                for i, v in pairs(Workspace.npc:GetChildren()) do
                                    if
                                        v:IsA("Model") and v:FindFirstChild("npctype") and
                                        string.find(Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                "Missionstory"
                                            ).bg.name.Text,
                                            v.Head.mob.fram.name.info.Text
                                            
                                        ) and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v:FindFirstChild("Humanoid") and
                                        v.Head.CFrame.Y > -1000
                                    then
                                        pcall(
                                            function()
                                                wait(0.2)
                                                Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                    CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0, 0, 3)) 
                                                
                                                    
                                              
                                                wait(0.2)
                                                Player.Character.combat.update:FireServer("mouse1", true)
                                                Player.Character.combat.update:FireServer("mouse1", false)
                                                local Humanoid = v:FindFirstChildWhichIsA("Humanoid")
                                              
                                            end
                                        )
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
    end,
})

local Section = Tab:CreateSection("--// Auto Dungeon", true)
local Toggle = Tab:CreateToggle({
    Name = "Auto Farm Dungeon",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoDungeon)
        Settings = AutoDungeon
        RunService.Stepped:connect(
            function()
                if Settings then
                    pcall(
                        function()
                            NoClip()
                        end
                    )
                end
            end
        )
        spawn(
            function()
                while Settings do
                    wait()
                    pcall(
                        function()
                            for i, v in pairs(Workspace.npc:GetChildren()) do
                                if v:FindFirstChild("npctype") then
                                    return
                                end
                                if
                                    v:IsA("Model") and v:FindFirstChild("npctype") and v:FindFirstChild("HumanoidRootPart") and
                                        v:FindFirstChild("Humanoid") and
                                        v.Head.CFrame.Y > -1000
                                 then
                                    pcall(
                                        function()
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                            
                                                
                                            
                                            Player.Character.combat.update:FireServer("mouse1", true)
                                            Player.Character.combat.update:FireServer("mouse1", false)
                                        
                                        end
                                    )
                                end
                            end
                        end
                    )
                end
            end
        )
    end,
})


local Section = Tab:CreateSection("--// Auto War", true)
local Toggle = Tab:CreateToggle({
    Name = "Auto Farm War",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoWar)
        Settings = AutoWar
        RunService.Stepped:connect(
            function()
                if Settings then
                    NoClip()
                end
            end
        )
        spawn(
            function()
                while Settings do
                    wait()
                    pcall(
                        function()
                            for i, v in pairs(workspace.npc:GetChildren()) do
                                if
                                    v:IsA("Model") and v:FindFirstChild("npc") and string.find(v.Name, "npc") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v:FindFirstChild("Humanoid") and
                                        v.Head.CFrame.Y > -1000 and
                                        not v:FindFirstChild("megaboss")
                                 then
                                    Player.Character.combat.update:FireServer("mouse1", true)
                                    Player.Character.combat.update:FireServer("mouse1", false)
                                    Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                        CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health < v.Humanoid.MaxHealth then
                                        v.Humanoid.Health = 0
                                    end
                                elseif
                                    v:IsA("Model") and v:FindFirstChild("npc") and string.find(v.Name, "npc") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v:FindFirstChild("Humanoid") and
                                        v.Head.CFrame.Y > -1000 and
                                        v:FindFirstChild("megaboss")
                                 then
                                    wait(6)
                                    Player.Character.combat.update:FireServer("mouse1", true)
                                    Player.Character.combat.update:FireServer("mouse1", false)
                                    Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                        CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                end
                            end
                        end
                    )
                end
            end
        )
    end,
})



--// Points
local Tab = Window:CreateTab("Upgrades")
local Section = Tab:CreateSection("--// Upgrades", true)
local Paragraph = Tab:CreateParagraph({Title = "Upgrades Info", Content = "Selecione alguma das opções abaixo para setar o seus pontos em Chakra, Tai, Chi, ou Nin"})

local Toggle = Tab:CreateToggle({
    Name = "Auto Upgrade Chakra",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoChi)
        Settings = AutoChi
        spawn(function()
        while Settings do
            wait()
            Player.startevent:FireServer("addstat", "chakra", 5)
        end
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Upgrade Ninjutsu",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoNin)
        Settings = AutoNin
        spawn(function()
        while Settings do
            wait()
            Player.startevent:FireServer("addstat", "ninjutsu", 5)
        end
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Upgrade Taijutsu",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoTai)
        Settings = AutoTai
        spawn(function()
        while Settings do
            wait()
            Player.startevent:FireServer("addstat", "taijutsu", 5)
        end
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Auto Upgrade Health",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoHp)
        Settings = AutoHp
        spawn(function()
        while Settings do
            wait()
            Player.startevent:FireServer("addstat", "health", 5)
        end
        end)
    end,
})




---// Auto Key Press
local Tab = Window:CreateTab("Press Key")
local Section = Tab:CreateSection("--// Press Key", true)
local Paragraph = Tab:CreateParagraph({Title = "Press Key Info", Content = "Ao selecionar alguma das opções ele vai fica precionando a Key automaticamente (A que você selecionou)"})

local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress R",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyR)
        Settings = AutoKeyR
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"R",false,uwu)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress T",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyT)
        Settings = AutoKeyT
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"T",false,uwu)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress Y",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyY)
        Settings = AutoKeyY
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"Y",false,uwu)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress X",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyX)
        Settings = AutoKeyX
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"X",false,uwu)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress G",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyG)
        Settings = AutoKeyG
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"G",false,uwu)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress H",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyH)
        Settings = AutoKeyH
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"H",false,uwu)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress Q",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyQ)
        Settings = AutoKeyQ
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"Q",false,uwu)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress E",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyE)
        Settings = AutoKeyE
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"E",false,uwu)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress V",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyV)
        Settings = AutoKeyH
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"V",false,uwu)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress B",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyB)
        Settings = AutoKeyB
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"B",false,uwu)
        end 
        end)
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "AutoKeyPress N",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(AutoKeyH)
        Settings = AutoKeyH
        spawn(function()
        while Settings do
            wait()
        VirtualInputManager:SendKeyEvent(true,"N",false,uwu)
        end 
        end)
    end,
})
