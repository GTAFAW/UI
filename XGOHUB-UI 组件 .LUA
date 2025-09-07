--2024 11/21 最后一次更新
local NotificationHolder = loadstring(game:HttpGet('https://github.com/GTAFAW/UI/raw/main/%E9%80%9A%E7%9F%A5n1.lua'))()
local Notification = loadstring(game:HttpGet('https://github.com/GTAFAW/UI/raw/main/%E9%80%9A%E7%9F%A5n2.lua'))()
local AcrylicLibrary = loadstring(game:HttpGetAsync('https://github.com/GTAFAW/UI/raw/main/UI.-.XGOHUB.lua'))()
local TextEffect = AcrylicLibrary.TextEffect;
local Window = AcrylicLibrary:Windowxgo({
    Title = string.format("Acrylic Library.UI[XGO] - %s", TextEffect:AddColor(AcrylicLibrary.Version, AcrylicLibrary.Colors.Hightlight)),
    Logo = "rbxassetid://7733993211",
    Keybind = Enum.KeyCode.LeftControl,
    KeySystem = true, -- 启用卡密系统
    KeySystemInfo = {
        Title = "-<- 卡密验证 ->-",
        OnGetKey = function()
            local qqGroupNum = "259461151"
            local qqGroupUrl = "https://qun.qq.com/universal-share/share?ac=1&authKey=p2MORmDbzYQDy59q5zQm%2FIcT0NuQ5eejP7dzMHGm8mTon3vB%2Ba1BqejQ0zPoGHA4&busi_data=eyJncm91cENvZGUiOiIyNTk0NjExNTEiLCJ0b2tlbiI6ImUrVmZDMWFmUms5Mkl2ZGk5MTVQQ29hQytEZUtxVW5sWHF4ZE0ydmdac1ZvMUt4U09JUnpBQTczbW5SM3NVbFAiLCJ1aW4iOiIzNjQxNjQzODAyIn0%3D&data=Z7_YT5kdFCPrLTpRqsCAq1EtqEmXsimQdGowMft2T9-QQTikY_crMGdiRPZRvAna26x4qI-ra3djO0snsGf7Yw&svctype=4&tempid=h5_group_info"  
            -- 复制群号
            setclipboard(qqGroupNum)
            
            -- 替换为 "image" 类型通知（提示复制成功）
            Notification:Notify(
                { Title = "✅ 复制成功", Description = "QQ群号 " .. qqGroupNum .. " 已复制到剪贴板，可直接粘贴使用～" },
                { OutlineColor = Color3.fromRGB(80, 80, 80), Time = 4, Type = "image" }, -- 显示4秒，匹配原需求
                {
                    Image = "http://www.roblox.com/asset/?id=6023426923",
                    ImageColor = Color3.fromRGB(255, 84, 84),
                }
            )

            return qqGroupUrl
        end,
        OnLogin = function(key)
            -- 卡密验证逻辑
            if key == "1234" then
                wait(0.1)
                -- 验证成功：使用 "default" 类型通知
                Notification:Notify(
                    { Title = "🎉 验证通过", Description = "已成功登录，可正常使用功能～" },
                    { OutlineColor = Color3.fromRGB(80, 80, 80), Time = 3, Type = "default" } -- 显示3秒
                )
                return true -- 卡密正确
            end
            -- 卡密错误：使用 "option" 类型通知（带回调，可按需扩展逻辑）
            Notification:Notify(
                { Title = "❌ 卡密错误", Description = "请输入正确卡密后重试～" },
                { OutlineColor = Color3.fromRGB(80, 80, 80), Time = 3, Type = "option" }, -- 显示3秒
                {
                    Image = "http://www.roblox.com/asset/?id=6023426923",
                    ImageColor = Color3.fromRGB(255, 84, 84),
                    Callback = function(State)
                        print(tostring(State)) -- 保留原回调打印状态的逻辑
                    end,
                }
            )
            wait()
            return false -- 卡密错误
        end,
    }
})
Window:Watermark(string.format("水印 [%s]",TextEffect:AddColor("XGO HUB - 小三", AcrylicLibrary.Colors.Hightlight)))
Window:Watermark(string.format("水印 [%s]",TextEffect:AddColor("XGO HUB - 小三", AcrylicLibrary.Colors.Hightlight)))
local Tabs = {
    xgo = Window:XG({Title = "示例", Icon = "快进"}),
    xgo1 = Window:XG({Title = "示例", Icon = "XGO1"}),
    xgo2 = Window:XG({Title = "示例", Icon = "XGO2"}),
    xgo3 = Window:XG({Title = "示例", Icon = "XGO3"}),
    xgo4 = Window:XG({Title = "示例", Icon = "XGO4"}),
    xgo5 = Window:XG({Title = "示例", Icon = "XGO5"}),
    xgo6 = Window:XG({Title = "示例", Icon = "XGO6"})
}

Tabs.xgo:Block("XGOHUB", 0.45, 1, Enum.Font.Fondamento, nil)
Tabs.xgo:Block("自定义文本", nil, nil, nil, Color3.fromRGB(255, 0, 0), true)
Tabs.xgo:Block("左标签adcbABCB", 0.02, 0.99000001, Enum.Font.Arial, Color3.fromRGB(199, 199, 199))
Tabs.xgo:Block("中间adcbABCB", 0.45, 0.99000001, Enum.Font.Fondamento, Color3.fromRGB(100, 255, 180), true)
Tabs.xgo:Block("右标签adcbABCB", 0.7, 0.55000001, Enum.Font.GothamBlack, Color3.fromRGB(255, 192, 203))
local function getPosition()
    local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    return tostring(math.floor(position.X)) .. ", " .. tostring(math.floor(position.Y)) .. ", " .. tostring(math.floor(position.Z))
end

local positionLabel = Tabs.xgo:Block("坐标[小]: " .. getPosition())
local XPosLabel = Tabs.xgo:Block("位置 X |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X)
local YPosLabel = Tabs.xgo:Block("高度 Y |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y)
local ZPosLabel = Tabs.xgo:Block("位置 Z |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)

game:GetService("RunService").Heartbeat:Connect(function()
    XPosLabel:Set("位置 X |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X)
    YPosLabel:Set("位置 Y |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y)
    ZPosLabel:Set("位置 Z |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)
end)

spawn(function()
    while task.wait() do
        positionLabel:Set("坐标[小]: " .. getPosition())
    end
end)
-- 下拉菜单（Dropdown）
Tabs.xgo:Dropdown({
    Title = "下拉菜单1",
    Content = "按钮1\n按钮组\n1\n1\n1",   
    Values = {"值1", "值2", "值3"},
    Default = "值1",
    Multi = false,
    MaxMulti = 4,
    Callback = function(value)
        print("下拉菜单1选择：" .. value)
    end,
});
local myImage = Tabs.xgo:Image({
    Title = "姐姐真是可爱呢",
    Asset = "rbxassetid://88666635012556",
    Height = 200,
    Tip = "这是一个图像组件" -- 可选，为图像组件添加工具提示
})
Tabs.xgo:Dropdown({
    Title = "下拉菜单2",
    Values = {"选项A", "选项B", "选项C", "选项D"},
    Default = "选项A",
    Multi = true,
    MaxMulti = 2,
    Callback = function(values)
        print("下拉菜单2选择：" .. table.concat(values, ", "))
    end,
});

Tabs.xgo:Slider({
    Name = "步行速度",
    Min = 0,                                       
    Max = 100,                                     
    Default = 36,                                      
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 
    end,
});

-- 滑块（Slider）
Tabs.xgo:Slider({
    Title = "滑块1",
    Tip = "范围：0到100",
    Min = 0,
    Max = 100,
    Default = 50,
    Round = 0,
    Callback = function(value)
        print("滑块1值：" .. value)
    end,
});

Tabs.xgo:Slider({
    Title = "滑块2",
    Tip = "范围：-10到10",
    Min = -10,
    Max = 10,
    Default = 0,
    Round = 2,
    Callback = function(value)
        print("滑块2值：" .. value)
    end,
});
Tabs.xgo:Toggle({
    Title = "开启/关闭", 
    Tip = "其他主题", 
    Default = false, 
    Callback = function(xgo)
        keypress(Enum.KeyCode.K)
        print("K键已被按下")
        keyrelease(Enum.KeyCode.K)
        print("K键已被释放")
    end
});
Tabs.xgo:A2Toggle({
    Title = "开关2",
    Tip = "切换我！",
    Default = true,
    Callback = function(value)
        print("开关2状态：" .. tostring(value))
    end,
});

Tabs.xgo:A1Toggle({
    Title = "开关[2] 1",
    Tip = "切换我！",
    Content = "按钮1\n按钮组\n1\n1\n1",   
    Default = false,
    Callback = function(value)
        print("开关2状态：" .. tostring(value))
    end,
});

Tabs.xgo:A1Toggle({
    Title = "开关[2] 2",
    Tip = "切换我！",
    Default = true,
    Callback = function(value)
        print("开关2状态：" .. tostring(value))
    end,
});

-- 点击按钮（Button）
Tabs.xgo:Button({
    Title = "按钮1",
    Tip = "点击我！",
    Callback = function()
        Window:Dialog({
            Title = "主标题",
            Content = "副标题",
            Buttons = {
                {
                    Title = "是",
                    Hightlight = true,
                    Callback = function()
                        print('是')
                    end,
                },
                {
                    Title = "否",
                }
            }
        })
        print("按钮1被点击")
    end,
});

Tabs.xgo:Button({
    Title = "按钮2",
    Content = "按钮1\n按钮组\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1",
    Tip = "按我！",
    Callback = function()
        print("按钮2被点击")
    end,
});
Tabs.xgo:Paragraph({
    Title = '段落',
    Description = "描述\n[1]: 示例"
})
Tabs.xgo:Paragraph({
    Title = "段落",
    Description = AcrylicLibrary:HightlightSource([[
local X = 15;

for I = 1 , X do
    print(I);
end;
]])
})

Tabs.xgo:Keybind({
    Title = "按键绑定",
    Default = Enum.KeyCode.G,
    Tip = "按键绑定",
    Callback = function(value)
        print(value)
    end,
})

Tabs.xgo:Textbox({ 	
    Title = "文本框", 	
    Default = "你好，世界", 	
    PlaceHolder = "占位符", 	
    Numeric = false, 	
    Callback = function(value) 		
        print(value) 	
    end, 
}) 
--[[
Tabs.xgo:Colorpicker({
    Title = "颜色选择器",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Value)
        variable = Value
    end
})
--]]
Notification:Notify(
    { Title = '由UILib提供支持', Description = '制作者：BocusLuke' },
    { OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = 'option' },
    {
        Image = 'http://www.roblox.com/asset/?id=6023426923',
        ImageColor = Color3.fromRGB(255, 84, 84),
        Callback = function(State)
            print(tostring(State))
        end,
    }
)
wait(1)
Notification:Notify(
    { Title = '文本标题', Description = '描述内容' },
    { OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = 'image' },
    {
        Image = 'http://www.roblox.com/asset/?id=6023426923',
        ImageColor = Color3.fromRGB(255, 84, 84),
    }
)
wait(1)
Notification:Notify(
    { Title = '文本标题', Description = '描述内容' },
    { OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = 'default' }
)
Window:Notify({
    Title = "通知",
    Description = "描述",
    Duration = 5,
})
-- 创建消息框
local messageBox = Tabs.xgo:Message({
    Title = "欢迎",
    Description = "感谢使用我们的应用！"
})

-- 更改标题
messageBox:Title("更新")

-- 更改描述
messageBox:Description("这是一条更新后的消息。")

-- 销毁消息框
messageBox:Destroy()