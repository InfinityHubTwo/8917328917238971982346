-- Variables
local function addRichText(label)
	label.TextLabel.RichText = true
end
local function FireTool(ToolName)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.Name == ToolName then
            v.Parent = game.Players.LocalPlayer.Character
        end
     end
    for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
        if v.Name == ToolName then
            v:Activate()
        end
    end
end
local function EquipTool(ToolName)
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA('Tool') and v.Name == ToolName then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
        end
    end
end
local Get_Players = function()
    local plrs={}
    for i, v in pairs(game.Players:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            table.insert(plrs, v.Name)
        end
    end
    return plrs
end
local function getexploit()
    local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
        (secure_load and "Sentinel") or
        (is_sirhurt_closure and "Sirhurt") or
        (pebc_execute and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl" and 'Krnl UWP') or
        (WrapGlobal and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getscriptenvs and "Calamari") or
        (unit and not syn and "Unit") or
        (OXYGEN_LOADED and "Oxygen U") or
        (IsElectron and "Electron") or
        ('Valyse') or
        ("Unsupported")
  
    return exploit
  end



-- Libray
local repo = 'https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Linoria/'
local Libray = loadstring(game:HttpGet(repo .. 'Loader.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeMenager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveMenager.lua'))()
Libray:Notify('Script Loaded, Game: '..game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name, 4)
wait(1) Libray:Notify('Welcome '..game.Players.LocalPlayer.Name, 4) wait(1) Libray:Notify('Made by InfinityMercury', 10) wait(1) Libray:Notify('Keybind: J', 10)
local Window = Library:CreateWindow({
    Title = 'Infinity Hub - Version 2.0 - '..game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})
local Tabs = {
    Main = Window:AddTab('Main'),
    Others = Window:AddTab('Others'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}



-- Code
local FarmingBox = Tabs.Main:AddLeftGroupbox('Farming')
FarmingBox:AddToggle('MyToggle', {
    Text = 'Collect all money',
    Default = false,
    Tooltip = 'Click to start collecting all money',
    Callback = function(bool)
        CollectAllMoney = bool
        if CollectAllMoney then
            Libray:Notify('Collecting all money spawned in the game', 4)
            while wait() and CollectAllMoney do
                for i, v in pairs(workspace.Particles:GetChildren()) do
                    if v:IsA('Model') and v.Name == 'Money' then
                        game.Players.LocalPlayer.Character:PivotTo(v:GetPivot())
                        task.wait(.2)
                    end
                end
            end
        end
    end
})
FarmingBox:AddToggle('MyToggle', {
    Text = 'Slap Farm',
    Default = false,
    Tooltip = 'Click to start a slap farm',
    Callback = function(bool)
        SlapFarm = bool
        if SlapFarm then
            Libray:Notify('Starting slap farm', 4)
            task.spawn(function()
                repeat task.wait()
                    for i, v in pairs(workspace.Map.GasStation:GetChildren()) do
                        if v:IsA('Model') then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,1)
                        end
                    end
                    EquipTool('Fight')
                    local A_1 = 'Slap'
                    local Event = game:GetService("Workspace")[game.Players.LocalPlayer.Name].Fight.FightScript.FightEvent
                    Event:FireServer(A_1)
                    FireTool('Fight')
                until SlapFarm == false
            end)
        end
    end
})
FarmingBox:AddLabel('')
FarmingBox:AddDivider()
addRichText(FarmingBox:AddLabel('<font color="#02AF92">        -- Farm Player --</font>'))
FarmingBox:AddDropdown('PlayerDropdown', {
    Values = Get_Players(),
    Default = '...',
    Multi = false,
    Text = 'Select Player',
    Tooltip = 'Select player to farm him',
    Callback = function(Value)
        getgenv().PlayerSelected = Value
    end
})
FarmingBox:AddDropdown('MyDropdown', {
    Values = {'Slap','Kick','Stomp'},
    Default = '...',
    Multi = false,
    Text = 'Select Method',
    Tooltip = 'Select method to farm player',
    Callback = function(Value)
        getgenv().TypeToFarm = Value
    end
})
local MyButton = FarmingBox:AddButton({
    Text = 'Refresh Dropdown',
    Func = function()
        Options.PlayerDropdown:SetValues(Get_Players())
    end,
    DoubleClick = false,
    Tooltip = ''
})
FarmingBox:AddToggle('MyToggle', {
    Text = 'Start Player Farm',
    Default = false,
    Tooltip = '',
    Callback = function(bool)
        FarmPlayerSelected = bool
        if FarmPlayerSelected then
            Libray:Notify('Farming Player: '..getgenv().PlayerSelected, 4)
            task.spawn(function ()
                repeat task.wait()
                    game.Players.LocalPlayer.Character:PivotTo(game.Players[getgenv().PlayerSelected].Character:GetPivot())
                    EquipTool('Fight')
                    local A_1 = getgenv().TypeToFarm
                    local Event = game:GetService("Workspace")[game.Players.LocalPlayer.Name].Fight.FightScript.FightEvent
                    Event:FireServer(A_1)
                until FarmPlayerSelected == false
            end)
        end
    end
})
FarmingBox:AddLabel('')
addRichText(FarmingBox:AddLabel('<font color="#02AF92">        -- More Options --</font>'))
local MyButton = FarmingBox:AddButton({
    Text = 'Anti Ragdoll (Beta)',
    Func = function()
        game.Players.LocalPlayer.Character.Ragdoll.Disabled = true
        local mt = getrawmetatable(game)
        make_writeable(mt)
        local namecall = mt.__namecall
        mt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            local args = {...}
            if method == "FireServer" and tostring(self) == "RagdollEvent" then
               return wait(9e99)
            end
            return namecall(self, table.unpack(args))
        end)
    end,
    DoubleClick = true,
    Tooltip = 'Click to become immune to ragdoll'
})
local MyButton = FarmingBox:AddButton({
    Text = 'Fly Bypass',
    Func = function()
        if game.Players.LocalPlayer.Character.AntiFly.Disabled == false then
            Libray:Notify('Fly bypass activated', 4)
            game.Players.LocalPlayer.Character.AntiFly.Disabled = true
        else
            print('.')
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to bypass fly anti cheat'
})
local MyButton = FarmingBox:AddButton({
    Text = 'No Fall Damage',
    Func = function()
        game.Players.LocalPlayer.Character.FallDamage.Disabled = true
        game.Players.LocalPlayer.Character.FallDamage.LocalFallDamage.Disabled = true
        local mt = getrawmetatable(game)
        make_writeable(mt)
        local namecall = mt.__namecall
        mt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            local args = {...}
            if method == "FireServer" and tostring(self) == "FallDamage" then
               return wait(9e99)
            end
            return namecall(self, table.unpack(args))
        end)
    end,
    DoubleClick = false,
    Tooltip = ''
})
local AnimationBox = Tabs.Main:AddRightGroupbox('Animation')
for i, v in pairs(game:GetService("ReplicatedStorage").Dances:GetChildren()) do
    if v:IsA('Animation') then
        local MyButton = AnimationBox:AddButton({
            Text = v.Name,
            Func = function()
                local track = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Animator:LoadAnimation(v)
                track.Looped = false
                track:Play()
            end,
            DoubleClick = false,
            Tooltip = 'Click to play animation'
        })
    end
end
local TabBox = Tabs.Main:AddRightTabbox()
local WithdrawnTabBox = TabBox:AddTab('Withdrawn')
local MyButton = WithdrawnTabBox:AddButton({
    Text = '5',
    Func = function()
        local args = {
            [1] = {
                ["Amount"] = 5,
                ["Mode"] = "W"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent.ATM:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'Click to play animation'
})
local MyButton = WithdrawnTabBox:AddButton({
    Text = '10',
    Func = function()
        local args = {
            [1] = {
                ["Amount"] = 10,
                ["Mode"] = "W"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent.ATM:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'Click to play animation'
})
local MyButton = WithdrawnTabBox:AddButton({
    Text = '50',
    Func = function()
        local args = {
            [1] = {
                ["Amount"] = 50,
                ["Mode"] = "W"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent.ATM:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'Click to play animation'
})
local MyButton = WithdrawnTabBox:AddButton({
    Text = '100',
    Func = function()
        local args = {
            [1] = {
                ["Amount"] = 100,
                ["Mode"] = "W"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent.ATM:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'Click to play animation'
})
local MyButton = WithdrawnTabBox:AddButton({
    Text = 'Check money deposited',
    Func = function()
        Libray:Notify('Do you have in '..game:GetService("Players").LocalPlayer.PlayerGui.ATMGui.Frame.BG.Bank.Text, 6)
    end,
    DoubleClick = false,
    Tooltip = 'Click to play animation'
})
local DepositTabBox = TabBox:AddTab('Deposit')
local MyButton = DepositTabBox:AddButton({
    Text = '5',
    Func = function()
        local args = {
            [1] = {
                ["Amount"] = 5,
                ["Mode"] = "D"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent.ATM:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'Click to play animation'
})
local MyButton = DepositTabBox:AddButton({
    Text = '10',
    Func = function()
        local args = {
            [1] = {
                ["Amount"] = 10,
                ["Mode"] = "D"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent.ATM:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'Click to play animation'
})
local MyButton = DepositTabBox:AddButton({
    Text = '50',
    Func = function()
        local args = {
            [1] = {
                ["Amount"] = 50,
                ["Mode"] = "D"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent.ATM:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'Click to play animation'
})
local MyButton = DepositTabBox:AddButton({
    Text = '100',
    Func = function()
        local args = {
            [1] = {
                ["Amount"] = 100,
                ["Mode"] = "D"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent.ATM:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'Click to play animation'
})
local MyButton = DepositTabBox:AddButton({
    Text = 'Check money deposited',
    Func = function()
        Libray:Notify('Do you have in '..game:GetService("Players").LocalPlayer.PlayerGui.ATMGui.Frame.BG.Bank.Text, 6)
    end,
    DoubleClick = false,
    Tooltip = 'Click to play animation'
})
local LocalPlayerBox = Tabs.Main:AddLeftGroupbox('Player')
LocalPlayerBox:AddSlider('MySlider', {
    Text = 'WalkSpeed',
    Default = 16,
    Min = 16,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=Value
    end
})
LocalPlayerBox:AddSlider('MySlider', {
    Text = 'JumpPower',
    Default = 16,
    Min = 16,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower=Value
    end
})
LocalPlayerBox:AddToggle('MyToggle', {
    Text = 'Fly (active fly bypass first)',
    Default = false,
    Tooltip = '',
    Callback = function(Value)
        Fly = Value
        if Fly then
            if game.Players.LocalPlayer.Character.AntiFly.Disabled == true then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                local Head = game.Players.LocalPlayer.Character:WaitForChild("Head")
                Head.Anchored = true
                if CFloop then CFloop:Disconnect() end
                CFloop = game:GetService('RunService').Heartbeat:Connect(function(deltaTime)
                    local moveDirection = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (2 * 2)
                    local headCFrame = Head.CFrame
                    local cameraCFrame = workspace.CurrentCamera.CFrame
                    local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
                    cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
                    local cameraPosition = cameraCFrame.Position
                    local headPosition = headCFrame.Position

                    local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
                    Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
                end)

            else
                Libray:Notify('Press fly bypass first', 5)
            end

        else
            if CFloop then
                CFloop:Disconnect()
                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
                local Head = game.Players.LocalPlayer.Character:WaitForChild("Head")
                Head.Anchored = false
            end
        end
    end
})
LocalPlayerBox:AddLabel('')
LocalPlayerBox:AddDivider()
addRichText(LocalPlayerBox:AddLabel('<font color="#02AF92">         -- Safe Zone --</font>'))
LocalPlayerBox:AddLabel('How it works:\nIn the slider below you must enter the amount of life that when your character reaches it will be teleported to a safe zone\n', true)
LocalPlayerBox:AddSlider('MySlider', {
    Text = 'Health',
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
        getgenv().HealthToSafe=Value
    end
})
LocalPlayerBox:AddToggle('MyToggle', {
    Text = 'Auto Safe Zone',
    Default = false,
    Tooltip = '',
    Callback = function(Value)
        AutoSafeZone = Value
        if AutoSafeZone then
            while wait() and AutoSafeZone do
                if game.Players.LocalPlayer.Character.Humanoid.Health < getgenv().HealthToSafe then
                    game.Players.LocalPlayer.Character:PivotTo(workspace.Map.Terrain:GetChildren()[8]:GetPivot())
                end
            end
        end
    end
})
local FunBox = Tabs.Main:AddRightGroupbox('Fun')
FunBox:AddDropdown('MyDropdown', {
    Values = {'Slap','Kick','Stomp'},
    Default = '...',
    Multi = false,
    Text = 'Select Method',
    Tooltip = '',
    Callback = function(Value)
        getgenv().AttackAuraType = Value
    end
})
FunBox:AddToggle('MyToggle', {
    Text = 'Spam Attack Selected',
    Default = false,
    Tooltip = '',
    Callback = function(Value)
        AttackAura = Value
        if AttackAura then
            while wait() and AttackAura do
                EquipTool('Fight')
                local A_1 = getgenv().AttackAuraType
                local Event = game:GetService("Workspace")[game.Players.LocalPlayer.Name].Fight.FightScript.FightEvent
                Event:FireServer(A_1)
            end
        end
    end
})
local MyButton = FunBox:AddButton({
    Text = 'Big HitBox',
    Func = function()
        _G.Size = 20
        _G.Disabled = true
        game:GetService('RunService').RenderStepped:connect(function()
          if _G.Disabled then
            for i,v in next, game:GetService('Players'):GetPlayers() do
              if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function()
                  v.Character.HumanoidRootPart.Size = Vector3.new(_G.Size,_G.Size,_G.Size)
                  v.Character.HumanoidRootPart.Transparency = 0.7
                  v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
                  v.Character.HumanoidRootPart.Material = "Neon"
                  v.Character.HumanoidRootPart.CanCollide = false
                end)
              end
            end
          end
        end)
    end,
    DoubleClick = false,
    Tooltip = ''
})
local MyButton = FunBox:AddButton({
    Text = 'Get All Tools',
    Func = function()
        for i, v in pairs(game:GetService("ReplicatedStorage").RoleplayItems:GetChildren()) do
            if v:IsA('Tool') then
                local cloneTool = v:Clone()
                cloneTool.Parent = game.Players.LocalPlayer.Backpack
            end
        end
    end,
    DoubleClick = false,
    Tooltip = ''
})


local OtherBox = Tabs.Others:AddLeftGroupbox('Others Options')
local MyButton = OtherBox:AddButton({
    Text = 'Lock All Doors',
    Func = function()
        for i, v in pairs(workspace.Map:GetChildren()) do
            if v:IsA('Model') and v.Name == 'House' then
                for i, x in pairs(v:GetDescendants()) do
                    if x:IsA('Part') and x.Name == 'Turner' then
                        local House = v
                        local ClickDetector = x.ClickDetector
                        local Locked = House.Door.Locked

                        if Locked.Value == false then
                            fireclickdetector(ClickDetector)
                        end
                    end
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = ''
})
local MyButton = OtherBox:AddButton({
    Text = 'Unlock All Doors',
    Func = function()
        for i, v in pairs(workspace.Map:GetChildren()) do
            if v:IsA('Model') and v.Name == 'House' then
                for i, x in pairs(v:GetDescendants()) do
                    if x:IsA('Part') and x.Name == 'Turner' then
                        local House = v
                        local ClickDetector = x.ClickDetector
                        local Locked = House.Door.Locked

                        if Locked.Value == true then
                            fireclickdetector(ClickDetector)
                        end
                    end
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = ''
})
local MyButton = OtherBox:AddButton({
    Text = 'Open All Doors',
    Func = function()
        for i, v in pairs(workspace.Map:GetChildren()) do
            if v:IsA('Model') and v.Name == 'House' then
                for i, x in pairs(v:GetDescendants()) do
                    if x:IsA('Part') and x.Name == 'Handle' then
                        local House = v
                        local ClickDetector = x.ClickDetector
                        local OpenValue = House.Door.Open

                        if OpenValue.Value == false then
                            fireclickdetector(ClickDetector)
                        end
                    end
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = ''
})
local MyButton = OtherBox:AddButton({
    Text = 'Close All Doors',
    Func = function()
        for i, v in pairs(workspace.Map:GetChildren()) do
            if v:IsA('Model') and v.Name == 'House' then
                for i, x in pairs(v:GetDescendants()) do
                    if x:IsA('Part') and x.Name == 'Handle' then
                        local House = v
                        local ClickDetector = x.ClickDetector
                        local OpenValue = House.Door.Open

                        if OpenValue.Value == true then
                            fireclickdetector(ClickDetector)
                        end
                    end
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = ''
})
OtherBox:AddLabel('')
local MyButton = OtherBox:AddButton({
    Text = 'Get Invisible Tool',
    Func = function()
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
    DoubleClick = false,
    Tooltip = ''
})
local MyButton = OtherBox:AddButton({
    Text = 'Get All Tools',
    Func = function()
        for i, v in pairs(workspace:GetChildren()) do
            if v:IsA('Tool') then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
        end
        for i, v in pairs(workspace.Map:GetChildren()) do
            if v:IsA('Tool') then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
        end
    end,
    DoubleClick = false,
    Tooltip = ''
})


local BuyOptionsBox = Tabs.Others:AddRightGroupbox('Auto Buy')
local MyButton = BuyOptionsBox:AddButton({
    Text = 'Buy Giant Ray',
    Func = function()
        local A_1 = "Giant Ray"
        local A_2 = game:GetService("Workspace").Map.BuyButtons.CashButtons["Giant Ray"]
        local Event = game:GetService("ReplicatedStorage").RemoteEvent.PurchaseRequest
        Event:FireServer(A_1, A_2)
    end,
    DoubleClick = false,
    Tooltip = ''
})
local MyButton = BuyOptionsBox:AddButton({
    Text = 'Buy Shrink Ray',
    Func = function()
        local A_1 = "Shrink Ray"
        local A_2 = game:GetService("Workspace").Map.BuyButtons.CashButtons["Shrink Ray"]
        local A_3 = {
            ["Color"] = {
                [1] = 1,
                [2] = 0,
                [3] = 0.01568627543747425
            }
        }
        local Event = game:GetService("ReplicatedStorage").RemoteEvent.PurchaseRequest
        Event:FireServer(A_1, A_2, A_3)
    end,
    DoubleClick = false,
    Tooltip = ''
})
local MyButton = BuyOptionsBox:AddButton({
    Text = 'Buy Antigravity Hammer',
    Func = function()
        local ohString1 = "Antigravity Hammer"
        local ohInstance2 = workspace.Map.BuyButtons.CashButtons["Antigravity Hammer"]
        local ohTable3 = {
        	["Color"] = {
        		[1] = 1,
        		[2] = 0,
        		[3] = 0.01568627543747425
        	}
        }
        game:GetService("ReplicatedStorage").RemoteEvent.PurchaseRequest:FireServer(ohString1, ohInstance2, ohTable3)
    end,
    DoubleClick = false,
    Tooltip = ''
})
local MyButton = BuyOptionsBox:AddButton({
    Text = 'Buy Gravity Hammer',
    Func = function()
        local ohString1 = "Gravity Hammer"
        local ohInstance2 = workspace.Map.BuyButtons.CashButtons["Gravity Hammer"]
        local ohTable3 = {
        	["Color"] = {
        		[1] = 1,
        		[2] = 0,
        		[3] = 0.01568627543747425
        	}
        }
        game:GetService("ReplicatedStorage").RemoteEvent.PurchaseRequest:FireServer(ohString1, ohInstance2, ohTable3)end,
    DoubleClick = false,
    Tooltip = ''
})
BuyOptionsBox:AddToggle('MyToggle', {
    Text = 'Auto Buy Shotgun',
    Default = false,
    Tooltip = '',
    Callback = function(Value)
        AutoBuyShotGun = Value
        if AutoBuyShotGun then
            while wait() and AutoBuyShotGun do
                for i, v in pairs(workspace.Map:GetDescendants()) do
                    if v:IsA('Model') and v.Name == 'ShotgunCollector' then
                        for i, x in pairs(v:GetDescendants()) do
                            if x:IsA('TouchTransmitter') then
                                game.Players.LocalPlayer.Character:PivotTo(x.Parent:GetPivot())
                            end
                        end
                    end
                end
            end
        end
    end
})
BuyOptionsBox:AddToggle('MyToggle', {
    Text = 'Auto Buy Gun',
    Default = false,
    Tooltip = '',
    Callback = function(Value)
        AutoBuyShotGun = Value
        if AutoBuyShotGun then
            while wait() and AutoBuyShotGun do
                for i, v in pairs(workspace.Map:GetDescendants()) do
                    if v:IsA('Model') and v.Name == 'GunCollector' then
                        for i, x in pairs(v:GetDescendants()) do
                            if x:IsA('TouchTransmitter') then
                                game.Players.LocalPlayer.Character:PivotTo(x.Parent:GetPivot())
                            end
                        end
                    end
                end
            end
        end
    end
})


local ModOptionsBox = Tabs.Others:AddRightGroupbox('Mod')
addRichText(ModOptionsBox:AddLabel('<font color="#C40000">script in analysed</font>'))
local MyButton = ModOptionsBox:AddButton({
    Text = 'zero Cash/Slaps in shop (BETA)',
    Func = function()
        if getexploit() == 'syn' or 'Synapse' or 'Electron' or 'Valyse' or 'Krnl UWP' or 'Krnl' then
            Libray:Notify('exploit checked, can use script. Exploit: '..getexploit(), 6) wait(1) Libray:Notify('Script Executed!', 4)
            local tableValues = {'Cash','Slaps'}
            warn(unpack(tableValues))

            for i, v in pairs(getgc(true)) do
                if (type(v)=='table' and rawget(v, 'Cash') and rawget(v, 'Slaps')) then
                    rawset(v, 'Cash', 0)
                    rawset(v, 'Slaps', 0)
                end
            end
        else
            Libray:Notify('exploit checked, unable to use script, Exploit: '..getexploit(), 6)
            wait(1)
            Libray:Notify('free exploit with decompiler: Valyse and Electron', 6)
        end
    end,
    DoubleClick = false,
    Tooltip = ''
})



-- libray settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'J', NoUI = true, Text = 'Menu keybind' })
Library.ToggleKeybind = Options.MenuKeybind
