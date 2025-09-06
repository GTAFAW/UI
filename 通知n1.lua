local GUI = game:GetService("CoreGui"):FindFirstChild("XGO_Nofitication")
if not GUI then
    local XGO_Nofitication = Instance.new("ScreenGui")
    local XGO_NofiticationUIListLayout = Instance.new("UIListLayout")
    XGO_Nofitication.Name = "XGO_Nofitication"
    XGO_Nofitication.Parent = game.CoreGui
    XGO_Nofitication.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    XGO_Nofitication.ResetOnSpawn = false
    
    XGO_NofiticationUIListLayout.Name = "XGO_NofiticationUIListLayout"
    XGO_NofiticationUIListLayout.Parent = XGO_Nofitication
    XGO_NofiticationUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    XGO_NofiticationUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    XGO_NofiticationUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
else
end
