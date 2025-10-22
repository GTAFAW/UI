
return function(title, desc)
    warn(string.format("[%s] %s", title, desc))
    local CoreGui = game:GetService("CoreGui")
    local sg = Instance.new("ScreenGui", CoreGui)
    sg.Name = "XGOErrorTemp"
    local lbl = Instance.new("TextLabel", sg)
    lbl.Size = UDim2.new(0.5, 0, 0.1, 0)
    lbl.Position = UDim2.new(0.25, 0, 0.8, 0)
    lbl.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    lbl.Text = string.format("%s\n%s", title, desc)
    lbl.TextScaled = true
    task.delay(3, function() sg:Destroy() end)
end