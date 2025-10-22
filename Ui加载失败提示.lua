-- ErrorUI.lua  （框架 + 字样都在这）
local M = {}

-- 1. 文案部分：想换字就改这里
M.text = {
    title = "XGOHUB:UI加载失败",
    desc  = "无法加载主界面，脚本功能不可用\n详见：github.com/GTAFAW/XGOHUB/wiki/ErrorCodes"
}

-- 2. UI 框架部分：想换风格就改这里
function M.show(title, desc)
    warn(string.format("[%s] %s", title, desc))
    local CoreGui = game:GetService("CoreGui")
    if CoreGui:FindFirstChild("RobloxGui") then
        local sg = Instance.new("ScreenGui", CoreGui)
        local lbl = Instance.new("TextLabel", sg)
        lbl.Size = UDim2.new(0.5, 0, 0.1, 0)
        lbl.Position = UDim2.new(0.25, 0, 0.8, 0)
        lbl.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
        lbl.Text = string.format("%s\n%s", title, desc)
        lbl.TextScaled = true
        task.delay(3, function() sg:Destroy() end)
    end
end

-- 3. 一次性返回给主脚本
return M