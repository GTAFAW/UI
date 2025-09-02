
--2024 11/21 最后一次更新

local AcrylicLibrary = loadstring(game:HttpGetAsync('https://github.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/IIIIllllIllliiiilllllllIlIlIlIlLXGXXXG/raw/main/UI.XGOHUB.lua'))()
local TextEffect = AcrylicLibrary.TextEffect;
local Window = AcrylicLibrary:Windowxgo({
    Title = string.format("Acrylic Library.UI[XGO] - %s", TextEffect:AddColor(AcrylicLibrary.Version, AcrylicLibrary.Colors.Hightlight)),
    Logo = "rbxassetid://7733993211",
    Keybind = Enum.KeyCode.LeftControl,
    KeySystem = true, -- 启用卡密系统
    KeySystemInfo = {
        Title = "-<- 卡密验证 ->-",
        OnGetKey = function()
            setclipboard("259461151") 
              return "https://qun.qq.com/universal-share/share?ac=1&authKey=p2MORmDbzYQ"
        end,
        OnLogin = function(key)
            -- 这里应该是验证卡密的逻辑
            if key == "1234" then
                wait(0.1)
                return true -- 卡密正确
            end
            wait()
            return false -- 卡密错误
        end,
    }
})
Window:Watermark(string.format("水印 [%s]",TextEffect:AddColor("XGO HUB - 小三", AcrylicLibrary.Colors.Hightlight)))
Window:Watermark(string.format("水印 [%s]",TextEffect:AddColor("XGO HUB - 小三", AcrylicLibrary.Colors.Hightlight)))
local Tab = Window:XG({
    Title = "示例",
    Icon = "快进"
})
local Tab1 = Window:XG({
    Title = "示例",
    Icon = "XGO1"
})
local Tab2 = Window:XG({
    Title = "示例",
    Icon = "XGO2"
})
local Tab3 = Window:XG({
    Title = "示例",
    Icon = "XGO3"
})
local Tab4 = Window:XG({
    Title = "示例",
    Icon = "XGO4"
})
local Tab3 = Window:XG({
    Title = "示例",
    Icon = "XGO5"
})
local Tab4 = Window:XG({
    Title = "示例",
    Icon = "XGO6"
})

Tab:Block("XGOHUB", 0.45, 1, Enum.Font.Fondamento, nil)
Tab:Block("自定义文本", nil, nil, nil, Color3.fromRGB(255, 0, 0), true)
Tab:Block("左标签adcbABCB", 0.02, 0.99000001, Enum.Font.Arial, Color3.fromRGB(199, 199, 199))
Tab:Block("中间adcbABCB", 0.45, 0.99000001, Enum.Font.Fondamento, Color3.fromRGB(100, 255, 180), true)
Tab:Block("右标签adcbABCB", 0.7, 0.55000001, Enum.Font.GothamBlack, Color3.fromRGB(255, 192, 203))
local function getPosition()
    local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    return tostring(math.floor(position.X)) .. ", " .. tostring(math.floor(position.Y)) .. ", " .. tostring(math.floor(position.Z))
end

local positionLabel = Tab:Block("坐标[小]: " .. getPosition())
local XPosLabel = Tab:Block("位置 X |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X)
local YPosLabel = Tab:Block("位置 Y |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y)
local ZPosLabel = Tab:Block("位置 Z |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)

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
Tab:Dropdown({
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
local myImage = Tab:Image({
    Title = "姐姐真是可爱呢",
    Asset = "rbxassetid://88666635012556",
    Height = 200,
    Tip = "这是一个图像组件" -- 可选，为图像组件添加工具提示
})
Tab:Dropdown({
    Title = "下拉菜单2",
    Values = {"选项A", "选项B", "选项C", "选项D"},
    Default = "选项A",
    Multi = true,
    MaxMulti = 2,
    Callback = function(values)
        print("下拉菜单2选择：" .. table.concat(values, ", "))
    end,
});

Tab:Slider({
    Name = "步行速度",
    Min = 0,                                       
    Max = 100,                                     
    Default = 36,                                      
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 
    end,
});

-- 滑块（Slider）
Tab:Slider({
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

Tab:Slider({
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
Tab:Toggle({
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
Tab:A2Toggle({
    Title = "开关2",
    Tip = "切换我！",
    Default = true,
    Callback = function(value)
        print("开关2状态：" .. tostring(value))
    end,
});

Tab:A1Toggle({
    Title = "开关[2] 1",
    Tip = "切换我！",
    Content = "按钮1\n按钮组\n1\n1\n1",   
    Default = false,
    Callback = function(value)
        print("开关2状态：" .. tostring(value))
    end,
});

Tab:A1Toggle({
    Title = "开关[2] 2",
    Tip = "切换我！",
    Default = true,
    Callback = function(value)
        print("开关2状态：" .. tostring(value))
    end,
});

-- 点击按钮（Button）
Tab:Button({
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

Tab:Button({
    Title = "按钮2",
    Content = "按钮1\n按钮组\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1",
    Tip = "按我！",
    Callback = function()
        print("按钮2被点击")
    end,
});
Tab:Paragraph({
    Title = '段落',
    Description = "描述\n[1]: 示例"
})
Tab:Paragraph({
    Title = "段落",
    Description = AcrylicLibrary:HightlightSource([[
local X = 15;

for I = 1 , X do
    print(I);
end;
]])
})

Tab:Keybind({
    Title = "按键绑定",
    Default = Enum.KeyCode.G,
    Tip = "按键绑定",
    Callback = function(value)
        print(value)
    end,
})

Tab:Textbox({ 	
    Title = "文本框", 	
    Default = "你好，世界", 	
    PlaceHolder = "占位符", 	
    Numeric = false, 	
    Callback = function(value) 		
        print(value) 	
    end, 
}) 
--[[
Tab:Colorpicker({
    Title = "颜色选择器",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Value)
        variable = Value
    end
})
--]]
Window:Notify({
    Title = "通知",
    Description = "描述",
    Duration = 5,
})
-- 创建消息框
local messageBox = Tab:Message({
    Title = "欢迎",
    Description = "感谢使用我们的应用！"
})

-- 更改标题
messageBox:Title("更新")

-- 更改描述
messageBox:Description("这是一条更新后的消息。")

-- 销毁消息框
messageBox:Destroy()
