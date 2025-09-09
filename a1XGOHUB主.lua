--2024 11/21 最后一次更新
--  ================ 跟随核心变量 ================= --
--// 本地脚本（模糊匹配+开关跟随整合版）
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

local localPlayer = Players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
-- 监听角色重生，更新根部件引用
localPlayer.CharacterAdded:Connect(function(newChar)
    character = newChar
    hrp = newChar:WaitForChild("HumanoidRootPart")
end)
-- ===================== UI 与通知系统（修复：统一加载逻辑） =====================
local NotificationHolder, Notification
-- 容错加载外部UI（修复：防止链接失效导致脚本崩溃）
local success, err = pcall(function()
    NotificationHolder = loadstring(game:HttpGet('https://github.com/GTAFAW/UI/raw/main/通知n1.lua'))()
    Notification = loadstring(game:HttpGet('https://github.com/GTAFAW/UI/raw/main/通知n2.lua'))()
end)
if not success then
    warn("UI加载失败：" .. err)
    -- 降级通知（无外部UI时用提示框）
    function SendMsg(title, desc, type)
        game.StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = desc,
            Duration = 3
        })
    end
else
    -- 正常通知逻辑
    function SendMsg(title, desc, type)
        Notification:Notify(
            { Title = title, Description = desc },
            { OutlineColor = Color3.fromRGB(80, 80, 80), Time = 3, Type = type or "default" },
            { 
                Image = "https://www.roblox.com/asset/?id=6023426923", 
                ImageColor = Color3.fromRGB(0,255,170),
                Buttons = nil 
            }
        )
    end
end

-- ===================== 传送核心逻辑（修复：优化有效性判断） =====================
local PlayerButtons = {}   -- 存储玩家按钮与监听，避免残留
local PlayerDropdown       -- 下拉控件
local selectedName = "选择玩家"

-- 玩家有效性判断（核心修复：补充Humanoid存在性检查）
local function CheckPlayerValid(p)
    if not (p and p:IsA("Player") and p.Parent == Players) then return false end
    local pChar = p.Character
    local pHrp = pChar and pChar:FindFirstChild("HumanoidRootPart")
    local pHumanoid = pChar and pChar:FindFirstChild("Humanoid")
    return (pHrp and pHumanoid and pHumanoid.Health > 0) and true or false
end

-- 传送函数（修复：依赖实时角色引用）
local function TeleportToPlayer(target)
    if not isCharacterLoaded or humanoid.Health <= 0 then
        SendMsg("传送失败","你的角色未加载或已死亡","error"); return
    end
    if CheckPlayerValid(target) then
        hrp.CFrame = target.Character.HumanoidRootPart.CFrame
        SendMsg("传送成功","已传送到 "..target.Name,"success")
    else
        SendMsg("传送失败",target.Name.." 角色未加载或已死亡","error")
    end
end

-- 获取其他在线玩家（去重优化）
local function GetOtherPlayers()
    local t = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= localPlayer and CheckPlayerValid(p) then
            table.insert(t, p)
        end
    end
    return t
end

-- 下拉菜单选项生成
local function GetDropdownOptions()
    local options = { "选择玩家" }
    for _, p in ipairs(GetOtherPlayers()) do
        table.insert(options, p.Name)
    end
    return options
end

-- 模糊匹配玩家
local function FuzzyMatchPlayers(inputStr)
    local matchList = {}
    local lowerInput = string.lower(inputStr)
    for _, p in ipairs(GetOtherPlayers()) do
        if string.find(string.lower(p.Name), lowerInput) then
            table.insert(matchList, p)
        end
    end
    return matchList
end

-- ===================== 动态UI生成（修复：清理重复逻辑） =====================
-- 创建玩家传送按钮（修复：主动清理旧按钮）
local function CreateSinglePlayerButton(player, tab)
    -- 先销毁旧按钮与监听
    if PlayerButtons[player.Name] then
        pcall(function() PlayerButtons[player.Name].Button:Destroy() end)
        if PlayerButtons[player.Name].Conn then
            PlayerButtons[player.Name].Conn:Disconnect()
        end
    end

    -- 监听玩家离线/销毁
    local conn = player.Destroying:Connect(function()
        pcall(function() PlayerButtons[player.Name].Button:Destroy() end)
        PlayerButtons[player.Name] = nil
        SendMsg("玩家清理", player.Name .. " 已离线，按钮已删除", "info")
        conn:Disconnect()
    end)

    -- 创建新按钮
    local btn = tab:Button({
        Title   = player.Name,
        Content = "点击传送至\n" .. player.Name,
        Tip     = "传送到" .. player.Name,
        Callback = function() TeleportToPlayer(player) end
    })
    PlayerButtons[player.Name] = { Button = btn, Conn = conn }
end

-- 刷新下拉列表（修复：选中状态重置逻辑）
local function RefreshDropdown()
    if not PlayerDropdown then return end
    local options = GetDropdownOptions()
    PlayerDropdown.Values = options
    PlayerDropdown.Default = "选择玩家"
    if PlayerDropdown.Update then PlayerDropdown:Update() end

    -- 检查原选中玩家是否有效
    local isTargetValid = table.find(options, selectedName) ~= nil
    if not isTargetValid then
        selectedName = "选择玩家"
        SendMsg("选中重置", "之前选中的玩家已离线", "info")
    end
end

-- ===================== Acrylic UI 主框架（修复：补充容错） =====================
local AcrylicLibrary, Window, Tabs
success, err = pcall(function()
    AcrylicLibrary = loadstring(game:HttpGetAsync('https://github.com/GTAFAW/UI/raw/main/UI.-.XGOHUB.lua'))()
end)
if not success then
    warn("Acrylic UI加载失败：" .. err)
    SendMsg("UI加载失败", "无法加载主界面，脚本功能不可用", "error")
    return -- 核心UI失效，终止脚本
end

-- 初始化UI窗口
local TextEffect = AcrylicLibrary.TextEffect
AcrylicLibrary.Theme:Halloween()
Window = AcrylicLibrary:Windowxgo({
    Title = string.format("Acrylic Library.UI[XGO] - %s", TextEffect:AddColor(AcrylicLibrary.Version, AcrylicLibrary.Colors.Hightlight)),
    Logo = "rbxassetid://7733993211",
    Keybind = Enum.KeyCode.LeftControl,
    KeySystem = true,
    KeySystemInfo = {
        Title = "-<- 卡密验证 ->-",
        OnGetKey = function()
            local qqGroupNum = "259461151"
            local qqGroupUrl = "https://qun.qq.com/universal-share/share?ac=1&authKey=p2MORmDbzYQDy59q5zQm%2FIcT0NuQ5eejP7dzMHGm8mTon3vB%2Ba1BqejQ0zPoGHA4&busi_data=eyJncm91cENvZGUiOiIyNTk0NjExNTEiLCJ0b2tlbiI6ImUrVmZDMWFmUms5Mkl2ZGk5MTVQQ29hQytEZUtxVW5sWHF4ZE0ydmdac1ZvMUt4U09JUnpBQTczbW5SM3NVbFAiLCJ1aW4iOiIzNjQxNjQzODAyIn0%3D&data=Z7_YT5kdFCPrLTpRqsCAq1EtqEmXsimQdGowMft2T9-QQTikY_crMGdiRPZRvAna26x4qI-ra3djO0snsGf7Yw&svctype=4&tempid=h5_group_info"  

            setclipboard(qqGroupNum)
            SendMsg("复制成功", "QQ群号 " .. qqGroupNum .. " 已复制，默认卡密1234", "success")
            return qqGroupUrl
        end,
        OnLogin = function(key)
            if key == "1234" then
                wait(0.1)
                SendMsg("验证通过", "已成功登录，可正常使用功能", "success")
                return true
            end
            SendMsg("卡密错误", "默认卡密是1234，请重新输入", "error")
            return false
        end,
    }
})
Window:Watermark(string.format("水印 [%s]",TextEffect:AddColor("XGO HUB - 小三", AcrylicLibrary.Colors.Hightlight)))
local Tabs = {
    xgo = Window:XG({Title = "示例", Icon = "快进"}),
    xgo1 = Window:XG({Title = "通用", Icon = "XGO1"}),
    xgo2 = Window:XG({Title = "玩家", Icon = "XGO2"}),
    xgo3 = Window:XG({Title = "传送", Icon = "XGO3"}),
    xgo4 = Window:XG({Title = "黑洞", Icon = "XGO4"}),
    xgo5 = Window:XG({Title = "示例", Icon = "XGO5"}),
    xgo6 = Window:XG({Title = "示例", Icon = "XGO6"})
}
Tabs.xgo:Block("XGOHUB", 0.45, 1, Enum.Font.Fondamento, nil, true)
--Tabs.xgo:Block("XGOHUB", /位置, /左右, /字体, /字体，/颜色，/彩虹)
Tabs.xgo:Block("ฅ注入器ฅ:"..identifyexecutor())
Tabs.xgo:Block("ฅ用户名ฅ:"..game.Players.LocalPlayer.Character.Name)
Tabs.xgo:Block("ฅ当前名称ฅ:"..game.Players.LocalPlayer.DisplayName)
Tabs.xgo:Block("ฅ用户帐号ฅ:"..game.Players.LocalPlayer.UserId)
Tabs.xgo:Block("ฅ账号年龄ฅ:"..game.Players.LocalPlayer.AccountAge)
Tabs.xgo:Block("ฅ服务器名称ฅ:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
Tabs.xgo:Block("ฅ服务器IDฅ:"..game.GameId)
Tabs.xgo:Block("ฅ服务器地址lDฅ:"..game.PlaceId)
Tabs.xgo:Block("ฅ获取客户端IDฅ:"..game:GetService("RbxAnalyticsService"):GetClientId())
Tabs.xgo:Block("ฅ当前服务器最高人数ฅ"..game.Players.MaxPlayers)
local player = game.Players.LocalPlayer
local RunService = game:GetService("RunService")
-- 存储三个显示对象（移速/血量/坐标）
local speedDisplay, healthDisplay, posDisplay
-- ===================== 1. 初始化所有显示分隔符 =====================
local function initAllDisplays()
    -- 校验Tabs.xgo是否存在（所有功能依赖）
    if not (Tabs and Tabs.xgo) then
        warn("Tabs.xgo 不存在，无法创建显示")
        return false
    end
    -- 初始化血量显示（保留原格式：1位小数+百分比）
    healthDisplay = Tabs.xgo:Block("血量: 0.0/0.0 (0%)")
    -- 初始化移速显示（保留原格式：3位小数）
    speedDisplay = Tabs.xgo:Block("移速: 0.000 WS/s")
    -- 初始化坐标显示（保留原格式：整数坐标）
    posDisplay = Tabs.xgo:Block("坐标[小]: 0, 0, 0")
    return true
end
-- ===================== 2. 工具函数（计算/格式化） =====================
-- 计算移速（原逻辑）
local function calculateSpeed(velocity)
    return string.format("%.3f", velocity.Magnitude)
end

-- 计算血量（原逻辑）
local function calculateHealth(current, max)
    local percent = math.clamp(current / max, 0, 1) * 100
    return string.format("%.1f/%.1f (%.0f%%)", current, max, percent)
end

-- 计算坐标（原逻辑）
local function calculatePos(hrp)
    local pos = hrp.Position
    return string.format("%d, %d, %d", math.floor(pos.X), math.floor(pos.Y), math.floor(pos.Z))
end

-- ===================== 3. 核心：每帧更新所有数据 =====================
local function updateAllData()
    -- 每帧重新获取当前角色（避免死亡后旧引用失效）
    local char = player.Character
    if not char then
        healthDisplay:Set("血量: 角色未加载")
        speedDisplay:Set("移速: 角色未加载")
        posDisplay:Set("坐标[小]: 角色未加载")
        return
    end

    -- 每帧重新获取关键对象（hrp+humanoid）
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    -- -------------- 更新血量 --------------
    if humanoid then
        if humanoid.Health <= 0 then
            healthDisplay:Set("血量: 已死亡（重生中）")
        else
            local healthText = calculateHealth(humanoid.Health, humanoid.MaxHealth)
            healthDisplay:Set("血量: " .. healthText)
        end
    else
        healthDisplay:Set("血量: 等待Humanoid...")
    end
    
    -- -------------- 更新移速 --------------
    if hrp then
        local currentSpeed = calculateSpeed(hrp.Velocity)
        speedDisplay:Set("移速: " .. currentSpeed .. " WS/s")
    else
        speedDisplay:Set("移速: 等待HRP...")
    end

    -- -------------- 更新坐标 --------------
    if hrp then
        local currentPos = calculatePos(hrp)
        posDisplay:Set("坐标[小]: " .. currentPos)
    else
        posDisplay:Set("坐标[小]: 等待HRP...")
    end
end

-- ===================== 4. 启动主循环 =====================
if initAllDisplays() then
    -- 用RunService确保每帧更新（比task.wait更稳定，与游戏帧同步）
    RunService.RenderStepped:Connect(function()
        updateAllData()
    end)
end
local XPosLabel = Tabs.xgo:Block("位置 X |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X)
local YPosLabel = Tabs.xgo:Block("高度 Y |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y)
local ZPosLabel = Tabs.xgo:Block("位置 Z |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)
game:GetService("RunService").Heartbeat:Connect(function()
    XPosLabel:Set("位置 X |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X)
    YPosLabel:Set("高度 Y |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y)
    ZPosLabel:Set("位置 Z |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)
end)

Tabs.xgo:Button({Title="复制位置坐标",Tip ="",Callback = function()setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "位置坐标"; Text = "已复制成功请到剪辑版上查看";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867 local sound = Instance.new("Sound") sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()end})
Tabs.xgo:Button({Title="制作传送脚本",Tip ="自动制作成脚本",Callback = function()
local position = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        setclipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. position .. ")")
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "传送"; Text = "复制成功,请去剪辑版查看";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867 local sound = Instance.new("Sound") sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()end})
local tweenTime = 3 
Tabs.xgo:Textbox({Title="巡回时间",Default = "",PlaceHolder = "请输入巡回时间",  Numeric = false, Suffix = "Seconds", CurrentValue = tweenTime, Flag = "TweenTimeSlider",Callback = function(value)tweenTime = value end})
Tabs.xgo:Button({Title="制作巡回传送脚本",Tip ="自动制作成脚本",Callback = function()
local position = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        setclipboard('tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(' .. tweenTime .. ', Enum.EasingStyle.Linear)' ..
                     'tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(' .. position .. ')}):Play()')
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "巡回时间";   Text = "复制成功,请去剪辑版查看";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()end})
Tabs.xgo:Button({Title="游戏传送",Tip ="复制id",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/3b9sdhKv"))()end})
Tabs.xgo:Button({Title="数据统计",Tip ="检测问题",Callback = function()game:GetService("VirtualInputManager"):SendKeyEvent(true,"F9",false,game)
    print("Players Owned Cars")
    for i,v in pairs(game.Players:GetChildren()) do
        if v.ClassName == "Player" then
            print("------xgo---------"..v.Name.." OwnedCars".."-----xgo----------")
      local tables = {}
      local racetable = {}
        for a,b in pairs(v.Data.OwnedCars:GetChildren()) do
            if b:IsA("BoolValue") and b.Value == true then
               for c,d in pairs(require(game:GetService("ReplicatedStorage").ModuleLists.CarList)) do
               if d.id == tonumber(b.Name) then
               table.insert(tables,d.name..",")
            end end end end
    warn(unpack(tables))
    print("-------xgo---------"..v.Name.." Currencies".."--------xgo-------")
    warn(v.variables.candy.Name..": "..v.variables.candy.Value,v.variables.rep.Name..": "..v.variables.rep.Value,v.Data.coconuts.Name..": "..v.Data.coconuts.Value)
    print("-------xgo--------"..v.Name.." Race Best Times".."-------xgo-------")
    for ok,p in pairs(v.Data.BestTimes:GetAttributes()) do
    rawset(racetable,ok,p) end
    for lol,s in pairs(racetable) do
    warn(lol,s) end end end end})
Tabs.xgo1:Button({
    Title = "观战玩家",
    Content = "",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628llllffaaaYXZS.123/refs/heads/main/%E8%A7%82%E6%88%98%E7%8E%A9%E5%AE%B6"))()
    end,
});
Tabs.xgo1:Button({
    Title = "玩家进游戏通知",
    Content = "",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
    end,
});
Tabs.xgo1:Button({
    Title = "踏空行走",
    Content = "",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
    end,
});
Tabs.xgo1:Button({
    Title = "全图传送",
    Content = "",
    Tip = "按我！",
    Callback = function()
        mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "小go全图内任意传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack 
    end,
});
Tabs.xgo1:Button({
    Title = "飞行[电脑]",
    Content = "",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/08Adf252"))()
    end,
});
Tabs.xgo1:Button({
    Title = "xgo飞行",
    Content = "",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/rtbZ0mBW"))()
    end,
});
Tabs.xgo1:Button({
    Title = "xgo飞车",
    Content = "",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%A3%9E%E8%BD%A6"))()
    end,
});
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Plr = Players.LocalPlayer
local Clipon = false
local SteppedConnection

-- 穿墙开关：极简通知，确保触发
Tabs.xgo2:A2Toggle({
    Title = "穿墙开关",
    Tip = "点击切换穿墙状态",
    Default = false,
    Callback = function(value)
        Clipon = value
        if Clipon then
            -- 开启穿墙
            if not SteppedConnection or SteppedConnection.Connected == false then
                SteppedConnection = RunService.Stepped:Connect(function()
                    local Character = Plr.Character
                    if not Character then return end
                    for _, v in pairs(Character:GetChildren()) do
                        if v:IsA("BasePart") then v.CanCollide = false end
                    end
                end)
            end
            SendMsg("✅ 穿墙已开启", "可穿透场景模型", "default") -- 简单通知，确保显示
        else
            -- 关闭穿墙
            if SteppedConnection and SteppedConnection.Connected then
                SteppedConnection:Disconnect()
            end
            local Character = Plr.Character
            if Character then
                for _, v in pairs(Character:GetChildren()) do
                    if v:IsA("BasePart") then v.CanCollide = true end
                end
            end
            SendMsg("❌ 穿墙已关闭", "碰撞检测已恢复", "default") -- 简单通知，确保显示
        end
    end,
});
--  ================ 跟随按钮 ================= --
-- 核心变量
local inputPlayerName = "" -- 存储输入的部分玩家名
local matchedPlayers = {} -- 存储当前匹配的所有玩家
local selectedTarget = nil -- 存储最终选择的传送目标

-- 1. 玩家名输入框（核心：输入时实时检测匹配，仅提示不传送）
Tabs.xgo2:Textbox({ 	
    Title = "输入部分玩家名", 	
    Default = "", 	
    PlaceHolder = "例：输入'小'检测'小明'，输入'李'检测'李白'...", 	
    Numeric = false, 	
    Callback = function(value) 		
        inputPlayerName = value:lower() -- 统一转小写，忽略大小写匹配
        matchedPlayers = {} -- 重置匹配列表
        
        -- 输入为空：提示并清空状态
        if inputPlayerName == "" then
            selectedTarget = nil
            SendMsg("ℹ️ 检测提示", "请输入目标玩家的部分名称（至少1个字符）")("option")
            return
        end

        -- 输入不为空：检测当局内匹配的玩家（模糊匹配：名称包含输入内容）
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= localPlayer then -- 排除本地玩家
                local userName = p.Name:lower()
                local displayName = p.DisplayName:lower()
                -- 检测用户名或显示名是否包含输入的部分内容
                if userName:find(inputPlayerName) or displayName:find(inputPlayerName) then
                    table.insert(matchedPlayers, p) -- 加入匹配列表
                end
            end
        end

        -- 根据匹配结果提示用户
        if #matchedPlayers == 0 then
            -- 无匹配玩家
            selectedTarget = nil
            SendMsg("❌ 无匹配结果", "当前局内没有名称包含'" .. inputPlayerName .. "'的玩家")("option")
        elseif #matchedPlayers == 1 then
            -- 唯一匹配玩家：自动选中为目标
            selectedTarget = matchedPlayers[1]
            SendMsg("✅ 唯一匹配", "已匹配玩家：" .. selectedTarget.Name .. "（显示名：" .. selectedTarget.DisplayName .. "），可点击传送")("option")
        else
            -- 多个匹配玩家：提示选择，不自动选中
            selectedTarget = nil
            local matchTip = "检测到多个匹配玩家，请输入更完整名称：\n"
            for i, p in ipairs(matchedPlayers) do
                matchTip = matchTip .. i .. ". " .. p.Name .. "（显示名：" .. p.DisplayName .. "）\n"
            end
            SendMsg("⚠️ 多个匹配", matchTip)("option")
        end
    end, 
}) 

-- 2. 清除输入按钮（重置输入和匹配状态）
Tabs.xgo2:Button({
    Title = "清除输入",
    Tip = "清空输入框并重置匹配状态",
    Color = Color3.fromRGB(150, 150, 150), -- 灰色按钮
    Callback = function()
        inputPlayerName = ""
        matchedPlayers = {}
        selectedTarget = nil
        -- 清空输入框显示（通过遍历找到输入框控件重置）
        for _, child in pairs(Tabs.xgo2:GetChildren()) do
            if child.Name == "Textbox" and child.Title == "输入部分玩家名" then
                child.TextBox.Text = ""
            end
        end
        SendMsg("🗑️ 已清空", "输入框和匹配状态已重置")("option")
    end,
})

-- 3. 传送按钮（手动触发，仅当有有效目标时执行传送）
Tabs.xgo2:Button({
    Title = "传送至目标玩家",
    Tip = "仅当检测到唯一匹配玩家时，点击可传送",
    Color = Color3.fromRGB(80, 200, 80), -- 绿色按钮，标识功能
    Callback = function()
        -- 检测输入状态
        if inputPlayerName == "" then
            SendMsg("❌ 未输入名称", "请先在输入框中输入部分玩家名")("option")
            return
        end

        -- 检测匹配状态
        if #matchedPlayers == 0 then
            SendMsg("❌ 无匹配目标", "当前没有可传送的匹配玩家")("option")
            return
        end

        -- 检测目标有效性（确保目标有角色和根部件）
        if not selectedTarget or not selectedTarget.Character or not selectedTarget.Character:FindFirstChild("HumanoidRootPart") then
            SendMsg("❌ 目标无效", "匹配的玩家角色未加载，无法传送")("option")
            return
        end

        -- 执行传送（传送到目标玩家前方1 studs处，避免重叠）
        local targetHRP = selectedTarget.Character.HumanoidRootPart
        local teleportPos = targetHRP.Position + targetHRP.CFrame.LookVector * 1 -- 前方偏移，防止卡模型
        hrp.CFrame = CFrame.new(teleportPos, targetHRP.Position + targetHRP.CFrame.LookVector) -- 保持朝向目标

        SendMsg("🎉 传送成功", "已传送到 " .. selectedTarget.Name .. " 附近")("option")
    end,
}) 

--  ================  ================= --

-- 假设Settings和Cache是全局变量，提前定义并初始化
Settings = Settings or {}
Cache = Cache or {}
Settings["Player"] = Settings["Player"] or {}
Settings["Player"]["CFrameSpeed"] = false -- CFrame位移功能初始关闭
Settings["Player"]["Speed"] = 1 -- CFrame位移默认速度
Settings["Player"]["WalkSpeed"] = 16 -- 默认移动速度
Settings["Player"]["JumpPower"] = 50 -- 默认跳跃高度
Settings["Player"]["Gravity"] = 196.2 -- 默认重力（Roblox标准值）
Settings["Player"]["Health"] = 100 -- 默认血量
Settings["Player"]["FOV"] = 70 -- 默认视角（FOV）
Cache["Loops"] = Cache["Loops"] or {}

-- 1. 定义CFrame位移核心功能（原逻辑保留）
local function CFrameSpeed()
    if Cache["Loops"]["CFrameSpeed"] ~= nil then
        Cache["Loops"]["CFrameSpeed"]:Disconnect()
        Cache["Loops"]["CFrameSpeed"] = nil
    end
    if Settings["Player"]["CFrameSpeed"] then
        Cache["Loops"]["CFrameSpeed"] = game:GetService("RunService").Heartbeat:Connect(function()
            local localPlayer = game.Players.LocalPlayer
            if not localPlayer.Character then return end
            local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
            local rootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
            if not humanoid or not rootPart then return end

            local moveDir = humanoid.MoveDirection
            local speed = tonumber(Settings["Player"]["Speed"]) or 1
            rootPart.CFrame = rootPart.CFrame + moveDir * speed
        end)
    end
end

Tabs.xgo2:A2Toggle({
    Title = "CFrame位移开关",
    Tip = "开启/关闭自定义位移功能（需先设置速度）",
    Default = Settings["Player"]["CFrameSpeed"],
    Callback = function(value)
        Settings["Player"]["CFrameSpeed"] = value
        CFrameSpeed()
        print("CFrame位移状态：" .. tostring(value))
    end,
});

Tabs.xgo2:Textbox({ 	
    Title = "CFrame速度设置", 	
    Default = tostring(Settings["Player"]["Speed"]), -- 默认值为当前速度（转字符串适配文本框）	
    PlaceHolder = "输入速度值（默认1）", 	
    Numeric = true, -- 仅允许数字输入（速度为数值）	
    Callback = function(value) 		
        local num = tonumber(value)
        if num then
            Settings["Player"]["Speed"] = num
            if Settings["Player"]["CFrameSpeed"] then CFrameSpeed() end -- 开启时实时更新
            print("CFrame速度已更新为：" .. num)
        end 	
    end, 
})

Tabs.xgo2:Textbox({ 	
    Title = "移动速度设置", 	
    Default = tostring(Settings["Player"]["WalkSpeed"]), 	
    PlaceHolder = "输入数值（默认16）", 	
    Numeric = true, 	
    Callback = function(value) 		
        local num = tonumber(value)
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if num and humanoid then
            Settings["Player"]["WalkSpeed"] = num
            humanoid.WalkSpeed = num
            print("移动速度已更新为：" .. num)
        end 	
    end, 
})

Tabs.xgo2:Textbox({ 	
    Title = "跳跃高度设置", 	
    Default = tostring(Settings["Player"]["JumpPower"]), 	
    PlaceHolder = "输入数值（默认50）", 	
    Numeric = true, 	
    Callback = function(value) 		
        local num = tonumber(value)
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if num and humanoid then
            Settings["Player"]["JumpPower"] = num
            humanoid.JumpPower = num
            print("跳跃高度已更新为：" .. num)
        end 	
    end, 
})

Tabs.xgo2:Textbox({ 	
    Title = "重力设置", 	
    Default = tostring(Settings["Player"]["Gravity"]), 	
    PlaceHolder = "输入数值（默认196.2）", 	
    Numeric = true, 	
    Callback = function(value) 		
        local num = tonumber(value)
        if num then
            Settings["Player"]["Gravity"] = num
            game.Workspace.Gravity = num
            print("世界重力已更新为：" .. num)
        end 	
    end, 
})

Tabs.xgo2:Textbox({ 	
    Title = "血量设置", 	
    Default = tostring(Settings["Player"]["Health"]), 	
    PlaceHolder = "输入数值（默认100）", 	
    Numeric = true, 	
    Callback = function(value) 		
        local num = tonumber(value)
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if num and humanoid then
            Settings["Player"]["Health"] = num
            humanoid.Health = num
            print("角色血量已更新为：" .. num)
        end 	
    end, 
})

Tabs.xgo2:Textbox({ 	
    Title = "视角设置", 	
    Default = tostring(Settings["Player"]["FOV"]), 	
    PlaceHolder = "输入数值（默认70）", 	
    Numeric = true, 	
    Callback = function(value) 		
        local num = tonumber(value)
        local camera = game.Workspace.CurrentCamera
        if num and camera then
            Settings["Player"]["FOV"] = num
            camera.FieldOfView = num
            print("相机视角已更新为：" .. num)
        end 	
    end, 
})
--  ================ 空中平台代码 ================= --
local hidingPlaceName = "空中平台" -- 隐藏地点的名称
local baseplateHeight = 200000 -- 天空中基座的高度
local baseplateSize = Vector3.new(1500, 1, 1500) -- 基座的扩展大小
local player = game.Players.LocalPlayer -- 获取本地玩家
local character = player.Character or player.CharacterAdded:Wait() -- 获取或等待角色
local originalPosition -- 保存玩家传送前的位置
local atHidingPlace = false -- 标记玩家是否在隐藏地点
-- 创建“隐藏地点”基座的函数
local function createHidingPlace()
-- 检查基座是否已存在
if workspace:FindFirstChild(hidingPlaceName) then return workspace:FindFirstChild(hidingPlaceName) end
-- 创建基座
    local baseplate = Instance.new("Part")
    baseplate.Name = hidingPlaceName
    baseplate.Size = baseplateSize
    baseplate.Position = Vector3.new(0, baseplateHeight, 0)
    baseplate.Anchored = true
    baseplate.CanCollide = true
    baseplate.Material = Enum.Material.Grass
    baseplate.Parent = workspace
-- 建造带有门、窗和家具的房子
    local houseSpacing = 60
    for i = 1, 5 do
        local house = Instance.new("Part")
        house.Size = Vector3.new(20, 20, 20)
        house.Position = baseplate.Position + Vector3.new(-250 + i * houseSpacing, 10, -250)
        house.Anchored = true
        house.BrickColor = BrickColor.new("Light orange")
        house.Material = Enum.Material.Brick
        house.Parent = baseplate
-- 给房子添加窗户
        for j = -1, 1, 2 do
            local window = Instance.new("Part")
            window.Size = Vector3.new(4, 6, 0.5)
            window.Position = house.Position + Vector3.new(j * 7, 5, -1)
            window.Anchored = true
            window.BrickColor = BrickColor.new("Institutional white")
            window.Material = Enum.Material.Glass
            window.Transparency = 0.5
            window.Parent = baseplate end
-- 添加门
        local door = Instance.new("Part")
        door.Size = Vector3.new(4, 10, 0.5)
        door.Position = house.Position + Vector3.new(0, 5, -1)
        door.Anchored = true
        door.BrickColor = BrickColor.new("Brown")
        door.Material = Enum.Material.Wood
        door.Parent = baseplate
-- 在房子内部添加家具
        local bed = Instance.new("Part")
        bed.Size = Vector3.new(8, 2, 4)
        bed.Position = house.Position + Vector3.new(0, 1, -1)
        bed.Anchored = true
        bed.BrickColor = BrickColor.new("Really red")
        bed.Parent = baseplate
        local table = Instance.new("Part")
        table.Size = Vector3.new(4, 1, 4)
        table.Position = house.Position + Vector3.new(0, 1, 5)
        table.Anchored = true
        table.BrickColor = BrickColor.new("Brown")
        table.Parent = baseplate
        local chair = Instance.new("Part")
        chair.Size = Vector3.new(2, 2, 2)
        chair.Position = house.Position + Vector3.new(3, 1, 5)
        chair.Anchored = true
        chair.BrickColor = BrickColor.new("Reddish brown")
        chair.Parent = baseplate end
-- 建造带有窗户的塔楼
    local towerSpacing = 100
    for i = 1, 3 do
        local tower = Instance.new("Part")
        tower.Size = Vector3.new(20, 100, 20)
        tower.Position = baseplate.Position + Vector3.new(-250 + i * towerSpacing, 50, 200)
        tower.Anchored = true
        tower.BrickColor = BrickColor.new("Institutional white")
        tower.Material = Enum.Material.Concrete
        tower.Parent = baseplate
-- 在塔楼上间隔添加窗户
        for y = 10, 90, 20 do
            local window = Instance.new("Part")
            window.Size = Vector3.new(8, 8, 0.5)
            window.Position = tower.Position + Vector3.new(0, y, -10)
            window.Anchored = true
            window.BrickColor = BrickColor.new("Institutional white")
            window.Material = Enum.Material.Glass
            window.Transparency = 0.5
            window.Parent = baseplate end end
-- 建造连接房子和塔楼的道路
    local road = Instance.new("Part")
    road.Size = Vector3.new(10, 1, 300)
    road.Position = baseplate.Position + Vector3.new(0, 0.5, -250)
    road.Anchored = true
    road.BrickColor = BrickColor.new("Really black")
    road.Material = Enum.Material.Asphalt
    road.Parent = baseplate
-- 建造带有绿色顶部的树木
    for i = 1, 15 do
        local trunk = Instance.new("Part")
        trunk.Size = Vector3.new(5, 20, 5)
        trunk.Position = baseplate.Position + Vector3.new(math.random(-400, 400), 10, math.random(-400, 400))
        trunk.Anchored = true
        trunk.BrickColor = BrickColor.new("Reddish brown")
        trunk.Material = Enum.Material.Wood
        trunk.Parent = baseplate
        local leaves = Instance.new("Part")
        leaves.Size = Vector3.new(12, 10, 12)
        leaves.Position = trunk.Position + Vector3.new(0, 15, 0)
        leaves.Anchored = true
        leaves.BrickColor = BrickColor.new("Bright green")
        leaves.Material = Enum.Material.Grass
        leaves.Parent = baseplate end
-- 添加草丛
    for i = 1, 20 do
        local grassPatch = Instance.new("Part")
        grassPatch.Size = Vector3.new(math.random(10, 20), 1, math.random(10, 20))
        grassPatch.Position = baseplate.Position + Vector3.new(math.random(-700, 700), 0.5, math.random(-700, 700))
        grassPatch.Anchored = true
        grassPatch.BrickColor = BrickColor.new("Bright green")
        grassPatch.Material = Enum.Material.Grass
        grassPatch.Parent = baseplate end
-- 制造雨效（基座上方的小降落部分）
    for i = 1, 100 do
        local raindrop = Instance.new("Part")
        raindrop.Size = Vector3.new(0.2, 1, 0.2)
        raindrop.Position = baseplate.Position + Vector3.new(math.random(-700, 700), math.random(20, 100), math.random(-700, 700))
        raindrop.Anchored = false
        raindrop.CanCollide = false
        raindrop.BrickColor = BrickColor.new("Really blue")
        raindrop.Material = Enum.Material.SmoothPlastic
        raindrop.Velocity = Vector3.new(0, -50, 0)
        raindrop.Parent = baseplate end
-- 添加长椅和路灯以增加氛围
    for i = 1, 5 do
        local bench = Instance.new("Part")
        bench.Size = Vector3.new(5, 1, 2)
        bench.Position = baseplate.Position + Vector3.new(math.random(-700, 700), 1, math.random(-700, 700))
        bench.Anchored = true
        bench.BrickColor = BrickColor.new("Reddish brown")
        bench.Material = Enum.Material.Wood
        bench.Parent = baseplate
        local lightPole = Instance.new("Part")
        lightPole.Size = Vector3.new(1, 15, 1)
        lightPole.Position = bench.Position + Vector3.new(2, 7.5, 0)
        lightPole.Anchored = true
        lightPole.BrickColor = BrickColor.new("Dark stone grey")
        lightPole.Material = Enum.Material.Metal
        lightPole.Parent = baseplate
-- 在灯杆顶部添加光源
        local light = Instance.new("PointLight")
        light.Color = Color3.fromRGB(255, 255, 224)  -- 暖黄色光
        light.Brightness = 2
        light.Range = 20
        light.Parent = lightPole end return baseplate end
-- 为外部区域创建可坐下的户外长椅
local function createSittingOutdoorBench(position)
    local outdoorBench = Instance.new("Part")
    outdoorBench.Size = Vector3.new(5, 1, 2)
    outdoorBench.Position = position
    outdoorBench.Anchored = true
    outdoorBench.BrickColor = BrickColor.new("Reddish brown")
    outdoorBench.Material = Enum.Material.Wood
    outdoorBench.Name = "OutdoorBench"
    outdoorBench.Parent = baseplate
-- 添加座位部分以实现坐下功能
    local seat = Instance.new("Seat")
    seat.Size = Vector3.new(4, 1, 2)
    seat.Position = position + Vector3.new(0, 0.5, 0)  -- 调整位置，使其位于长椅的顶部
    seat.Anchored = true
    seat.BrickColor = BrickColor.new("Reddish brown")
    seat.Transparency = 1  -- 使座位部分隐形，以实现自然的外观
    seat.Parent = outdoorBench end
-- 在不同位置创建几个户外长椅
createSittingOutdoorBench(Vector3.new(50, baseplateHeight + 1, 50))
createSittingOutdoorBench(Vector3.new(100, baseplateHeight + 1, 75))
createSittingOutdoorBench(Vector3.new(-50, baseplateHeight + 1, -100))
createSittingOutdoorBench(Vector3.new(-100, baseplateHeight + 1, 100))
-- 带有垃圾桶和野餐桌的户外长椅
local function createSittingOutdoorBenchWithExtras(position)
-- 创建长椅部分
    local outdoorBench = Instance.new("Part")
    outdoorBench.Size = Vector3.new(5, 1, 2)
    outdoorBench.Position = position
    outdoorBench.Anchored = true
    outdoorBench.BrickColor = BrickColor.new("Reddish brown")
    outdoorBench.Material = Enum.Material.Wood
    outdoorBench.Name = "OutdoorBench"
    outdoorBench.Parent = baseplate
-- 添加座位部分以实现坐下功能
    local seat = Instance.new("Seat")
    seat.Size = Vector3.new(4, 1, 2)
    seat.Position = position + Vector3.new(0, 0.5, 0)  -- 调整位置，使其位于长椅的顶部
    seat.Anchored = true
    seat.BrickColor = BrickColor.new("Reddish brown")
    seat.Transparency = 1  -- 使座位部分隐形，以实现自然的外观
    seat.Parent = outdoorBench
-- 在长椅旁边创建一个垃圾桶
    local trashCan = Instance.new("Part")
    trashCan.Size = Vector3.new(1, 3, 1)  -- 垃圾桶的大小
    trashCan.Position = position + Vector3.new(3, 1.5, 0)  -- 稍微放置在长椅的一侧
    trashCan.Anchored = true
    trashCan.BrickColor = BrickColor.new("Dark stone grey")
    trashCan.Material = Enum.Material.Metal
    trashCan.Shape = Enum.PartType.Cylinder
    trashCan.Name = "TrashCan"
    trashCan.Parent = baseplate
-- 为垃圾桶创建一个盖子
    local trashCanLid = Instance.new("Part")
    trashCanLid.Size = Vector3.new(1, 0.2, 1)
    trashCanLid.Position = trashCan.Position + Vector3.new(0, 1.6, 0)
    trashCanLid.Anchored = true
    trashCanLid.BrickColor = BrickColor.new("Dark stone grey")
    trashCanLid.Material = Enum.Material.Metal
    trashCanLid.Shape = Enum.PartType.Cylinder
    trashCanLid.Name = "TrashCanLid"
    trashCanLid.Parent = trashCan
-- 在长椅旁边创建一个野餐桌
    local picnicTable = Instance.new("Part")
    picnicTable.Size = Vector3.new(6, 1, 3)  -- 桌子的大小
    picnicTable.Position = position + Vector3.new(-5, 1, 0)  -- 放置在长椅的一侧
    picnicTable.Anchored = true
    picnicTable.BrickColor = BrickColor.new("Brown")
    picnicTable.Material = Enum.Material.Wood
    picnicTable.Name = "PicnicTable"
    picnicTable.Parent = baseplate
-- 为野餐桌创建两个长椅作为座位
    for i = -1, 1, 2 do  -- 在桌子的每一侧各添加一个长椅
        local tableBench = Instance.new("Part")
        tableBench.Size = Vector3.new(5, 0.5, 1)
        tableBench.Position = picnicTable.Position + Vector3.new(0, -0.75, i * 1.75)  -- 调整为坐在桌子的任一侧
        tableBench.Anchored = true
        tableBench.BrickColor = BrickColor.new("Brown")
        tableBench.Material = Enum.Material.Wood
        tableBench.Name = "TableBench"
        tableBench.Parent = picnicTable
-- 为每个桌子长椅添加座位部分
        local tableSeat = Instance.new("Seat")
        tableSeat.Size = Vector3.new(4, 0.5, 1)
        tableSeat.Position = tableBench.Position
        tableSeat.Anchored = true
        tableSeat.Transparency = 1  -- 使座位隐形，以实现自然的外观
        tableSeat.Parent = tableBench end end
-- 在不同位置创建几个带有长椅、垃圾桶和野餐桌的户外设置
createSittingOutdoorBenchWithExtras(Vector3.new(50, baseplateHeight + 1, 50))
createSittingOutdoorBenchWithExtras(Vector3.new(100, baseplateHeight + 1, 75))
createSittingOutdoorBenchWithExtras(Vector3.new(-50, baseplateHeight + 1, -100))
createSittingOutdoorBenchWithExtras(Vector3.new(-100, baseplateHeight + 1, 100))
-- 在给定位置创建喷泉的函数
local function createFountain(position)
-- 创建喷泉底座
    local fountainBase = Instance.new("Part")
    fountainBase.Size = Vector3.new(10, 1, 10)
    fountainBase.Position = position
    fountainBase.Anchored = true
    fountainBase.BrickColor = BrickColor.new("Medium stone grey")
    fountainBase.Material = Enum.Material.SmoothPlastic
    fountainBase.Shape = Enum.PartType.Cylinder
    fountainBase.Name = "FountainBase"
    fountainBase.Parent = baseplate
-- 创建喷泉池（在底座上方稍小的圆柱体）
    local fountainPool = Instance.new("Part")
    fountainPool.Size = Vector3.new(9, 1, 9)
    fountainPool.Position = position + Vector3.new(0, 1, 0)
    fountainPool.Anchored = true
    fountainPool.BrickColor = BrickColor.new("Light blue")
    fountainPool.Material = Enum.Material.Glass
    fountainPool.Transparency = 0.5  -- 略微透明以模仿水
    fountainPool.Shape = Enum.PartType.Cylinder
    fountainPool.Name = "FountainPool"
    fountainPool.Parent = fountainBase
-- 使用ParticleEmitter添加水效果
    local waterSpray = Instance.new("ParticleEmitter")
    waterSpray.Texture = "rbxassetid://252907470"  -- 水滴纹理（根据需要调整）
    waterSpray.Rate = 100  -- 粒子发射率
    waterSpray.Lifetime = NumberRange.new(1, 2)
    waterSpray.Speed = NumberRange.new(5, 10)
    waterSpray.VelocitySpread = 180  -- 粒子扩散范围
    waterSpray.Rotation = NumberRange.new(0, 360)
    waterSpray.Size = NumberSequence.new(0.2, 0.4)
    waterSpray.Parent = fountainPool
-- 在喷泉池中心创建一个小型装饰性雕像
    local fountainStatue = Instance.new("Part")
    fountainStatue.Size = Vector3.new(1, 5, 1)
    fountainStatue.Position = position + Vector3.new(0, 2.5, 0)
    fountainStatue.Anchored = true
    fountainStatue.BrickColor = BrickColor.new("Dark stone grey")
    fountainStatue.Material = Enum.Material.SmoothPlastic
    fountainStatue.Name = "FountainStatue"
    fountainStatue.Parent = fountainBase end
-- 在“隐藏地点”基座的特定位置放置喷泉
createFountain(Vector3.new(0, baseplateHeight + 1, -20))
-- 生成包含所有细节的“隐藏地点”
local hidingPlace = createHidingPlace()
-- 传送玩家到隐藏地点的函数
local function teleportToHidingPlace()originalPosition = character.HumanoidRootPart.Position character.HumanoidRootPart.CFrame = CFrame.new(hidingPlace.Position + Vector3.new(0, 5, 0))atHidingPlace = true end
-- 返回玩家原来位置的函数
local function returnToOriginalPosition()if originalPosition then character.HumanoidRootPart.CFrame = CFrame.new(originalPosition)atHidingPlace = false    end end
--  ================ 假延迟代码 ================= --
-- 添加xgo:Toggle函数的按钮连接
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local function toggleFakeLag(fakeLagEnabled)
    if fakeLagEnabled then
        -- 启用FakeLag
        settings():GetService("NetworkSettings").IncomingReplicationLag = 99999999999999
    else
        -- 禁用FakeLag
        settings():GetService("NetworkSettings").IncomingReplicationLag = 0
    end
end
local function onXgoToggle(xgo)
    -- xgo参数是一个布尔值，表示Toggle开关的状态
    toggleFakeLag(xgo)
end
-- 连接到玩家角色添加事件，以便在角色加载时设置Toggle
player.CharacterAdded:Connect(function()
end)
-- 修复语法错误：补充逗号、完善函数体括号，统一代码格式
Tabs.xgo2:A2Toggle({
    Title = "假延迟[敌人可见]",
    Tip = "切换我!",
    Content = "使用目的:\n每个人都会看到你移动,并且能够在你处于延迟状态时攻击你的延迟位置",   
    Default = false,
    Callback = onXgoToggle  -- 补充缺失的逗号
});

Tabs.xgo2:A2Toggle({
    Title = "传送到空中平台",
    Tip = "切换我！",
    Default = false,
    -- 修复函数体：补充闭合括号与end，规范逻辑判断格式
    Callback = function(xgo)
        if xgo then
            teleportToHidingPlace()  -- 开启时传送到空中平台（隐藏位置）
        else
            returnToOriginalPosition()  -- 关闭时返回初始位置
        end
    end  -- 补充函数体闭合end
});

local initOnlineNames = GetPlayerNames()
    PlayerDropdown = Tabs.xgo3:Dropdown({
        Title   = "方式一：下拉选玩家",
        Content = "选择后点击确认传送",
        Values  = initOnlineNames,
        Default = initOnlineNames[1],
        Callback = function(name)
            if name == "无其他玩家" then return end
            selectedName = name
            SendMsg("已选中", "目标：" .. name, "default")
        end
    })

    -- 下拉确认传送按钮（原功能保留）
    Tabs.xgo3:Button({
        Title   = "确认传送（下拉选中）",
        Content = "点击执行传送",
        Callback = function()
            if selectedName == "" or selectedName == "无其他玩家" then
                SendMsg("选择无效", "请先从下拉列表选择有效玩家", "option"); return
            end
            local target = Players:FindFirstChild(selectedName)
            if not target or not CheckPlayerValid(target) then
                SendMsg("传送失败", selectedName .. " 已离线或角色无效", "option")
                RefreshDropdown()
                return
            end
            TeleportToPlayer(target)
        end
    })

    -- 核心：模糊匹配输入框（点击发送键立即传送）
    Tabs.xgo3:Textbox({
        Title     = "方式二：模糊匹配玩家",
        Default   = "",
        PlaceHolder = "输入部分玩家名（忽略大小写，点击发送键立即传送）",
        Callback  = function(inputName)
            if inputName == "" then
                SendMsg("输入无效", "请输入至少1个字符", "option"); return
            end

            -- 1. 执行模糊匹配
            local matchPlayers = FuzzyMatchPlayers(inputName)
            
            -- 2. 匹配结果处理（点击发送键后立即响应）
            if #matchPlayers == 0 then
                SendMsg("匹配失败", "未找到包含'" .. inputName .. "'的玩家", "option")
            elseif #matchPlayers == 1 then
                -- 唯一匹配：点击发送键后立即调用传送函数
                local target = matchPlayers[1]
                if CheckPlayerValid(target) then
                    SendMsg("匹配成功", "唯一匹配：" .. target.Name .. "，正在传送", "default")
                    TeleportToPlayer(target) -- 无延迟，立即传送
                else
                    SendMsg("传送失败", "匹配玩家" .. target.Name .. "角色无效", "option")
                end
            else
                -- 多匹配：提示细化输入
                local matchNames = {}
                for _, p in ipairs(matchPlayers) do
                    table.insert(matchNames, p.Name)
                end
                SendMsg("匹配过多", "找到" .. #matchNames .. "个玩家：" .. table.concat(matchNames, "、") .. "，请输入更多字符", "option")
            end
        end
    })

    -- 强制刷新按钮（原功能保留）
    Tabs.xgo3:Button({
        Title   = "强制刷新玩家列表",
        Content = "彻底清理离线玩家+补全新玩家",
        Callback = function()
            for name, _ in pairs(PlayerButtons) do
                RemovePlayerButton(name)
            end
            local currentOnlinePlayers = GetOtherPlayers()
            if #currentOnlinePlayers == 0 then
                SendMsg("刷新结果", "当前无其他在线玩家", "default")
                RefreshDropdown()
                return
            end
            for _, plr in ipairs(currentOnlinePlayers) do
                coroutine.wrap(function()
                    CreateSinglePlayerButton(plr)
                end)()
            end
            RefreshDropdown()
            SendMsg("刷新成功", "已补全 " .. #currentOnlinePlayers .. " 名在线玩家", "default")
        end
    })

    -- 玩家按钮区域标题
    Tabs.xgo3:Block("-- ======= 方式三：直接点击玩家按钮 ======= --", nil, nil, nil, nil, true)

    -- 初始化在线玩家按钮
    local initPlayers = GetOtherPlayers()
    for _, plr in ipairs(initPlayers) do
        coroutine.wrap(function()
            CreateSinglePlayerButton(plr)
        end)()
    end

    -- 监听玩家加入/离开（原逻辑保留）
    Players.PlayerAdded:Connect(function(plr)
        if plr == LocalPlayer then return end
        coroutine.wrap(function()
            CreateSinglePlayerButton(plr)
            RefreshDropdown()
            SendMsg("玩家加入", "已为 " .. plr.Name .. " 创建传送按钮", "default")
        end)()
    end)

    Players.PlayerRemoving:Connect(function(plr)
        if plr == LocalPlayer then return end
        RemovePlayerButton(plr.Name)
        RefreshDropdown()
        SendMsg("玩家离开", plr.Name .. " 已退出，列表已更新", "default")
    end)
end

-- 6. 启动UI（安全检查）
local function StartUI()
    if not LocalPlayer or not LocalPlayer.Parent then
        warn("本地玩家未加载，等待1秒后重试...")
        task.wait(1)
        StartUI()
        return
    end
    CreateUI()
    SendMsg("UI加载完成", "按 LeftControl 打开/关闭UI", "default")
end

Tabs.xgo4:Button({
    Title = "键盘可单独按键",
    Content = "键盘可单独按键\n键盘可单独寻找按键",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
    end,
});

Tabs.xgo4:Button({
    Title = "黑洞[PC]",
    Content = "黑洞[PC]\n教程:吸附:E 删除:Q",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/BLACKHOLE_SCRIPT_FOR_PC_ONLY.txt"))()
    end,
});

Tabs.xgo4:Button({
    Title = "黑洞汉化2",
    Content = "黑洞汉化2\n黑洞",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/uZbcH9Ve"))()
    end,
});

Tabs.xgo4:Button({
    Title = "循环V2",
    Content = "循环V2\n万磁使周围的物体旋转",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/666/refs/heads/main/656"))()
    end,
});

Tabs.xgo4:Button({
    Title = "还部件复刻版",
    Content = "万磁使周围的物体旋转",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/GTAFAW/llllllllllllllllIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIIllIlIllIlIllllllllllllllllllllllllllllllllll/raw/main/XGOHUBHD.lua"))()
    end,
});

Tabs.xgo4:Button({
    Title = "黑洞E键控制",
    Content = "黑洞E键控制\n黑洞按E",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/BbYdbeDY"))()
    end,
});

Tabs.xgo4:Button({
    Title = "卡哇伊黑洞（可以锁人的哦）",
    Content = "卡哇伊黑洞（可以锁人的哦）\n可以进行锁定玩家",
    Tip = "按我！",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%BB%91%E6%B4%9E",true))()
    end,
});
Tabs.xgo4:Button({
     Title="卡哇伊光环\n推荐指数[8, 25, 60][10, 50, 60]",
     Content ="",
     Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-AURA/main/kawaii_aura.lua"))()
    end
})    