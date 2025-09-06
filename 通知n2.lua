local Nofitication = {}

local GUI = game:GetService("CoreGui"):FindFirstChild("XGO_Nofitication")
function Nofitication:Notify(nofdebug, middledebug, all)
    local SelectedType = string.lower(tostring(middledebug.Type))
    local ambientShadow = Instance.new("ImageLabel")
    local Window = Instance.new("Frame")
    local Outline_A = Instance.new("Frame")
    local WindowTitle = Instance.new("TextLabel")
    local WindowDescription = Instance.new("TextLabel")
    
    ambientShadow.Name = "ambientShadow"
    ambientShadow.Parent = GUI
    ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    ambientShadow.BackgroundTransparency = 1.000
    ambientShadow.BorderSizePixel = 0
    ambientShadow.Position = UDim2.new(0.91525954, 0, 0.936809778, 0)
    ambientShadow.Size = UDim2.new(0, 0, 0, 0) -- 初始尺寸不变
    ambientShadow.Image = "rbxassetid://1316045217"
    ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    ambientShadow.ImageTransparency = 0.400
    ambientShadow.ScaleType = Enum.ScaleType.Slice
    ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    -- 核心修改1：窗口尺寸从 230x80 缩小至 160x55
    Window.Name = "Window"
    Window.Parent = ambientShadow
    Window.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Window.BorderSizePixel = 0
    Window.Position = UDim2.new(0, 3, 0, 3) -- 阴影内边距从5缩小至3
    Window.Size = UDim2.new(0, 160, 0, 55) 
    Window.ZIndex = 2
    
    -- 核心修改2：轮廓尺寸从 230x2 缩小至 160x2（高度不变，宽度随窗口）
    Outline_A.Name = "Outline_A"
    Outline_A.Parent = Window
    Outline_A.BackgroundColor3 = middledebug.OutlineColor
    Outline_A.BorderSizePixel = 0
    Outline_A.Position = UDim2.new(0, 0, 0, 18) -- 垂直位置从25上移至18
    Outline_A.Size = UDim2.new(0, 160, 0, 2) 
    Outline_A.ZIndex = 5
    
    -- 核心修改3：标题尺寸从 222x22 缩小至 144x16，文字大小从12缩至10
    WindowTitle.Name = "WindowTitle"
    WindowTitle.Parent = Window
    WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WindowTitle.BackgroundTransparency = 1.000
    WindowTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
    WindowTitle.BorderSizePixel = 0
    WindowTitle.Position = UDim2.new(0, 6, 0, 2) -- 左边距从8缩至6
    WindowTitle.Size = UDim2.new(0, 144, 0, 16) 
    WindowTitle.ZIndex = 4
    WindowTitle.Font = Enum.Font.GothamSemibold
    WindowTitle.Text = nofdebug.Title
    WindowTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
    WindowTitle.TextSize = 10.000 -- 文字缩小
    WindowTitle.TextXAlignment = Enum.TextXAlignment.Left
    
    -- 核心修改4：描述尺寸从 216x40 缩小至 148x32，文字大小从12缩至9
    WindowDescription.Name = "WindowDescription"
    WindowDescription.Parent = Window
    WindowDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WindowDescription.BackgroundTransparency = 1.000
    WindowDescription.BorderColor3 = Color3.fromRGB(27, 42, 53)
    WindowDescription.BorderSizePixel = 0
    WindowDescription.Position = UDim2.new(0, 6, 0, 24) -- 垂直位置从34上移至24
    WindowDescription.Size = UDim2.new(0, 148, 0, 32) 
    WindowDescription.ZIndex = 4
    WindowDescription.Font = Enum.Font.GothamSemibold
    WindowDescription.Text = nofdebug.Description
    WindowDescription.TextColor3 = Color3.fromRGB(180, 180, 180)
    WindowDescription.TextSize = 9.000 -- 文字缩小
    WindowDescription.TextWrapped = true
    WindowDescription.TextXAlignment = Enum.TextXAlignment.Left
    WindowDescription.TextYAlignment = Enum.TextYAlignment.Top

    if SelectedType == "default" then
        local function ORBHB_fake_script()
            local script = Instance.new('LocalScript', ambientShadow)
            -- 核心修改5：阴影尺寸从 240x90 缩小至 166x61（窗口+阴影边距）
            ambientShadow:TweenSize(UDim2.new(0, 166, 0, 61), "Out", "Linear", 0.2)
            Window.Size = UDim2.new(0, 160, 0, 55) -- 同步窗口尺寸
            Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)
    
            wait(middledebug.Time)
        
            ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
            
            wait(0.2)
            ambientShadow:Destroy()
        end
        coroutine.wrap(ORBHB_fake_script)()
    elseif SelectedType == "image" then
        -- 核心修改6：阴影尺寸从 240x90 缩小至 166x61
        ambientShadow:TweenSize(UDim2.new(0, 166, 0, 61), "Out", "Linear", 0.2)
        Window.Size = UDim2.new(0, 160, 0, 55) -- 同步窗口尺寸
        WindowTitle.Position = UDim2.new(0, 20, 0, 2) -- 标题左移（适配图片）
        
        -- 核心修改7：图片按钮从 18x18 缩小至 14x14
        local ImageButton = Instance.new("ImageButton")
        ImageButton.Parent = Window
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.BorderSizePixel = 0
        ImageButton.Position = UDim2.new(0, 3, 0, 3) -- 边距从4缩至3
        ImageButton.Size = UDim2.new(0, 14, 0, 14) 
        ImageButton.ZIndex = 5
        ImageButton.AutoButtonColor = false
        ImageButton.Image = all.Image
        ImageButton.ImageColor3 = all.ImageColor

        local function ORBHB_fake_script()
            local script = Instance.new('LocalScript', ambientShadow)
        
            Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)

            wait(middledebug.Time)
        
            ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
            
            wait(0.2)
            ambientShadow:Destroy()
        end
        coroutine.wrap(ORBHB_fake_script)()
    elseif SelectedType == "option" then
        -- 核心修改8：带选项的阴影尺寸从 240x110 缩小至 166x75
        ambientShadow:TweenSize(UDim2.new(0, 166, 0, 75), "Out", "Linear", 0.2)
        Window.Size = UDim2.new(0, 160, 0, 70) -- 带选项的窗口从 230x100 缩小至 160x70
        
        -- 核心修改9：选项按钮从 18x18 缩小至 14x14，位置微调
        local Uncheck = Instance.new("ImageButton")
        local Check = Instance.new("ImageButton")
        
        Uncheck.Name = "Uncheck"
        Uncheck.Parent = Window
        Uncheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Uncheck.BackgroundTransparency = 1.000
        Uncheck.BorderSizePixel = 0
        Uncheck.Position = UDim2.new(0, 5, 0, 52) -- 垂直位置从76上移至52
        Uncheck.Size = UDim2.new(0, 14, 0, 14) 
        Uncheck.ZIndex = 5
        Uncheck.AutoButtonColor = false
        Uncheck.Image = "http://www.roblox.com/asset/?id=6031094678"
        Uncheck.ImageColor3 = Color3.fromRGB(255, 84, 84)
        
        Check.Name = "Check"
        Check.Parent = Window
        Check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Check.BackgroundTransparency = 1.000
        Check.BorderSizePixel = 0
        Check.Position = UDim2.new(0, 22, 0, 52) -- 垂直位置从76上移至52，水平间距同步缩小
        Check.Size = UDim2.new(0, 14, 0, 14) 
        Check.ZIndex = 5
        Check.AutoButtonColor = false
        Check.Image = "http://www.roblox.com/asset/?id=6031094667"
        Check.ImageColor3 = Color3.fromRGB(83, 230, 50)

        local function ORBHB_fake_script()
            local script = Instance.new('LocalScript', ambientShadow)
        
            local Stilthere = true
            local function Unchecked()
                pcall(function()
                    all.Callback(false)
                end)
                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
                
                wait(0.2)
                ambientShadow:Destroy()
                Stilthere = false
            end
            local function Checked()
                pcall(function()
                    all.Callback(true)
                end)
                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
                
                wait(0.2)
                ambientShadow:Destroy()
                Stilthere = false
            end
            Uncheck.MouseButton1Click:Connect(Unchecked)
            Check.MouseButton1Click:Connect(Checked)
            
            Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)
    
            wait(middledebug.Time)

            if Stilthere == true then
        
                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
                
                wait(0.2)
                ambientShadow:Destroy()
            end
        end
        coroutine.wrap(ORBHB_fake_script)()
    end
end

return Nofitication
