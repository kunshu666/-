function Notify(Title1, Text1, Icon1, Time1)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = Title1,
        Text = Text1,
        Icon = Icon1,
        Duration = Time1,
    })
end
Notify("启动完成", "持续更新", "rbxassetid://17360377302", 3)
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = {}

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("标准时间"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S").."秒")
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local Library = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\102\50\48\105\51\48\115\52\48\104\47\76\117\97\87\97\114\101\85\73\45\76\105\98\47\109\97\105\110\47\76\46\108\117\97"))()
local Window = Library:new("坤中心")

local creds = Window:Tab("公告",'16060333448')
local bin = creds:section("注入器信息",true)
local about = creds:section("作者",true)
local credits = creds:section("关闭",true)

local Main = Window:Tab("通用",'16060333448')
local General = Main:section("通用&玩家",true)

local Games = Window:Tab("主要",'16060333448')
local JSDGg =Games:section("驾驶帝国",false)
local FMDH =Games:section("伐木大亨2",false)
local SKQS = Games:section("鲨口求生2",false)
local DOORS = Games:section("doors",false)
local LLCQ = Games:section("力量传奇",false)
local JYRS = Games:section("监狱人生",false)
local ZDYS = Games:section("战斗勇士",false)
local RZCQ = Games:section("忍者传奇",false)
local HBTX = Games:section("河北唐县",false)
local ZRZH = Games:section("自然灾害",false)

local XGTab = Window:Tab("新更",'16060333448')
local XG = XGTab:section("新更",true)

bin:Label("你的用户名:"..game.Players.LocalPlayer.Name)
bin:Label("你的注入器:"..identifyexecutor())
bin:Label("服务器id:"..game.GameId)

about:Label("坤叔制作")
about:Label("作者qq2285917475")
about:Label("坤工作室")
about:Button("坤工作室", function()
    setclipboard("1")
end)
about:Button("作者坤叔", function()
    setclipboard("2")
end)
about:Button("暂时免费", function()
    setclipboard("3")
end)
about:Button("拒绝倒卖", function()
     setclipboard("4")
end)
about:Button("复制作者QQ", function()
    setclipboard("2285917475")
end)
about:Button("复制QQ群", function()
    setclipboard("暂时没群")
end)

credits:Toggle("透明界面", "Rainbow", false, function(Rainbow)
    if Rainbow then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
    else
        game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
    end
end)
credits:Button("关闭脚本",function()
    game:GetService("CoreGui")["frosty"]:Destroy()
end)

General:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
    spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)
General:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
    spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)
General:Textbox("重力设置!", "Gravity", "输入", function(Gravity)
    spawn(function() while task.wait() do game.Workspace.Gravity = Gravity end end)
end)
General:Toggle("夜视!", "YLight", false, function(Light)
    spawn(function() while task.wait() do if Light then game.Lighting.Ambient = Color3.new(1, 1, 1) else game.Lighting.Ambient = Color3.new(0, 0, 0) end end end)
end)
General:Button("透视!", function()
    local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
        end
    end
    game.Players.PlayerAdded:Connect(function(player)
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = player.Character
            highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.Name = "Highlight"
        end
    end)
    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlightClone.Name = "Highlight"
                task.wait()
            end
        end
    end)
end)

General:Button("肏人脚本", function()
    local SimpleSexGUI = Instance.new("ScreenGui")
 
local FGUI = Instance.new("Frame")
 
local btnNaked = Instance.new("TextButton")
 
local btnSex = Instance.new("TextButton")
 
local tbxVictim = Instance.new("TextBox")
 
local lblFUCKEMALL = Instance.new("TextLabel")
 
local ImageLabel = Instance.new("ImageLabel")
 
local lbltitle = Instance.new("TextLabel")
 
local TextLabel = Instance.new("TextLabel")
 
 
 
 
 
 
 
 
--Properties
 
SimpleSexGUI.Name = "SimpleSexGUI"
SimpleSexGUI.Parent = game.CoreGui
 
 
FGUI.Name = "FGUI"
FGUI.Parent = SimpleSexGUI
FGUI.BackgroundColor3 = Color3.new(255,255,255)
FGUI.BorderSizePixel = 1
FGUI.Position = UDim2.new(0,0, 0.667, 0)
FGUI.Size = UDim2.new(0,317, 0,271)
FGUI.Draggable = true
 
 
 
lbltitle.Name = "Title"
lbltitle.Parent = FGUI
lbltitle.BackgroundColor3 = Color3.new(255,255,255)
lbltitle.BorderSizePixel = 1
lbltitle.Position = UDim2.new (0, 0,-0.122, 0)
lbltitle.Size = UDim2.new (0, 317,0, 33)
lbltitle.Visible = true
lbltitle.Active = true
lbltitle.Draggable = false
lbltitle.Selectable = true
lbltitle.Font = Enum.Font.SourceSansBold
lbltitle.Text = "一个简单的艹人GUI!!"
lbltitle.TextColor3 = Color3.new(0, 0, 0)
lbltitle.TextSize = 20
 
 
 
 
 
btnSex.Name = "Sex"
btnSex.Parent = FGUI
btnSex.BackgroundColor3 = Color3.new(255,255,255)
btnSex.BorderSizePixel = 1
btnSex.Position = UDim2.new (0.044, 0,0.229, 0)
btnSex.Size = UDim2.new (0, 99,0, 31)
btnSex.Visible = true
btnSex.Active = true
btnSex.Draggable = false
btnSex.Selectable = true
btnSex.Font = Enum.Font.SourceSansBold
btnSex.Text = "点我艹人"
btnSex.TextColor3 = Color3.new(0, 0, 0)
btnSex.TextSize = 20
 
 
 
 
tbxVictim.Name = "VictimTEXT"
tbxVictim.Parent = FGUI
tbxVictim.BackgroundColor3 = Color3.new(255,255,255)
tbxVictim.BorderSizePixel = 1
tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0)
tbxVictim.Size = UDim2.new (0, 133,0, 27)
tbxVictim.Visible = true
tbxVictim.Active = true
tbxVictim.Draggable = false
tbxVictim.Selectable = true
tbxVictim.Font = Enum.Font.SourceSansBold
tbxVictim.Text = "输入要艹的人的名字"
tbxVictim.TextColor3 = Color3.new(0, 0, 0)
tbxVictim.TextSize = 20
 
lblFUCKEMALL.Name = "FUCKEMALL"
lblFUCKEMALL.Parent = FGUI
lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255)
lblFUCKEMALL.BorderSizePixel = 1
lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0)
lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27)
lblFUCKEMALL.Visible = true
lblFUCKEMALL.Font = Enum.Font.SourceSansBold
lblFUCKEMALL.Text = "艹人和艹人"
lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0)
lblFUCKEMALL.TextSize = 20
 
ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = FGUI
ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..."
ImageLabel.BorderSizePixel = 1
ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0)
ImageLabel.Size = UDim2.new (0, 106,0, 121)
 
 
 
 
--Scripts
 
 
btnSex.MouseButton1Click:Connect(function()
 
local player = tbxVictim.Text
local stupid = Instance.new('Animation')
stupid.AnimationId = 'rbxassetid://148840371'
hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
pcall(function()
    hummy.Parent.Pants:Destroy()
end)
pcall(function()
    hummy.Parent.Shirt:Destroy()
end)
local notfunny = hummy:LoadAnimation(stupid)
notfunny:Play()
notfunny:AdjustSpeed(10)
while hummy.Parent.Parent ~= nil do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
end
end)
end)


General:Button("隐身道具", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
end)
General:Toggle("穿墙(可用)", "NoClip", false, function(NC)
    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    if NC then
        Clipon = true
    else
        Clipon = false
    end
    Stepped = game:GetService("RunService").Stepped:Connect(function()
        if not Clipon == false then
            for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Players.LocalPlayer.Name then
                    for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end
        else
            Stepped:Disconnect()
        end
    end)
end)
General:Button("最强透视",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY"))()
end)
General:Button("飞行v3",function()
    loadstring(game:HttpGet'https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt')()
end)
General:Button("甩人",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
General:Button("反挂机v2",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)
General:Button("铁拳",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'),true))()
end)
General:Button("键盘",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
General:Button("光影v4",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
General:Button("动画中心",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)
General:Button("立即死亡",function()
    game.Players.LocalPlayer.Character.Humanoid.Health=0
end)
General:Button("爬墙",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)
General:Button("转起来",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)
General:Button("子弹追踪",function()
    getgenv().LS="k1s"
loadstring(game:HttpGet("https://pastebin.com/raw/1AJ69eRG"))()
end)
General:Button("飞车",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
end)
General:Button("Synapse X",function()
     loadstring(game:HttpGet("https://pastebin.com/raw/tWGxhNq0"))()
end)

ZRZH:Button("脚本1", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
end)


JSDGg:Button("自动刷钱", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire"))()
end)

FMDH:Button("伐木大亨2", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf"))()
end)

SKQS:Dropdown("免费船只", "FreeBoat", {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"}, function(CS)
    game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(CS)
end)
SKQS:Button("自动杀鲨鱼🦈", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
end)

DOORS:Button("NBDoors", function()
    loadstring(game:HttpGet("https://github.com/DocYogurt/DOORS/raw/main/Loader.lua"))()
end)
DOORS:Button("AND已汉化 推荐配合穿墙", function()
    --[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
end)
DOORS:Button("穿墙(无拉回)", function()
    loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
end)
DOORS:Button("手电筒", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/9Daqa4hD'))()
end)
DOORS:Button("拯救上帝", function()
    local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/lyyaini/lon/main/eodk"))()
    local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/lyyaini/lon/main/eosk"))()
    local tweenService = game:GetService("TweenService")
    local jesusModel = game:GetObjects("rbxassetid://13048955592")[1] or LoadCustomInstance("rbxassetid://13048955592") 
    local caveModel = game:GetObjects("rbxassetid://13049026203")[1] or LoadCustomInstance("rbxassetid://13049026203")
    local CameraShaker = require(game:GetService("ReplicatedStorage").CameraShaker)
    local ranBoulderProximityPrompt = false
    -- Npcs
    local civilian1 = game:GetObjects("rbxassetid://13051551926")[1]
    local civilian2 = game:GetObjects("rbxassetid://13051633935")[1]
    local civilian3 = game:GetObjects("rbxassetid://13052090579")[1]
    local tablewithuno = game:GetObjects("rbxassetid://13053069721")[1]
    local luk3 = game:GetObjects("rbxassetid://13053085601")[1]
    local upio = game:GetObjects("rbxassetid://13053089753")[1]
    --Toy and Model For The Egg
    local easternegg = game:GetObjects("rbxassetid://13053213567")[1]
    -- misc functions
    function deleteStuff()
        if workspace.CurrentRooms["0"]:FindFirstChild("RiftSpawn") then
            workspace.CurrentRooms["0"].RiftSpawn:Destroy()
        end    
        for _,i in ipairs(workspace.CurrentRooms["0"].Assets:GetChildren()) do
            if i.Name == "Luggage" or i.Name == "Luggage_Cart" or i.Name == "Luggage_Cart_Crouch" then
                i:Destroy()
            end
        end
    end
    function fadeOutThing(object,seconds)
        for _,instance in ipairs(object:GetDescendants()) do
            if instance:IsA("MeshPart") or instance:IsA("UnionOperation") or instance:IsA("Part") or instance:IsA("Decal") then
                print()
                tweenService:Create(instance, TweenInfo.new(seconds,Enum.EasingStyle.Quad), {["Transparency"] = 1}):Play()
            end
        end
    end
    function fadeInThing(object,seconds)
        local function fadeIn(part,seconds)
            local initialTransparency = part.Transparency
            part.Transparency = 1
            local tween = tweenService:Create(part, TweenInfo.new(seconds, Enum.EasingStyle.Quad), {Transparency = initialTransparency}):Play()
        end
        for _, instance in pairs(object:GetDescendants()) do
            if instance:IsA("MeshPart") or instance:IsA("UnionOperation") or instance:IsA("Part") or instance:IsA("Decal") then
                fadeIn(instance,seconds)
            end
        end
    end
    -- parenting stuff
    jesusModel.Parent = workspace
    caveModel.PrimaryPart = caveModel.Boulder
    -- i forgot to set it's primary part ._.
    jesusModel.PrimaryPart = jesusModel["Plank Vertical"]
    -- tp in front of the elevator
    jesusModel:PivotTo(CFrame.new(Vector3.new(0.237418652, 2.02649975, 3241.82837, -1.62920685e-07, -1, 1.40790661e-07, 1, -1.62920685e-07, -3.58895669e-08, 3.58895882e-08, 1.40790661e-07, 1)) * CFrame.Angles(0, math.rad(180), math.rad(90)))
    -- delete misc things that might interfere
    deleteStuff()
    -- main code
    jesusModel.jesus.ProximityPrompt.Triggered:Connect(function()
        Achievements.Get({Title = "成功解锁彩蛋", Desc = "你拯救了十字架上的耶稣", Reason = "k1s魔改", Image = "https://raw.githubusercontent.com/persopoiu/scripts/main/66963_easter_egg_green_icon.png"})
        -- fade out
        fadeOutThing(jesusModel,0.5)
        wait(0.5)
        jesusModel:Destroy()
        -- fade in
        caveModel.Parent = workspace
        wait()
        fadeInThing(caveModel,1.5)
        -- move the cave model
        caveModel:PivotTo(CFrame.new(Vector3.new(0, -1.3, 3250, 1, 0, 0, 0, 1, 0, 0, 0, 1)) * CFrame.Angles(math.rad(-90), 0, 0))
        -- Npc 1
        civilian1.Parent = game.workspace
            wait()
        fadeInThing(civilian1,1.5)
       -- Npc 2
        civilian2.Parent = game.workspace
            wait()
        fadeInThing(civilian2,1.5)
        --npc 3
        civilian3.Parent = game.workspace
            wait()
        fadeInThing(civilian3,1.5)
        --Easteregg
        easternegg.Parent = game.workspace
            wait()
        fadeInThing(easternegg,1.5)
        --tablewithuno
        tablewithuno.Parent = game.workspace
            wait()
        fadeInThing(tablewithuno,1.5)
        --Luk3
        luk3.Parent = game.workspace
            wait()
        fadeInThing(luk3,1.5)
        --Upio
        upio.Parent = game.workspace
            wait()
        fadeInThing(upio,1.5)
    end)
    caveModel.Boulder.ProximityPrompt.Triggered:Connect(function()
        spawn(function()
            if not ranBoulderProximityPrompt then
                -- caption
                firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, '你挪动了石头放出了上帝',true,2.5)
                -- camera shake
                local camShake = CameraShaker.new(200, function(shakeCFrame)
                    game.Workspace.CurrentCamera.CFrame = game.Workspace.CurrentCamera.CFrame * shakeCFrame
                end)
                camShake:Start()
                camShake:Shake(CameraShaker.Presets.Explosion)
                wait(1)
                camShake:Stop()
                ranBoulderProximityPrompt = true
            end
        end)
        local boulder = caveModel.Boulder
        spawn(function()
            for _,i in ipairs(workspace.cave:GetChildren()) do
                if i.Name == " " then
                    fadeOutThing(i,.5)
                end
            end
            wait(.5)
            for _,i in ipairs(workspace.cave:GetChildren()) do
                if i.Name == " " then
                    i:Destroy()
                end
            end
        end)
        tweenService:Create(boulder, TweenInfo.new(1.2, Enum.EasingStyle.Quad),{["Rotation"] = Vector3.new(80,0,0), ["Position"] = Vector3.new(boulder.Position.X,boulder.Position.Y,3258)}):Play()
        while wait(0.1) do
            local primaryPart = caveModel.Jesus.Torso
            local camera = workspace.CurrentCamera
            local player = game.Players.LocalPlayer
            local distanceThreshold = 10 -- the maximum distance between the player and the Jesus model for the achievement to be earned
            -- check if the player is within the distance threshold of the Jesus model's primary part
            local distance = (primaryPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance <= distanceThreshold then
                -- check if the player's camera is looking at the Jesus model's primary part
                local direction = primaryPart.Position - camera.CFrame.Position
                local dotProduct = direction.Unit:Dot(camera.CFrame.LookVector.Unit)
                if dotProduct > 0.9 then -- the player is looking at the Jesus model
                    break
                end
            end
        end
        Achievements.Get({Title = "救出耶稣已解锁", Desc = "谢谢你救了我", Reason = "我将赐予你力量", Image = "https://github.com/persopoiu/scripts/raw/main/Untitled.png"})
        loadstring(game:HttpGet('https://pastebin.com/raw/M3X9iuE1'))()
    end)
    local npcdialogue = Instance.new("ScreenGui")
    local dialogueFrame = Instance.new("ImageLabel")
    local dialogueLabel = Instance.new("TextLabel")
    
    npcdialogue.Name = "npcdialogue"
    npcdialogue.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    npcdialogue.Enabled = false
    npcdialogue.ResetOnSpawn = false
    
    dialogueFrame.Name = "dialogueFrame"
    dialogueFrame.Parent = npcdialogue
    dialogueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    dialogueFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dialogueFrame.BackgroundTransparency = 1.000
    dialogueFrame.Position = UDim2.new(0.5, 0, 0.850000024, 0)
    dialogueFrame.Size = UDim2.new(0.5, 0, 0.200000003, 0)
    dialogueFrame.Image = "rbxassetid://3570695787"
    dialogueFrame.ImageColor3 = Color3.fromRGB(45, 45, 45)
    dialogueFrame.ScaleType = Enum.ScaleType.Slice
    dialogueFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    dialogueFrame.SliceScale = 0.120
    
    dialogueLabel.Name = "dialogueLabel"
    dialogueLabel.Parent = dialogueFrame
    dialogueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dialogueLabel.BackgroundTransparency = 1.000
    dialogueLabel.Size = UDim2.new(1, 0, 1, 0)
    dialogueLabel.Font = Enum.Font.Oswald
    dialogueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    dialogueLabel.TextScaled = true
    dialogueLabel.TextSize = 14.000
    dialogueLabel.TextWrapped = true
    
    local function npc1dialogue()
        dialogueLabel.Text = "小子你也玩原神吗我们都喜欢玩原神"
        local text = dialogueLabel.Text
        for i = 1, #text do
            dialogueLabel.Text = string.sub(text, 1, i)
            wait(0.05) -- Adjust the speed of the typing effect
        end
    end
local function npc2dialogue()
    dialogueLabel.Text = "向上帝祈祷傻逼东西 "
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end
local function npc3dialogue()
    dialogueLabel.Text = "艹你马，挡着我看电视了让开!"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end
local function luk3dialogue()
    dialogueLabel.Text = "你个傻逼东西还玩迷你世界？"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end
local function upiodialogue()
    dialogueLabel.Text = "原神太好玩了我最喜欢玩这个游戏了"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end
civilian1.ModulePrompt.Triggered:Connect(function()
     npcdialogue.Enabled = true
     npc1dialogue()
     wait(2)
     npcdialogue.Enabled = false
end)
civilian2.ModulePrompt.Triggered:Connect(function()
     npcdialogue.Enabled = true
    npc2dialogue()
     wait(2)
    npcdialogue.Enabled = false
end)
civilian3.ModulePrompt.Triggered:Connect(function()
     npcdialogue.Enabled = true
    npc3dialogue()
     wait(2)
    npcdialogue.Enabled = false
end)
luk3.ModulePrompt.Triggered:Connect(function()
     npcdialogue.Enabled = true
    luk3dialogue()
     wait(2)
    npcdialogue.Enabled = false
end)
upio.ModulePrompt.Triggered:Connect(function()
     npcdialogue.Enabled = true
    upiodialogue()
     wait(2)
    npcdialogue.Enabled = false
end)
easternegg.ModulePrompt.Triggered:Connect(function()
local Equipped = false
local Plr = game.Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local eegg = game:GetObjects("rbxassetid://13053427070")[1]
eegg.Parent = game.Players.LocalPlayer.Backpack
    eegg.Equipped:Connect(function()
        Equipped = true
    local Idle = eegg.Animations.idle
    local IdleTrack = Hum:LoadAnimation(Idle)
    IdleTrack:Play()
    end)
    eegg.Unequipped:Connect(function()
        Equipped = false
        IdleTrack:Stop()
    end)
    easternegg:Destroy()
    end)
end)
DOORS:Button("夜视仪", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)
DOORS:Button("rooms自动行走", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DaRealGeo/roblox/master/rooms-autowalk"))()
end)
DOORS:Button("十字架有特效", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/C00LBOZO/0c78ad8c74ca26324c87ede16ce8b387/raw/c0887ac0d24fde80bea11ab1a6a696ec296af272/Crucifix"))();
end)

LLCQ:Toggle("自动比赛开关", "AR", false, function(AR)
    while AR do wait()
        wait(2)
        game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
    end
end)
LLCQ:Toggle("自动举哑铃", "ATYL", false, function(ATYL)
    local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    local rs = game:GetService("RunService").RenderStepped
    while ATYL do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Weight" then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
    end
end)
LLCQ:Toggle("自动俯卧撑", "ATFWC", false, function(ATFWC)
    local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    local rs = game:GetService("RunService").RenderStepped
    while ATFWC do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Pushups" then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
    end
end)
LLCQ:Toggle("自动仰卧起坐", "ATYWQZ", false, function(ATYWQZ)
    local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    local rs = game:GetService("RunService").RenderStepped
    while ATYWQZ do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Situps" then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
    end
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
LLCQ:Toggle("自动倒立身体", "ATDL", false, function(ATDL)
    local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    local rs = game:GetService("RunService").RenderStepped
    while ATDL do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Handstands" then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
    end
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
LLCQ:Toggle("自动锻炼", "ATAAA", false, function(ATAAA)
    local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    while ATAAA do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Handstands" or v.Name == "Situps" or v.Name == "Pushups" or v.Name == "Weight" then
                v:FindFirstChildOfClass("NumberValue").Value = 0
                repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
        end
    end
end)
LLCQ:Toggle("自动重生", "ATRE", false, function(ATRE)
    while ATRE do wait()
        game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
    end
end)
LLCQ:Button("收集宝石", function()
    jk = {}
    for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do
        if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then
            table.insert(jk, v.Name)
        end
    end
    for i = 1, #jk do
        wait(2)
        game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i])
    end
end)
LLCQ:Button("传送到出生点", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
end)
LLCQ:Button("传送到冰霜健身房", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
end)
LLCQ:Button("传送到神话健身房", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
end)
LLCQ:Button("传送到永恒健身房", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
end)
LLCQ:Button("传送到传说健身房", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
end)
LLCQ:Button("传送到肌肉之王健身房", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
end)
LLCQ:Button("传送到安全岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
end)
LLCQ:Button("传送到幸运抽奖区域", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
end)

JYRS:Button("手里剑（秒杀）", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
end)
JYRS:Button("变钢鸡侠", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/sb2"))()
end)
JYRS:Button("传送警卫室", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
end)
JYRS:Button("传送监狱室内", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
end)
JYRS:Button("传送罪犯复活点", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
end)
JYRS:Button("传送监狱室外", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
end)

ZDYS:Button("弓箭爆头", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6RQGbFqD"))()
end)

RZCQ:Button("解锁所有岛", function()
    for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
        if v then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
            wait(.5)
        end
    end
end)
RZCQ:Button("传送到出生点", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
end)
RZCQ:Button("传送到附魔岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
end)
RZCQ:Button("传送到神秘岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
end)
RZCQ:Button("传送到太空岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
end)
RZCQ:Button("传送到冻土岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
end)
RZCQ:Button("传送到永恒岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)
end)
RZCQ:Button("传送到沙暴岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
end)
RZCQ:Button("传送到雷暴岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
end)
RZCQ:Button("传送到远古炼狱岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)
end)
RZCQ:Button("传送到午夜暗影岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
end)
RZCQ:Button("传送到神秘灵魂岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
end)
RZCQ:Button("传送到冬季奇迹岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
end)
RZCQ:Button("传送到黄金大师岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)
end)
RZCQ:Button("传送到龙传奇岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
end)
RZCQ:Button("传送到赛博传奇岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
end)
RZCQ:Button("传送到天岚超能岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
end)
RZCQ:Button("传送到混沌传奇岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
end)
RZCQ:Button("传送到混沌传奇岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
end)
RZCQ:Button("传送到灵魂融合岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
end)
RZCQ:Button("传送到黑暗元素岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
end)
RZCQ:Button("传送到内心和平岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
end)
RZCQ:Button("传送到炽烈漩涡岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)
end)
RZCQ:Button("传送到35倍金币区域", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)
end)
RZCQ:Button("传送到死亡宠物", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)
end)

HBTX:Label("请成为货车司机才能自动刷钱!")
HBTX:Toggle("自动刷钱", "ATSQ", false, function(AM)
    _G.autoFarm = AM
    if AM then
        autoFarm()
    end
    game.RunService.Stepped:Connect(function()
        local virtualUser = game:GetService('VirtualUser')
        virtualUser:CaptureController()
        function teleportTo(CFrame) 
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
        end
        _G.autoFarm = true
        function autoFarm()
            while _G.autoFarm do
                fireclickdetector(game:GetService("Workspace").DeliverySys.Misc["Package Pile"].ClickDetector)
                task.wait(2.2)
                for _,point in pairs(game:GetService("Workspace").DeliverySys.DeliveryPoints:GetChildren()) do
                    if point.Locate.Locate.Enabled then
                        teleportTo(point.CFrame)
                    end
                end
                task.wait(0)
            end
        end
    end)
end)

XG:Button("自瞄", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
end)
XG:Button("范围", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)
XG:Button("iw指令", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
XG:Button("操b脚本", function()
  --Variables
  local SimpleSexGUI = Instance.new("ScreenGui")
  local FGUI = Instance.new("Frame")
  local btnNaked = Instance.new("TextButton")
  local btnSex = Instance.new("TextButton")
  local tbxVictim = Instance.new("TextBox")
  local lblFUCKEMALL = Instance.new("TextLabel")
  local ImageLabel = Instance.new("ImageLabel")
  local lbltitle = Instance.new("TextLabel")
  local TextLabel = Instance.new("TextLabel")
  --Properties
  SimpleSexGUI.Name = "SimpleSexGUI"
  SimpleSexGUI.Parent = game.CoreGui

  FGUI.Name = "FGUI"
  FGUI.Parent = SimpleSexGUI
  FGUI.BackgroundColor3 = Color3.new(255,255,255)
  FGUI.BorderSizePixel = 1
  FGUI.Position = UDim2.new(0,0, 0.667, 0)
  FGUI.Size = UDim2.new(0,317, 0,271)
  FGUI.Draggable = true

  lbltitle.Name = "Title"
  lbltitle.Parent = FGUI
  lbltitle.BackgroundColor3 = Color3.new(255,255,255)
  lbltitle.BorderSizePixel = 1
  lbltitle.Position = UDim2.new (0, 0,-0.122, 0)
  lbltitle.Size = UDim2.new (0, 317,0, 33)
  lbltitle.Visible = true
  lbltitle.Active = true
  lbltitle.Draggable = false
  lbltitle.Selectable = true
  lbltitle.Font = Enum.Font.SourceSansBold
  lbltitle.Text = "一个简单的操蛋脚本!!"
  lbltitle.TextColor3 = Color3.new(0, 0, 0)
  lbltitle.TextSize = 20

  btnSex.Name = "Sex"
  btnSex.Parent = FGUI
  btnSex.BackgroundColor3 = Color3.new(255,255,255)
  btnSex.BorderSizePixel = 1
  btnSex.Position = UDim2.new (0.044, 0,0.229, 0)
  btnSex.Size = UDim2.new (0, 99,0, 31)
  btnSex.Visible = true
  btnSex.Active = true
  btnSex.Draggable = false
  btnSex.Selectable = true
  btnSex.Font = Enum.Font.SourceSansBold
  btnSex.Text = "让我们操蛋吧!!"
  btnSex.TextColor3 = Color3.new(0, 0, 0)
  btnSex.TextSize = 20

  tbxVictim.Name = "VictimTEXT"
  tbxVictim.Parent = FGUI
  tbxVictim.BackgroundColor3 = Color3.new(255,255,255)
  tbxVictim.BorderSizePixel = 1
  tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0)
  tbxVictim.Size = UDim2.new (0, 133,0, 27)
  tbxVictim.Visible = true
  tbxVictim.Active = true
  tbxVictim.Draggable = false
  tbxVictim.Selectable = true
  tbxVictim.Font = Enum.Font.SourceSansBold
  tbxVictim.Text = "名字"
  tbxVictim.TextColor3 = Color3.new(0, 0, 0)
  tbxVictim.TextSize = 20

  lblFUCKEMALL.Name = "FUCKEMALL"
  lblFUCKEMALL.Parent = FGUI
  lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255)
  lblFUCKEMALL.BorderSizePixel = 1
  lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0)
  lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27)
  lblFUCKEMALL.Visible = true
  lblFUCKEMALL.Font = Enum.Font.SourceSansBold
  lblFUCKEMALL.Text = "操蛋和操蛋"
  lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0)
  lblFUCKEMALL.TextSize = 20

  ImageLabel.Name = "ImageLabel"
  ImageLabel.Parent = FGUI
  ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..."
  ImageLabel.BorderSizePixel = 1
  ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0)
  ImageLabel.Size = UDim2.new (0, 106,0, 121)
  --Scripts
  btnSex.MouseButton1Click:Connect(function()
    local player = tbxVictim.Text
    local stupid = Instance.new('Animation')
    stupid.AnimationId = 'rbxassetid://148840371'
    hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
    pcall(function()
      hummy.Parent.Pants:Destroy()
    end)
    pcall(function()
      hummy.Parent.Shirt:Destroy()
    end)
    local notfunny = hummy:LoadAnimation(stupid)
    notfunny:Play()
    notfunny:AdjustSpeed(10)
    while hummy.Parent.Parent ~= nil do
      wait()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
    end
  end)
end)
XG:Button("开启FPS", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/FPS-Counter'))()
end)