--[[
     _      ___         ____  ______
    | | /| / (_)__  ___/ / / / /  _/
    | |/ |/ / / _ \/ _  / /_/ // /  
    |__/|__/_/_//_/\_,_/\____/___/
    
    v1.6.53  |  2025-09-28  |  Roblox UI Library for scripts
    
    This script is NOT intended to be modified.
    To view the source code, see the `src/` folder on the official GitHub repository.
    
    Author: Footagesus (Footages, .ftgs, oftgs)
    Github: https://github.com/Footagesus/WindUI
    Discord: https://discord.gg/ftgs-development-hub-1300692552005189632
    License: MIT
]] -- 星果 还原  进度10%
--[[
a  →  WindUI             -- 总入口，保持不变
b  →  CreateLocalization -- 本地化
c  →  CreateNotification -- 通知系统
d  →  CreatePlatoboost   -- Platoboost 密钥验证
e  →  CreatePandaDev     -- PandaDevelopment 密钥验证
f  →  CreateLuarmor      -- Luarmor 密钥验证
g  →  LoadKeyServices    -- 统一加载上面三种密钥服务
h  →  LoadPackageJson    -- 读取 package.json 版本号
i  →  CreateButton       -- 按钮控件
j  →  CreateInput        -- 输入框控件
k  →  CreateDialog       -- 通用弹窗容器
l  →  CreateKeySystem    -- 整套密钥系统 UI
m  →  UtilViewport       -- 视口/摄像机工具函数
n  →  CreateAcrylicBlur  -- Acrylic 背景模糊
o  →  CreateAcrylicPaint -- Acrylic 前景绘制
p  →  AcrylicManager     -- 统一开关 Acrylic
q  →  CreatePopup        -- 二次确认弹窗
r  →  LoadAllThemes      -- 主题表
s  →  CreateLabel        -- 单行文本/标签
t  →  CreateScrollBar    -- 自定义滚动条
u  →  CreateTag          -- 彩色标签
v  →  ConfigManager      -- 配置读写
w  →  CreateOpenButton   -- 屏幕边缘悬浮球
x  →  CreateTooltip      -- 气泡提示
y  →  CreateElementFrame -- 元素外壳（按钮/输入框等共用）
z  →  CreateParagraph    -- 段落文本
A  →  CreateButtonEx     -- 带图标按钮（继承 y）
B  →  CreateToggle       -- 开关
C  →  CreateCheckbox     -- 复选框
D  →  CreateToggleEx     -- 开关+复选框组合
E  →  CreateSlider       -- 滑块
F  →  CreateKeybind      -- 热键绑定
G  →  CreateInputEx      -- 输入框完整版
H  →  CreateDropdownMenu -- 下拉菜单核心
I  →  CreateDropdown     -- 下拉框完整版
J  →  LuaHighlighter     -- Lua 代码高亮
K  →  CreateCodeBlock    -- 代码块+复制按钮
L  →  CreateCode         -- 代码块简化版
M  →  CreateColorpicker  -- 颜色选择器
N  →  CreateSection      -- 折叠分区
O  →  CreateDivider      -- 分割线
P  →  CreateSpace        -- 空白占位
Q  →  CreateImage        -- 图片
R  →  ElementLoader      -- 统一加载所有控件
S  →  TabManager         -- 标签页管理
T  →  SectionManager     -- 侧边栏分区管理
U  →  IconAtlas          -- 图标表
V  →  SearchModal        -- 全局搜索弹窗
W  →  WindowBuilder      -- 主窗口建造器
]]




local WindUI
WindUI = {
	cache = {},
	load = function(CreateLocalization)
		if not WindUI.cache[CreateLocalization] then
			WindUI.cache[CreateLocalization] = { CreateNotification = WindUI[CreateLocalization]() }
		end
		return WindUI.cache[CreateLocalization].CreateNotification
	end,
}
do
	function WindUI.WindUI()
		local CreateLocalization = game:GetService("RunService")
		local CreatePlatoboost = CreateLocalization.Heartbeat
		local CreatePandaDev = game:GetService("UserInputService")
		local CreateLuarmor = game:GetService("TweenService")
		local LoadKeyServices = game:GetService("LocalizationService")
		local LoadPackageJson = game:GetService("HttpService")

		local CreateButton = "https://raw.githubusercontent.com/Footagesus/Icons/main/Main-v2.lua"

		local CreateInput = loadstring(game.HttpGetAsync and game:HttpGetAsync(CreateButton) or LoadPackageJson:GetAsync(CreateButton))()
		CreateInput.SetIconsType("lucide")

		local CreateKeySystem

		local UtilViewport = {
			Font = "rbxassetid://12187365364",
			Localization = nil,
			CanDraggable = true,
			Theme = nil,
			Themes = nil,
			Icons = CreateInput,
			Signals = {},
			Objects = {},
			LocalizationObjects = {},
			FontObjects = {},
			Language = string.match(LoadKeyServices.SystemLocaleId, "^[WindUI-CreateParagraph]+"),
			Request = http_request or (syn and syn.request) or request,
			DefaultProperties = {
				ScreenGui = {
					ResetOnSpawn = false,
					ZIndexBehavior = "Sibling",
				},
				CanvasGroup = {
					BorderSizePixel = 0,
					BackgroundColor3 = Color3.new(1, 1, 1),
				},
				Frame = {
					BorderSizePixel = 0,
					BackgroundColor3 = Color3.new(1, 1, 1),
				},
				TextLabel = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderSizePixel = 0,
					Text = "",
					RichText = true,
					TextColor3 = Color3.new(1, 1, 1),
					TextSize = 14,
				},
				TextButton = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					TextColor3 = Color3.new(1, 1, 1),
					TextSize = 14,
				},
				TextBox = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					ClearTextOnFocus = false,
					Text = "",
					TextColor3 = Color3.new(0, 0, 0),
					TextSize = 14,
				},
				ImageLabel = {
					BackgroundTransparency = 1,
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderSizePixel = 0,
				},
				ImageButton = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderSizePixel = 0,
					AutoButtonColor = false,
				},
				UIListLayout = {
					SortOrder = "LayoutOrder",
				},
				ScrollingFrame = {
					ScrollBarImageTransparency = 1,
					BorderSizePixel = 0,
				},
				VideoFrame = {
					BorderSizePixel = 0,
				},
			},
			Colors = {
				Red = "#e53935",
				Orange = "#f57c00",
				Green = "#43a047",
				Blue = "#039be5",
				White = "#ffffff",
				Grey = "#484848",
			},
		}

		function UtilViewport.Init(AcrylicManager)
			CreateKeySystem = AcrylicManager
		end

		function UtilViewport.AddSignal(AcrylicManager, LoadAllThemes)
			local CreateTag = AcrylicManager:Connect(LoadAllThemes)
			table.insert(UtilViewport.Signals, CreateTag)
			return CreateTag
		end

		function UtilViewport.DisconnectAll()
			for AcrylicManager, LoadAllThemes in next, UtilViewport.Signals do
				local CreateTag = table.remove(UtilViewport.Signals, AcrylicManager)
				CreateTag:Disconnect()
			end
		end

		function UtilViewport.SafeCallback(AcrylicManager, ...)
			if not AcrylicManager then
				return
			end

			local LoadAllThemes, CreateTag = pcall(AcrylicManager, ...)
			if not LoadAllThemes then
				if CreateKeySystem and CreateKeySystem.Window and CreateKeySystem.Window.Debug then
					local ConfigManager, CreateTooltip = CreateTag:find(":%CreatePlatoboost+: ")

					warn("[ WindUI: DEBUG Mode ] " .. CreateTag)

					return CreateKeySystem:Notify({
						Title = "DEBUG Mode: Error",
						Content = not CreateTooltip and CreateTag or CreateTag:sub(CreateTooltip + 1),
						Duration = 8,
					})
				end
			end
		end

		function UtilViewport.Gradient(AcrylicManager, LoadAllThemes)
			if CreateKeySystem and CreateKeySystem.Gradient then
				return CreateKeySystem:Gradient(AcrylicManager, LoadAllThemes)
			end

			local CreateTag = {}
			local ConfigManager = {}

			for CreateTooltip, CreateParagraph in next, AcrylicManager do
				local CreateButtonEx = tonumber(CreateTooltip)
				if CreateButtonEx then
					CreateButtonEx = math.clamp(CreateButtonEx / 100, 0, 1)
					table.insert(CreateTag, ColorSequenceKeypoint.new(CreateButtonEx, CreateParagraph.Color))
					table.insert(ConfigManager, NumberSequenceKeypoint.new(CreateButtonEx, CreateParagraph.Transparency or 0))
				end
			end

			table.sort(CreateTag, function(CreateButtonEx, CreateToggle)
				return CreateButtonEx.Time < CreateToggle.Time
			end)
			table.sort(ConfigManager, function(CreateButtonEx, CreateToggle)
				return CreateButtonEx.Time < CreateToggle.Time
			end)

			if #CreateTag < 2 then
				error("ColorSequence requires at least 2 keypoints")
			end

			local CreateButtonEx = {
				Color = ColorSequence.new(CreateTag),
				Transparency = NumberSequence.new(ConfigManager),
			}

			if LoadAllThemes then
				for CreateToggle, CreateCheckbox in pairs(LoadAllThemes) do
					CreateButtonEx[CreateToggle] = CreateCheckbox
				end
			end

			return CreateButtonEx
		end

		function UtilViewport.SetTheme(AcrylicManager)
			UtilViewport.Theme = AcrylicManager
			UtilViewport.UpdateTheme(nil, true)
		end

		function UtilViewport.AddFontObject(AcrylicManager)
			table.insert(UtilViewport.FontObjects, AcrylicManager)
			UtilViewport.UpdateFont(UtilViewport.Font)
		end

		function UtilViewport.UpdateFont(AcrylicManager)
			UtilViewport.Font = AcrylicManager
			for LoadAllThemes, CreateTag in next, UtilViewport.FontObjects do
				CreateTag.FontFace = Font.new(AcrylicManager, CreateTag.FontFace.Weight, CreateTag.FontFace.Style)
			end
		end

		function UtilViewport.GetThemeProperty(AcrylicManager, LoadAllThemes)
			local CreateTag = LoadAllThemes[AcrylicManager] or UtilViewport.Themes.Dark[AcrylicManager]

			if not CreateTag then
				return nil
			end

			if type(CreateTag) == "string" and string.sub(CreateTag, 1, 1) == "#" then
				return Color3.fromHex(CreateTag)
			end

			if typeof(CreateTag) == "Color3" then
				return CreateTag
			end

			if type(CreateTag) == "table" and CreateTag.Color and CreateTag.Transparency then
				return CreateTag
			end

			if type(CreateTag) == "function" then
				return CreateTag()
			end

			return nil
		end

		function UtilViewport.AddThemeObject(AcrylicManager, LoadAllThemes)
			UtilViewport.Objects[AcrylicManager] = { Object = AcrylicManager, Properties = LoadAllThemes }
			UtilViewport.UpdateTheme(AcrylicManager, false)
			return AcrylicManager
		end

		function UtilViewport.AddLangObject(AcrylicManager)
			local LoadAllThemes = UtilViewport.LocalizationObjects[AcrylicManager]
			local CreateTag = LoadAllThemes.Object
			local ConfigManager = currentObjTranslationId
			UtilViewport.UpdateLang(CreateTag, ConfigManager)
			return CreateTag
		end

		function UtilViewport.UpdateTheme(AcrylicManager, LoadAllThemes)
			local function ApplyTheme(CreateTag)
				for ConfigManager, CreateTooltip in pairs(CreateTag.Properties or {}) do
					local CreateParagraph = UtilViewport.GetThemeProperty(CreateTooltip, UtilViewport.Theme)
					if CreateParagraph then
						if typeof(CreateParagraph) == "Color3" then
							local CreateButtonEx = CreateTag.Object:FindFirstChild("WindUIGradient")
							if CreateButtonEx then
								CreateButtonEx:Destroy()
							end

							if not LoadAllThemes then
								CreateTag.Object[ConfigManager] = CreateParagraph
							else
								UtilViewport.Tween(CreateTag.Object, 0.08, { [ConfigManager] = CreateParagraph }):Play()
							end
						elseif type(CreateParagraph) == "table" and CreateParagraph.Color and CreateParagraph.Transparency then
							CreateTag.Object[ConfigManager] = Color3.new(1, 1, 1)

							local CreateButtonEx = CreateTag.Object:FindFirstChild("WindUIGradient")
							if not CreateButtonEx then
								CreateButtonEx = Instance.new("UIGradient")
								CreateButtonEx.Name = "WindUIGradient"
								CreateButtonEx.Parent = CreateTag.Object
							end

							CreateButtonEx.Color = CreateParagraph.Color
							CreateButtonEx.Transparency = CreateParagraph.Transparency

							for CreateToggle, CreateCheckbox in pairs(CreateParagraph) do
								if CreateToggle ~= "Color" and CreateToggle ~= "Transparency" and CreateButtonEx[CreateToggle] ~= nil then
									CreateButtonEx[CreateToggle] = CreateCheckbox
								end
							end
						end
					else
						local CreateButtonEx = CreateTag.Object:FindFirstChild("WindUIGradient")
						if CreateButtonEx then
							CreateButtonEx:Destroy()
						end
					end
				end
			end

			if AcrylicManager then
				local CreateTag = UtilViewport.Objects[AcrylicManager]
				if CreateTag then
					ApplyTheme(CreateTag)
				end
			else
				for CreateTag, ConfigManager in pairs(UtilViewport.Objects) do
					ApplyTheme(ConfigManager)
				end
			end
		end

		function UtilViewport.SetLangForObject(AcrylicManager)
			if UtilViewport.Localization and UtilViewport.Localization.Enabled then
				local LoadAllThemes = UtilViewport.LocalizationObjects[AcrylicManager]
				if not LoadAllThemes then
					return
				end

				local CreateTag = LoadAllThemes.Object
				local ConfigManager = LoadAllThemes.TranslationId

				local CreateTooltip = UtilViewport.Localization.Translations[UtilViewport.Language]
				if CreateTooltip and CreateTooltip[ConfigManager] then
					CreateTag.Text = CreateTooltip[ConfigManager]
				else
					local CreateParagraph = UtilViewport.Localization and UtilViewport.Localization.Translations and UtilViewport.Localization.Translations.en or nil
					if CreateParagraph and CreateParagraph[ConfigManager] then
						CreateTag.Text = CreateParagraph[ConfigManager]
					else
						CreateTag.Text = "[" .. ConfigManager .. "]"
					end
				end
			end
		end

		function UtilViewport.ChangeTranslationKey(AcrylicManager, LoadAllThemes, CreateTag)
			if UtilViewport.Localization and UtilViewport.Localization.Enabled then
				local ConfigManager = string.match(CreateTag, "^" .. UtilViewport.Localization.Prefix .. "(.+)")
				if ConfigManager then
					for CreateTooltip, CreateParagraph in ipairs(UtilViewport.LocalizationObjects) do
						if CreateParagraph.Object == LoadAllThemes then
							CreateParagraph.TranslationId = ConfigManager
							UtilViewport.SetLangForObject(CreateTooltip)
							return
						end
					end

					table.insert(UtilViewport.LocalizationObjects, {
						TranslationId = ConfigManager,
						Object = LoadAllThemes,
					})
					UtilViewport.SetLangForObject(#UtilViewport.LocalizationObjects)
				end
			end
		end

		function UtilViewport.UpdateLang(AcrylicManager)
			if AcrylicManager then
				UtilViewport.Language = AcrylicManager
			end

			for LoadAllThemes = 1, #UtilViewport.LocalizationObjects do
				local CreateTag = UtilViewport.LocalizationObjects[LoadAllThemes]
				if CreateTag.Object and CreateTag.Object.Parent ~= nil then
					UtilViewport.SetLangForObject(LoadAllThemes)
				else
					UtilViewport.LocalizationObjects[LoadAllThemes] = nil
				end
			end
		end

		function UtilViewport.SetLanguage(AcrylicManager)
			UtilViewport.Language = AcrylicManager
			UtilViewport.UpdateLang()
		end

		function UtilViewport.Icon(AcrylicManager)
			return CreateInput.Icon(AcrylicManager)
		end

		function UtilViewport.AddIcons(AcrylicManager, LoadAllThemes)
			return CreateInput.AddIcons(AcrylicManager, LoadAllThemes)
		end

		function UtilViewport.New(AcrylicManager, LoadAllThemes, CreateTag)
			local ConfigManager = Instance.new(AcrylicManager)

			for CreateTooltip, CreateParagraph in next, UtilViewport.DefaultProperties[AcrylicManager] or {} do
				ConfigManager[CreateTooltip] = CreateParagraph
			end

			for CreateButtonEx, CreateToggle in next, LoadAllThemes or {} do
				if CreateButtonEx ~= "ThemeTag" then
					ConfigManager[CreateButtonEx] = CreateToggle
				end
				if UtilViewport.Localization and UtilViewport.Localization.Enabled and CreateButtonEx == "Text" then
					local CreateCheckbox = string.match(CreateToggle, "^" .. UtilViewport.Localization.Prefix .. "(.+)")
					if CreateCheckbox then
						local CreateKeybind = #UtilViewport.LocalizationObjects + 1
						UtilViewport.LocalizationObjects[CreateKeybind] = { TranslationId = CreateCheckbox, Object = ConfigManager }

						UtilViewport.SetLangForObject(CreateKeybind)
					end
				end
			end

			for CreateCheckbox, CreateKeybind in next, CreateTag or {} do
				CreateKeybind.Parent = ConfigManager
			end

			if LoadAllThemes and LoadAllThemes.ThemeTag then
				UtilViewport.AddThemeObject(ConfigManager, LoadAllThemes.ThemeTag)
			end
			if LoadAllThemes and LoadAllThemes.FontFace then
				UtilViewport.AddFontObject(ConfigManager)
			end
			return ConfigManager
		end

		function UtilViewport.Tween(AcrylicManager, LoadAllThemes, CreateTag, ...)
			return CreateLuarmor:Create(AcrylicManager, TweenInfo.new(LoadAllThemes, ...), CreateTag)
		end

		function UtilViewport.NewRoundFrame(AcrylicManager, LoadAllThemes, CreateTag, ConfigManager, CreateButtonEx, CreateToggle)
			local function getImageForType(CreateCheckbox)
				return CreateCheckbox == "Squircle" and "rbxassetid://80999662900595"
					or CreateCheckbox == "SquircleOutline" and "rbxassetid://117788349049947"
					or CreateCheckbox == "SquircleOutline2" and "rbxassetid://117817408534198"
					or CreateCheckbox == "Squircle-Outline" and "rbxassetid://117817408534198"
					or CreateCheckbox == "Shadow-sm" and "rbxassetid://84825982946844"
					or CreateCheckbox == "Squircle-TL-TR" and "rbxassetid://73569156276236"
					or CreateCheckbox == "Squircle-BL-BR" and "rbxassetid://93853842912264"
					or CreateCheckbox == "Squircle-TL-TR-Outline" and "rbxassetid://136702870075563"
					or CreateCheckbox == "Squircle-BL-BR-Outline" and "rbxassetid://75035847706564"
					or CreateCheckbox == "Square" and "rbxassetid://82909646051652"
					or CreateCheckbox == "Square-Outline" and "rbxassetid://72946211851948"
			end

			local function getSliceCenterForType(CreateCheckbox)
				return CreateCheckbox ~= "Shadow-sm" and Rect.new(256, 256, 256, 256
) or Rect.new(512, 512, 512, 512)
			end

			local CreateCheckbox = UtilViewport.New(CreateButtonEx and "ImageButton" or "ImageLabel", {
				Image = getImageForType(LoadAllThemes),
				ScaleType = "Slice",
				SliceCenter = getSliceCenterForType(LoadAllThemes),
				SliceScale = 1,
				BackgroundTransparency = 1,
				ThemeTag = CreateTag.ThemeTag and CreateTag.ThemeTag,
			}, ConfigManager)

			for CreateKeybind, CreateInputEx in pairs(CreateTag or {}) do
				if CreateKeybind ~= "ThemeTag" then
					CreateCheckbox[CreateKeybind] = CreateInputEx
				end
			end

			local function UpdateSliceScale(CreateDropdownMenu)
				local LuaHighlighter = LoadAllThemes ~= "Shadow-sm" and (CreateDropdownMenu / 256) or (CreateDropdownMenu / 512)
				CreateCheckbox.SliceScale = math.max(LuaHighlighter, 0.0001)
			end

			local CreateDropdownMenu = {}

			function CreateDropdownMenu.SetRadius(LuaHighlighter, CreateCode)
				UpdateSliceScale(CreateCode)
			end

			function CreateDropdownMenu.SetType(LuaHighlighter, CreateCode)
				LoadAllThemes = CreateCode
				CreateCheckbox.Image = getImageForType(CreateCode)
				CreateCheckbox.SliceCenter = getSliceCenterForType(CreateCode)
				UpdateSliceScale(AcrylicManager)
			end

			function CreateDropdownMenu.UpdateShape(LuaHighlighter, CreateCode, CreateColorpicker)
				if CreateColorpicker then
					LoadAllThemes = CreateColorpicker
					CreateCheckbox.Image = getImageForType(CreateColorpicker)
					CreateCheckbox.SliceCenter = getSliceCenterForType(CreateColorpicker)
				end
				if CreateCode then
					AcrylicManager = CreateCode
				end
				UpdateSliceScale(AcrylicManager)
			end

			function CreateDropdownMenu.GetRadius(LuaHighlighter)
				return AcrylicManager
			end

			function CreateDropdownMenu.GetType(LuaHighlighter)
				return LoadAllThemes
			end

			UpdateSliceScale(AcrylicManager)

			return CreateCheckbox, CreateToggle and CreateDropdownMenu or nil
		end

		local AcrylicManager = UtilViewport.New
		local LoadAllThemes = UtilViewport.Tween

		function UtilViewport.SetDraggable(CreateTag)
			UtilViewport.CanDraggable = CreateTag
		end

		function UtilViewport.Drag(CreateTag, ConfigManager, CreateButtonEx)
			local CreateToggle
			local CreateCheckbox, CreateKeybind, CreateInputEx, CreateDropdownMenu
			local LuaHighlighter = {
				CanDraggable = true,
			}

			if not ConfigManager or type(ConfigManager) ~= "table" then
				ConfigManager = { CreateTag }
			end

			local function update(CreateCode)
				local CreateColorpicker = CreateCode.Position - CreateInputEx
				UtilViewport.Tween(CreateTag, 0.02, { Position = UDim2.new(CreateDropdownMenu.X.Scale, CreateDropdownMenu.X.Offset + CreateColorpicker.X, CreateDropdownMenu.Y.Scale, CreateDropdownMenu.Y.Offset + CreateColorpicker.Y) })
					:Play()
			end

			for CreateCode, CreateColorpicker in pairs(ConfigManager) do
				CreateColorpicker.InputBegan:Connect(function(CreateSection)
					if
						(
							CreateSection.UserInputType == Enum.UserInputType.MouseButton1
							or CreateSection.UserInputType == Enum.UserInputType.Touch
						) and LuaHighlighter.CanDraggable
					then
						if CreateToggle == nil then
							CreateToggle = CreateColorpicker
							CreateCheckbox = true
							CreateInputEx = CreateSection.Position
							CreateDropdownMenu = CreateTag.Position

							if CreateButtonEx and type(CreateButtonEx) == "function" then
								CreateButtonEx(true, CreateToggle)
							end

							CreateSection.Changed:Connect(function()
								if CreateSection.UserInputState == Enum.UserInputState.End then
									CreateCheckbox = false
									CreateToggle = nil

									if CreateButtonEx and type(CreateButtonEx) == "function" then
										CreateButtonEx(false, CreateToggle)
									end
								end
							end)
						end
					end
				end)

				CreateColorpicker.InputChanged:Connect(function(CreateSection)
					if CreateToggle == CreateColorpicker and CreateCheckbox then
						if
							CreateSection.UserInputType == Enum.UserInputType.MouseMovement
							or CreateSection.UserInputType == Enum.UserInputType.Touch
						then
							CreateKeybind = CreateSection
						end
					end
				end)
			end

			CreatePandaDev.InputChanged:Connect(function(CreateSection)
				if CreateSection == CreateKeybind and CreateCheckbox and CreateToggle ~= nil then
					if LuaHighlighter.CanDraggable then
						update(CreateSection)
					end
				end
			end)

			function LuaHighlighter.Set(CreateSection, CreateDivider)
				LuaHighlighter.CanDraggable = CreateDivider
			end

			return LuaHighlighter
		end

		CreateInput.Init(AcrylicManager, "Icon")

		function UtilViewport.Image(CreateTag, ConfigManager, CreateButtonEx, CreateToggle, CreateCheckbox, CreateKeybind, CreateInputEx)
			local function SanitizeFilename(CreateDropdownMenu)
				CreateDropdownMenu = CreateDropdownMenu:gsub('[%CreateLabel/\\:*?"<>|]+', "-")
				CreateDropdownMenu = CreateDropdownMenu:gsub("[^%CreateOpenButton%-_%.]", "")
				return CreateDropdownMenu
			end

			CreateToggle = CreateToggle or "Temp"
			ConfigManager = SanitizeFilename(ConfigManager)

			local CreateDropdownMenu = AcrylicManager("Frame", {
				Size = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
			}, {
				AcrylicManager("ImageLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					ScaleType = "Crop",
					ThemeTag = (UtilViewport.Icon(CreateTag) or CreateInputEx) and {
						ImageColor3 = CreateKeybind and "Icon" or nil,
					} or nil,
				}, {
					AcrylicManager("UICorner", {
						CornerRadius = UDim.new(0, CreateButtonEx),
					}),
				}),
			})
			if UtilViewport.Icon(CreateTag) then
				CreateDropdownMenu.ImageLabel:Destroy()

				local LuaHighlighter = CreateInput.Image({
					Icon = CreateTag,
					Size = UDim2.new(1, 0, 1, 0),
					Colors = {
						(CreateKeybind and "Icon" or false),
						"Button",
					},
				}).IconFrame
				LuaHighlighter.Parent = CreateDropdownMenu
			elseif string.find(CreateTag, "http") then
				local LuaHighlighter = "WindUI/" .. CreateToggle .. "/Assets/." .. CreateCheckbox .. "-" .. ConfigManager .. ".png"
				local CreateCode, CreateColorpicker = pcall(function()
					task.spawn(function()
						if not isfile(LuaHighlighter) then
							local CreateCode = UtilViewport.Request({
								Url = CreateTag,
								Method = "GET",
							}).Body

							writefile(LuaHighlighter, CreateCode)
						end
						CreateDropdownMenu.ImageLabel.Image = getcustomasset(LuaHighlighter)
					end)
				end)
				if not CreateCode then
					warn(
						"[ WindUI.Creator ]  '" .. identifyexecutor() .. "' doesnt support the URL Images. Error: " .. CreateColorpicker
					)

					CreateDropdownMenu:Destroy()
				end
			elseif CreateTag == "" then
				CreateDropdownMenu.Visible = false
			else
				CreateDropdownMenu.ImageLabel.Image = CreateTag
			end

			return CreateDropdownMenu
		end

		return UtilViewport
	end
	function WindUI.CreateLocalization()
		local CreateLocalization = {}

		function CreateLocalization.New(CreatePandaDev, CreateLuarmor, LoadKeyServices)
			local LoadPackageJson = {
				Enabled = CreateLuarmor.Enabled or false,
				Translations = CreateLuarmor.Translations or {},
				Prefix = CreateLuarmor.Prefix or "loc:",
				DefaultLanguage = CreateLuarmor.DefaultLanguage or "en",
			}

			LoadKeyServices.Localization = LoadPackageJson

			return LoadPackageJson
		end

		return CreateLocalization
	end
	function WindUI.CreateNotification()
		local CreateLocalization = WindUI.load("WindUI")
		local CreatePandaDev = CreateLocalization.New
		local CreateLuarmor = CreateLocalization.Tween

		local LoadKeyServices = {
			Size = UDim2.new(0, 300, 1, -156),
			SizeLower = UDim2.new(0, 300, 1, -56),
			UICorner = 13,
			UIPadding = 14,

			Holder = nil,
			NotificationIndex = 0,
			Notifications = {},
		}

		function LoadKeyServices.Init(LoadPackageJson)
			local CreateButton = {
				Lower = false,
			}

			function CreateButton.SetLower(CreateInput)
				CreateButton.Lower = CreateInput
				CreateButton.Frame.Size = CreateInput and LoadKeyServices.SizeLower or LoadKeyServices.Size
			end

			CreateButton.Frame = CreatePandaDev("Frame", {
				Position = UDim2.new(1, -29, 0, 56),
				AnchorPoint = Vector2.new(1, 0),
				Size = LoadKeyServices.Size,
				Parent = LoadPackageJson,
				BackgroundTransparency = 1,
			}, {
				CreatePandaDev("UIListLayout", {
					HorizontalAlignment = "Center",
					SortOrder = "LayoutOrder",
					VerticalAlignment = "Bottom",
					Padding = UDim.new(0, 8),
				}),
				CreatePandaDev("UIPadding", {
					PaddingBottom = UDim.new(0, 29),
				}),
			})
			return CreateButton
		end

		function LoadKeyServices.New(LoadPackageJson)
			local CreateButton = {
				Title = LoadPackageJson.Title or "Notification",
				Content = LoadPackageJson.Content or nil,
				Icon = LoadPackageJson.Icon or nil,
				IconThemed = LoadPackageJson.IconThemed,
				Background = LoadPackageJson.Background,
				BackgroundImageTransparency = LoadPackageJson.BackgroundImageTransparency,
				Duration = LoadPackageJson.Duration or 5,
				Buttons = LoadPackageJson.Buttons or {},
				CanClose = true,
				UIElements = {},
				Closed = false,
			}
			if CreateButton.CanClose == nil then
				CreateButton.CanClose = true
			end
			LoadKeyServices.NotificationIndex = LoadKeyServices.NotificationIndex + 1
			LoadKeyServices.Notifications[LoadKeyServices.NotificationIndex] = CreateButton

			local CreateInput

			if CreateButton.Icon then
				CreateInput = CreateLocalization.Image(CreateButton.Icon, CreateButton.Title .. ":" .. CreateButton.Icon, 0, LoadPackageJson.Window, "Notification", CreateButton.IconThemed)
				CreateInput.Size = UDim2.new(0, 26, 0, 26)
				CreateInput.Position = UDim2.new(0, LoadKeyServices.UIPadding, 0, LoadKeyServices.UIPadding)
			end

			local CreateKeySystem
			if CreateButton.CanClose then
				CreateKeySystem = CreatePandaDev("ImageButton", {
					Image = CreateLocalization.Icon("CreateTooltip")[1],
					ImageRectSize = CreateLocalization.Icon("CreateTooltip")[2].ImageRectSize,
					ImageRectOffset = CreateLocalization.Icon("CreateTooltip")[2].ImageRectPosition,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 16, 0, 16),
					Position = UDim2.new(1, -LoadKeyServices.UIPadding, 0, LoadKeyServices.UIPadding),
					AnchorPoint = Vector2.new(1, 0),
					ThemeTag = {
						ImageColor3 = "Text",
					},
					ImageTransparency = 0.4,
				}, {
					CreatePandaDev("TextButton", {
						Size = UDim2.new(1, 8, 1, 8),
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Text = "",
					}),
				})
			end

			local UtilViewport = CreatePandaDev("Frame", {
				Size = UDim2.new(0, 0, 1, 0),
				BackgroundTransparency = 0.95,
				ThemeTag = {
					BackgroundColor3 = "Text",
				},
			})

			local AcrylicManager = CreatePandaDev("Frame", {
				Size = UDim2.new(1, CreateButton.Icon and -28 - LoadKeyServices.UIPadding or 0, 1, 0),
				Position = UDim2.new(1, 0, 0, 0),
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				AutomaticSize = "Y",
			}, {
				CreatePandaDev("UIPadding", {
					PaddingTop = UDim.new(0, LoadKeyServices.UIPadding),
					PaddingLeft = UDim.new(0, LoadKeyServices.UIPadding),
					PaddingRight = UDim.new(0, LoadKeyServices.UIPadding),
					PaddingBottom = UDim.new(0, LoadKeyServices.UIPadding),
				}),
				CreatePandaDev("TextLabel", {
					AutomaticSize = "Y",
					Size = UDim2.new(1, -30 - LoadKeyServices.UIPadding, 0, 0),
					TextWrapped = true,
					TextXAlignment = "Left",
					RichText = true,
					BackgroundTransparency = 1,
					TextSize = 16,
					ThemeTag = {
						TextColor3 = "Text",
					},
					Text = CreateButton.Title,
					FontFace = Font.new(CreateLocalization.Font, Enum.FontWeight.Medium),
				}),
				CreatePandaDev("UIListLayout", {
					Padding = UDim.new(0, LoadKeyServices.UIPadding / 3),
				}),
			})

			if CreateButton.Content then
				CreatePandaDev("TextLabel", {
					AutomaticSize = "Y",
					Size = UDim2.new(1, 0, 0, 0),
					TextWrapped = true,
					TextXAlignment = "Left",
					RichText = true,
					BackgroundTransparency = 1,
					TextTransparency = 0.4,
					TextSize = 15,
					ThemeTag = {
						TextColor3 = "Text",
					},
					Text = CreateButton.Content,
					FontFace = Font.new(CreateLocalization.Font, Enum.FontWeight.Medium),
					Parent = AcrylicManager,
				})
			end

			local LoadAllThemes = CreateLocalization.NewRoundFrame(LoadKeyServices.UICorner, "Squircle", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(2, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				AutomaticSize = "Y",
				ImageTransparency = 0.05,
				ThemeTag = {
					ImageColor3 = "Background",
				},
			}, {
				CreatePandaDev("CanvasGroup", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
				}, {
					UtilViewport,
					CreatePandaDev("UICorner", {
						CornerRadius = UDim.new(0, LoadKeyServices.UICorner),
					}),
				}),
				CreatePandaDev("ImageLabel", {
					Name = "Background",
					Image = CreateButton.Background,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					ScaleType = "Crop",
					ImageTransparency = CreateButton.BackgroundImageTransparency,
				}, {
					CreatePandaDev("UICorner", {
						CornerRadius = UDim.new(0, LoadKeyServices.UICorner),
					}),
				}),

				AcrylicManager,
				CreateInput,
				CreateKeySystem,
			})

			local CreateTag = CreatePandaDev("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				Parent = LoadPackageJson.Holder,
			}, {
				LoadAllThemes,
			})

			function CreateButton.Close(ConfigManager)
				if not CreateButton.Closed then
					CreateButton.Closed = true
					CreateLuarmor(CreateTag, 0.45, { Size = UDim2.new(1, 0, 0, -8) }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					CreateLuarmor(LoadAllThemes, 0.55, { Position = UDim2.new(2, 0, 1, 0) }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					task.wait(0.45)
					CreateTag:Destroy()
				end
			end

			task.spawn(function()
				task.wait()
				CreateLuarmor(
					CreateTag,
					0.45,
					{ Size = UDim2.new(1, 0, 0, LoadAllThemes.AbsoluteSize.Y) },
					Enum.EasingStyle.Quint,
					Enum.EasingDirection.Out
				):Play()
				CreateLuarmor(LoadAllThemes, 0.45, { Position = UDim2.new(0, 0, 1, 0) }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				if CreateButton.Duration then
					CreateLuarmor(
						UtilViewport,
						CreateButton.Duration,
						{ Size = UDim2.new(1, 0, 1, 0) },
						Enum.EasingStyle.Linear,
						Enum.EasingDirection.InOut
					):Play()
					task.wait(CreateButton.Duration)
					CreateButton:Close()
				end
			end)

			if CreateKeySystem then
				CreateLocalization.AddSignal(CreateKeySystem.TextButton.MouseButton1Click, function()
					CreateButton:Close()
				end)
			end

			return CreateButton
		end

		return LoadKeyServices
	end
	function WindUI.CreatePlatoboost()
		local CreateLocalization = 4294967296
		local CreatePandaDev = CreateLocalization - 1
		local function CreateNotification(CreateLuarmor, LoadKeyServices)
			local LoadPackageJson, CreateButton = 0, 1
			while CreateLuarmor ~= 0 or LoadKeyServices ~= 0 do
				local CreateInput, CreateKeySystem = CreateLuarmor % 2, LoadKeyServices % 2
				local UtilViewport = (CreateInput + CreateKeySystem) % 2
				LoadPackageJson = LoadPackageJson + UtilViewport * CreateButton
				CreateLuarmor = math.floor(CreateLuarmor / 2)
				LoadKeyServices = math.floor(LoadKeyServices / 2)
				CreateButton = CreateButton * 2
			end
			return LoadPackageJson % CreateLocalization
		end
		local function CreateDialog(CreateLuarmor, LoadKeyServices, LoadPackageJson, ...)
			local CreateButton
			if LoadKeyServices then
				CreateLuarmor = CreateLuarmor % CreateLocalization
				LoadKeyServices = LoadKeyServices % CreateLocalization
				CreateButton = CreateNotification(CreateLuarmor, LoadKeyServices)
				if LoadPackageJson then
					CreateButton = CreateDialog(CreateButton, LoadPackageJson, ...)
				end
				return CreateButton
			elseif CreateLuarmor then
				return CreateLuarmor % CreateLocalization
			else
				return 0
			end
		end
		local function CreateAcrylicBlur(CreateLuarmor, LoadKeyServices, LoadPackageJson, ...)
			local CreateButton
			if LoadKeyServices then
				CreateLuarmor = CreateLuarmor % CreateLocalization
				LoadKeyServices = LoadKeyServices % CreateLocalization
				CreateButton = (CreateLuarmor + LoadKeyServices - CreateNotification(CreateLuarmor, LoadKeyServices)) / 2
				if LoadPackageJson then
					CreateButton = CreateAcrylicBlur(CreateButton, LoadPackageJson, ...)
				end
				return CreateButton
			elseif CreateLuarmor then
				return CreateLuarmor % CreateLocalization
			else
				return CreatePandaDev
			end
		end
		local function CreateAcrylicPaint(CreateLuarmor)
			return CreatePandaDev - CreateLuarmor
		end
		local function CreatePopup(CreateLuarmor, LoadKeyServices)
			if LoadKeyServices < 0 then
				return lshift(CreateLuarmor, -LoadKeyServices)
			end
			return math.floor(CreateLuarmor % 4294967296 / 2 ^ LoadKeyServices)
		end
		local function CreateLabel(CreateLuarmor, LoadKeyServices)
			if LoadKeyServices > 31 or LoadKeyServices < -31 then
				return 0
			end
			return CreatePopup(CreateLuarmor % CreateLocalization, LoadKeyServices)
		end
		local function lshift(CreateLuarmor, LoadKeyServices)
			if LoadKeyServices < 0 then
				return CreateLabel(CreateLuarmor, -LoadKeyServices)
			end
			return CreateLuarmor * 2 ^ LoadKeyServices % 4294967296
		end
		local function CreateScrollBar(CreateLuarmor, LoadKeyServices)
			CreateLuarmor = CreateLuarmor % CreateLocalization
			LoadKeyServices = LoadKeyServices % 32
			local LoadPackageJson = CreateAcrylicBlur(CreateLuarmor, 2 ^ LoadKeyServices - 1)
			return CreateLabel(CreateLuarmor, LoadKeyServices) + lshift(LoadPackageJson, 32 - LoadKeyServices)
		end
		local CreateLuarmor = {
			0x428a2f98,
			0x71374491,
			0xb5c0fbcf,
			0xe9b5dba5,
			0x3956c25b,
			0x59f111f1,
			0x923f82a4,
			0xab1c5ed5,
			0xd807aa98,
			0x12835b01,
			0x243185be,
			0x550c7dc3,
			0x72be5d74,
			0x80deb1fe,
			0x9bdc06a7,
			0xc19bf174,
			0xe49b69c1,
			0xefbe4786,
			0x0fc19dc6,
			0x240ca1cc,
			0x2de92c6f,
			0x4a7484aa,
			0x5cb0a9dc,
			0x76f988da,
			0x983e5152,
			0xa831c66d,
			0xb00327c8,
			0xbf597fc7,
			0xc6e00bf3,
			0xd5a79147,
			0x06ca6351,
			0x14292967,
			0x27b70a85,
			0x2e1b2138,
			0x4d2c6dfc,
			0x53380d13,
			0x650a7354,
			0x766a0abb,
			0x81c2c92e,
			0x92722c85,
			0xa2bfe8a1,
			0xa81a664b,
			0xc24b8b70,
			0xc76c51a3,
			0xd192e819,
			0xd6990624,
			0xf40e3585,
			0x106aa070,
			0x19a4c116,
			0x1e376c08,
			0x2748774c,
			0x34b0bcb5,
			0x391c0cb3,
			0x4ed8aa4a,
			0x5b9cca4f,
			0x682e6ff3,
			0x748f82ee,
			0x78a5636f,
			0x84c87814,
			0x8cc70208,
			0x90befffa,
			0xa4506ceb,
			0xbef9a3f7,
			0xc67178f2,
		}
		local function CreateOpenButton(LoadKeyServices)
			return string.gsub(LoadKeyServices, ".", function(LoadPackageJson)
				return string.format("%02x", string.byte(LoadPackageJson))
			end)
		end
		local function CreateElementFrame(LoadKeyServices, LoadPackageJson)
			local CreateButton = ""
			for CreateInput = 1, LoadPackageJson do
				local CreateKeySystem = LoadKeyServices % 256
				CreateButton = string.char(CreateKeySystem) .. CreateButton
				LoadKeyServices = (LoadKeyServices - CreateKeySystem) / 256
			end
			return CreateButton
		end
		local function CreateToggleEx(LoadKeyServices, LoadPackageJson)
			local CreateButton = 0
			for CreateInput = LoadPackageJson, LoadPackageJson + 3 do
				CreateButton = CreateButton * 256 + string.byte(LoadKeyServices, CreateInput)
			end
			return CreateButton
		end
		local function CreateSlider(LoadKeyServices, LoadPackageJson)
			local CreateButton = 64 - (LoadPackageJson + 9) % 64
			LoadPackageJson = CreateElementFrame(8 * LoadPackageJson, 8)
			LoadKeyServices = LoadKeyServices .. "\128" .. string.rep("\0", CreateButton) .. LoadPackageJson
			assert(#LoadKeyServices % 64 == 0)
			return LoadKeyServices
		end
		local function CreateDropdown(LoadKeyServices)
			LoadKeyServices[1] = 0x6a09e667
			LoadKeyServices[2] = 0xbb67ae85
			LoadKeyServices[3] = 0x3c6ef372
			LoadKeyServices[4] = 0xa54ff53a
			LoadKeyServices[5] = 0x510e527f
			LoadKeyServices[6] = 0x9b05688c
			LoadKeyServices[7] = 0x1f83d9ab
			LoadKeyServices[8] = 0x5be0cd19
			return LoadKeyServices
		end
		local function CreateCodeBlock(LoadKeyServices, LoadPackageJson, CreateButton)
			local CreateInput = {}
			for CreateKeySystem = 1, 16 do
				CreateInput[CreateKeySystem] = CreateToggleEx(LoadKeyServices, LoadPackageJson + (CreateKeySystem - 1) * 4)
			end
			for CreateKeySystem = 17, 64 do
				local UtilViewport = CreateInput[CreateKeySystem - 15]
				local AcrylicManager = CreateDialog(CreateScrollBar(UtilViewport, 7), CreateScrollBar(UtilViewport, 18), CreateLabel(UtilViewport, 3))
				UtilViewport = CreateInput[CreateKeySystem - 2]
				CreateInput[CreateKeySystem] = (CreateInput[CreateKeySystem - 16] + AcrylicManager + CreateInput[CreateKeySystem - 7] + CreateDialog(CreateScrollBar(UtilViewport, 17), CreateScrollBar(UtilViewport, 19), CreateLabel(UtilViewport, 10))) % CreateLocalization
			end
			local CreateKeySystem, UtilViewport, AcrylicManager, LoadAllThemes, CreateTag, ConfigManager, CreateButtonEx, CreateToggle = CreateButton[1], CreateButton[2], CreateButton[3], CreateButton[4], CreateButton[5], CreateButton[6], CreateButton[7], CreateButton[8]
			for CreateCheckbox = 1, 64 do
				local CreateKeybind = CreateDialog(CreateScrollBar(CreateKeySystem, 2), CreateScrollBar(CreateKeySystem, 13), CreateScrollBar(CreateKeySystem, 22))
				local CreateInputEx = CreateDialog(CreateAcrylicBlur(CreateKeySystem, UtilViewport), CreateAcrylicBlur(CreateKeySystem, AcrylicManager), CreateAcrylicBlur(UtilViewport, AcrylicManager))
				local CreateDropdownMenu = (CreateKeybind + CreateInputEx) % CreateLocalization
				local LuaHighlighter = CreateDialog(CreateScrollBar(CreateTag, 6), CreateScrollBar(CreateTag, 11), CreateScrollBar(CreateTag, 25))
				local CreateCode = CreateDialog(CreateAcrylicBlur(CreateTag, ConfigManager), CreateAcrylicBlur(CreateAcrylicPaint(CreateTag), CreateButtonEx))
				local CreateColorpicker = (CreateToggle + LuaHighlighter + CreateCode + CreateLuarmor[CreateCheckbox] + CreateInput[CreateCheckbox]) % CreateLocalization
				CreateToggle = CreateButtonEx
				CreateButtonEx = ConfigManager
				ConfigManager = CreateTag
				CreateTag = (LoadAllThemes + CreateColorpicker) % CreateLocalization
				LoadAllThemes = AcrylicManager
				AcrylicManager = UtilViewport
				UtilViewport = CreateKeySystem
				CreateKeySystem = (CreateColorpicker + CreateDropdownMenu) % CreateLocalization
			end
			CreateButton[1] = (CreateButton[1] + CreateKeySystem) % CreateLocalization
			CreateButton[2] = (CreateButton[2] + UtilViewport) % CreateLocalization
			CreateButton[3] = (CreateButton[3] + AcrylicManager) % CreateLocalization
			CreateButton[4] = (CreateButton[4] + LoadAllThemes) % CreateLocalization
			CreateButton[5] = (CreateButton[5] + CreateTag) % CreateLocalization
			CreateButton[6] = (CreateButton[6] + ConfigManager) % CreateLocalization
			CreateButton[7] = (CreateButton[7] + CreateButtonEx) % CreateLocalization
			CreateButton[8] = (CreateButton[8] + CreateToggle) % CreateLocalization
		end
		local function Z(LoadKeyServices)
			LoadKeyServices = CreateSlider(LoadKeyServices, #LoadKeyServices)
			local LoadPackageJson = CreateDropdown({})
			for CreateButton = 1, #LoadKeyServices, 64 do
				CreateCodeBlock(LoadKeyServices, CreateButton, LoadPackageJson)
			end
			return CreateOpenButton(
				CreateElementFrame(LoadPackageJson[1], 4)
					.. CreateElementFrame(LoadPackageJson[2], 4)
					.. CreateElementFrame(LoadPackageJson[3], 4)
					.. CreateElementFrame(LoadPackageJson[4], 4)
					.. CreateElementFrame(LoadPackageJson[5], 4)
					.. CreateElementFrame(LoadPackageJson[6], 4)
					.. CreateElementFrame(LoadPackageJson[7], 4)
					.. CreateElementFrame(LoadPackageJson[8], 4)
			)
		end
		local LoadKeyServices
		local LoadPackageJson = { ["\\"] = "\\", ['"'] = '"', ["\CreateLocalization"] = "CreateLocalization", ["\CreateLuarmor"] = "CreateLuarmor", ["\CreateAcrylicBlur"] = "CreateAcrylicBlur", ["\LoadAllThemes"] = "LoadAllThemes", ["\CreateScrollBar"] = "CreateScrollBar" }
		local CreateButton = { ["/"] = "/" }
		for CreateInput, CreateKeySystem in pairs(LoadPackageJson) do
			CreateButton[CreateKeySystem] = CreateInput
		end
		local UtilViewport = function(UtilViewport)
			return "\\" .. (LoadPackageJson[UtilViewport] or string.format("CreateTag%04x", UtilViewport:byte()))
		end
		local AcrylicManager = function(AcrylicManager)
			return "null"
		end
		local LoadAllThemes = function(LoadAllThemes, CreateTag)
			local ConfigManager = {}
			CreateTag = CreateTag or {}
			if CreateTag[LoadAllThemes] then
				error("circular reference")
			end
			CreateTag[LoadAllThemes] = true
			if rawget(LoadAllThemes, 1) ~= nil or next(LoadAllThemes) == nil then
				local CreateButtonEx = 0
				for CreateToggle in pairs(LoadAllThemes) do
					if type(CreateToggle) ~= "number" then
						error("invalid table: mixed or invalid key types")
					end
					CreateButtonEx = CreateButtonEx + 1
				end
				if CreateButtonEx ~= #LoadAllThemes then
					error("invalid table: sparse array")
				end
				for CreateCheckbox, CreateKeybind in ipairs(LoadAllThemes) do
					table.insert(ConfigManager, LoadKeyServices(CreateKeybind, CreateTag))
				end
				CreateTag[LoadAllThemes] = nil
				return "[" .. table.concat(ConfigManager, ",") .. "]"
			else
				for CreateButtonEx, CreateToggle in pairs(LoadAllThemes) do
					if type(CreateButtonEx) ~= "string" then
						error("invalid table: mixed or invalid key types")
					end
					table.insert(ConfigManager, LoadKeyServices(CreateButtonEx, CreateTag) .. ":" .. LoadKeyServices(CreateToggle, CreateTag))
				end
				CreateTag[LoadAllThemes] = nil
				return "{" .. table.concat(ConfigManager, ",") .. "}"
			end
		end
		local CreateTag = function(CreateTag)
			return '"' .. CreateTag:gsub('[%CreateParagraph\1-\31\\"]', UtilViewport) .. '"'
		end
		local ConfigManager = function(ConfigManager)
			if ConfigManager ~= ConfigManager or ConfigManager <= -math.huge or ConfigManager >= math.huge then
				error("unexpected number value '" .. tostring(ConfigManager) .. "'")
			end
			return string.format("%.14g", ConfigManager)
		end
		local CreateButtonEx = { ["nil"] = AcrylicManager, table = LoadAllThemes, string = CreateTag, number = ConfigManager, boolean = tostring }
		LoadKeyServices = function(CreateToggle, CreateCheckbox)
			local CreateKeybind = type(CreateToggle)
			local CreateInputEx = CreateButtonEx[CreateKeybind]
			if CreateInputEx then
				return CreateInputEx(CreateToggle, CreateCheckbox)
			end
			error("unexpected type '" .. CreateKeybind .. "'")
		end
		local CreateToggle = function(CreateToggle)
			return LoadKeyServices(CreateToggle)
		end
		local CreateCheckbox
		local CreateKeybind = function(...)
			local CreateKeybind = {}
			for CreateInputEx = 1, select("#", ...) do
				CreateKeybind[select(CreateInputEx, ...)] = true
			end
			return CreateKeybind
		end
		local CreateInputEx = CreateKeybind(" ", "\CreateScrollBar", "\LoadAllThemes", "\CreateAcrylicBlur")
		local CreateDropdownMenu = CreateKeybind(" ", "\CreateScrollBar", "\LoadAllThemes", "\CreateAcrylicBlur", "]", "}", ",")
		local LuaHighlighter = CreateKeybind("\\", "/", '"', "CreateLocalization", "CreateLuarmor", "CreateAcrylicBlur", "LoadAllThemes", "CreateScrollBar", "CreateTag")
		local CreateCode = CreateKeybind("true", "false", "null")
		local CreateColorpicker = { ["true"] = true, ["false"] = false, null = nil }
		local CreateSection = function(CreateSection, CreateDivider, CreateSpace, CreateImage)
			for ElementLoader = CreateDivider, #CreateSection do
				if CreateSpace[CreateSection:sub(ElementLoader, ElementLoader)] ~= CreateImage then
					return ElementLoader
				end
			end
			return #CreateSection + 1
		end
		local CreateDivider = function(CreateDivider, CreateSpace, CreateImage)
			local ElementLoader = 1
			local TabManager = 1
			for SectionManager = 1, CreateSpace - 1 do
				TabManager = TabManager + 1
				if CreateDivider:sub(SectionManager, SectionManager) == "\CreateAcrylicBlur" then
					ElementLoader = ElementLoader + 1
					TabManager = 1
				end
			end
			error(string.format("%CreateLabel at line %CreatePlatoboost col %CreatePlatoboost", CreateImage, ElementLoader, TabManager))
		end
		local CreateSpace = function(CreateSpace)
			local CreateImage = math.floor
			if CreateSpace <= 0x7f then
				return string.char(CreateSpace)
			elseif CreateSpace <= 0x7ff then
				return string.char(CreateImage(CreateSpace / 64) + 192, CreateSpace % 64 + 128)
			elseif CreateSpace <= 0xffff then
				return string.char(CreateImage(CreateSpace / 4096) + 224, CreateImage(CreateSpace % 4096 / 64) + 128, CreateSpace % 64 + 128)
			elseif CreateSpace <= 0x10ffff then
				return string.char(
					CreateImage(CreateSpace / 262144) + 240,
					CreateImage(CreateSpace % 262144 / 4096) + 128,
					CreateImage(CreateSpace % 4096 / 64) + 128,
					CreateSpace % 64 + 128
				)
			end
			error(string.format("invalid unicode codepoint '%CreateTooltip'", CreateSpace))
		end
		local CreateImage = function(CreateImage)
			local ElementLoader = tonumber(CreateImage:sub(1, 4), 16)
			local TabManager = tonumber(CreateImage:sub(7, 10), 16)
			if TabManager then
				return CreateSpace((ElementLoader - 0xd800) * 0x400 + TabManager - 0xdc00 + 0x10000)
			else
				return CreateSpace(ElementLoader)
			end
		end
		local ElementLoader = function(ElementLoader, TabManager)
			local SectionManager = ""
			local IconAtlas = TabManager + 1
			local SearchModal = IconAtlas
			while IconAtlas <= #ElementLoader do
				local WindowBuilder = ElementLoader:byte(IconAtlas)
				if WindowBuilder < 32 then
					CreateDivider(ElementLoader, IconAtlas, "control character in string")
				elseif WindowBuilder == 92 then
					SectionManager = SectionManager .. ElementLoader:sub(SearchModal, IconAtlas - 1)
					IconAtlas = IconAtlas + 1
					local X = ElementLoader:sub(IconAtlas, IconAtlas)
					if X == "CreateTag" then
						local Y = ElementLoader:match("^[dD][89aAbB]%CreateTooltip%CreateTooltip\\CreateTag%CreateTooltip%CreateTooltip%CreateTooltip%CreateTooltip", IconAtlas + 1)
							or ElementLoader:match("^%CreateTooltip%CreateTooltip%CreateTooltip%CreateTooltip", IconAtlas + 1)
							or CreateDivider(ElementLoader, IconAtlas - 1, "invalid unicode escape in string")
						SectionManager = SectionManager .. CreateImage(Y)
						IconAtlas = IconAtlas + #Y
					else
						if not LuaHighlighter[X] then
							CreateDivider(ElementLoader, IconAtlas - 1, "invalid escape char '" .. X .. "' in string")
						end
						SectionManager = SectionManager .. CreateButton[X]
					end
					SearchModal = IconAtlas + 1
				elseif WindowBuilder == 34 then
					SectionManager = SectionManager .. ElementLoader:sub(SearchModal, IconAtlas - 1)
					return SectionManager, IconAtlas + 1
				end
				IconAtlas = IconAtlas + 1
			end
			CreateDivider(ElementLoader, TabManager, "expected closing quote for string")
		end
		local TabManager = function(TabManager, SectionManager)
			local IconAtlas = CreateSection(TabManager, SectionManager, CreateDropdownMenu)
			local SearchModal = TabManager:sub(SectionManager, IconAtlas - 1)
			local WindowBuilder = tonumber(SearchModal)
			if not WindowBuilder then
				CreateDivider(TabManager, SectionManager, "invalid number '" .. SearchModal .. "'")
			end
			return WindowBuilder, IconAtlas
		end
		local SectionManager = function(SectionManager, IconAtlas)
			local SearchModal = CreateSection(SectionManager, IconAtlas, CreateDropdownMenu)
			local WindowBuilder = SectionManager:sub(IconAtlas, SearchModal - 1)
			if not CreateCode[WindowBuilder] then
				CreateDivider(SectionManager, IconAtlas, "invalid literal '" .. WindowBuilder .. "'")
			end
			return CreateColorpicker[WindowBuilder], SearchModal
		end
		local IconAtlas = function(IconAtlas, SearchModal)
			local WindowBuilder = {}
			local X = 1
			SearchModal = SearchModal + 1
			while 1 do
				local Y
				SearchModal = CreateSection(IconAtlas, SearchModal, CreateInputEx, true)
				if IconAtlas:sub(SearchModal, SearchModal) == "]" then
					SearchModal = SearchModal + 1
					break
				end
				Y, SearchModal = CreateCheckbox(IconAtlas, SearchModal)
				WindowBuilder[X] = Y
				X = X + 1
				SearchModal = CreateSection(IconAtlas, SearchModal, CreateInputEx, true)
				local _ = IconAtlas:sub(SearchModal, SearchModal)
				SearchModal = SearchModal + 1
				if _ == "]" then
					break
				end
				if _ ~= "," then
					CreateDivider(IconAtlas, SearchModal, "expected ']' or ','")
				end
			end
			return WindowBuilder, SearchModal
		end
		local aa = function(SearchModal, WindowBuilder)
			local X = {}
			WindowBuilder = WindowBuilder + 1
			while 1 do
				local Y, _
				WindowBuilder = CreateSection(SearchModal, WindowBuilder, CreateInputEx, true)
				if SearchModal:sub(WindowBuilder, WindowBuilder) == "}" then
					WindowBuilder = WindowBuilder + 1
					break
				end
				if SearchModal:sub(WindowBuilder, WindowBuilder) ~= '"' then
					CreateDivider(SearchModal, WindowBuilder, "expected string for key")
				end
				Y, WindowBuilder = CreateCheckbox(SearchModal, WindowBuilder)
				WindowBuilder = CreateSection(SearchModal, WindowBuilder, CreateInputEx, true)
				if SearchModal:sub(WindowBuilder, WindowBuilder) ~= ":" then
					CreateDivider(SearchModal, WindowBuilder, "expected ':' after key")
				end
				WindowBuilder = CreateSection(SearchModal, WindowBuilder + 1, CreateInputEx, true)
				_, WindowBuilder = CreateCheckbox(SearchModal, WindowBuilder)
				X[Y] = _
				WindowBuilder = CreateSection(SearchModal, WindowBuilder, CreateInputEx, true)
				local aa = SearchModal:sub(WindowBuilder, WindowBuilder)
				WindowBuilder = WindowBuilder + 1
				if aa == "}" then
					break
				end
				if aa ~= "," then
					CreateDivider(SearchModal, WindowBuilder, "expected '}' or ','")
				end
			end
			return X, WindowBuilder
		end
		local SearchModal = {
			['"'] = ElementLoader,
			["0"] = TabManager,
			["1"] = TabManager,
			["2"] = TabManager,
			["3"] = TabManager,
			["4"] = TabManager,
			["5"] = TabManager,
			["6"] = TabManager,
			["7"] = TabManager,
			["8"] = TabManager,
			["9"] = TabManager,
			["-"] = TabManager,
			CreateScrollBar = SectionManager,
			CreateLuarmor = SectionManager,
			CreateAcrylicBlur = SectionManager,
			["["] = IconAtlas,
			["{"] = aa,
		}
		CreateCheckbox = function(WindowBuilder, X)
			local Y = WindowBuilder:sub(X, X)
			local _ = SearchModal[Y]
			if _ then
				return _(WindowBuilder, X)
			end
			CreateDivider(WindowBuilder, X, "unexpected character '" .. Y .. "'")
		end
		local WindowBuilder = function(WindowBuilder)
			if type(WindowBuilder) ~= "string" then
				error("expected argument of type string, got " .. type(WindowBuilder))
			end
			local X, Y = CreateCheckbox(WindowBuilder, CreateSection(WindowBuilder, 1, CreateInputEx, true))
			Y = CreateSection(WindowBuilder, Y, CreateInputEx, true)
			if Y <= #WindowBuilder then
				CreateDivider(WindowBuilder, Y, "trailing garbage")
			end
			return X
		end
		local X, Y, _ = CreateToggle, WindowBuilder, Z

		local ab = {}

		function ab.New(ac, ad)
			local ae = ac
			local af = ad
			local ag = true

			local ah = function(ah) end

			repeat
				task.wait(1)
			until game:IsLoaded()

			local ai = false
			local aj, ak, al, am, an, ao, ap, aq, ar =
				setclipboard or toclipboard,
				request or http_request or syn_request,
				string.char,
				tostring,
				string.sub,
				os.time,
				math.random,
				math.floor,
				gethwid or function()
					return game:GetService("Players").LocalPlayer.UserId
				end
			local as, at = "", 0

			local au = "https://api.platoboost.com"
			local av = ak({
				Url = au .. "/public/connectivity",
				Method = "GET",
			})
			if av.StatusCode ~= 200 or av.StatusCode ~= 429 then
				au = "https://api.platoboost.net"
			end

			function cacheLink()
				if at + 600 < ao() then
					local aw = ak({
						Url = au .. "/public/start",
						Method = "POST",
						Body = X({
							service = ae,
							identifier = _(ar()),
						}),
						Headers = {
							["Content-Type"] = "application/json",
							["User-Agent"] = "Roblox/Exploit",
						},
					})

					if aw.StatusCode == 200 then
						local ax = Y(aw.Body)

						if ax.success == true then
							as = ax.data.url
							at = ao()
							return true, as
						else
							ah(ax.message)
							return false, ax.message
						end
					elseif aw.StatusCode == 429 then
						local ax = "you are being rate limited, please wait 20 seconds and try again."
						ah(ax)
						return false, ax
					end

					local ax = "Failed to cache link."
					ah(ax)
					return false, ax
				else
					return true, as
				end
			end

			cacheLink()

			local aw = function()
				local aw = ""
				for ax = 1, 16 do
					aw = aw .. al(aq(ap() * 26) + 97)
				end
				return aw
			end

			for ax = 1, 5 do
				local ay = aw()
				task.wait(0.2)
				if aw() == ay then
					local az = "platoboost nonce error."
					ah(az)
					error(az)
				end
			end

			local ax = function()
				local ax, ay = cacheLink()

				if ax then
					aj(ay)
				end
			end

			local ay = function(ay)
				local az = aw()
				local aA = au .. "/public/redeem/" .. am(ae)

				local aB = {
					identifier = _(ar()),
					key = ay,
				}

				if ag then
					aB.nonce = az
				end

				local aC = ak({
					Url = aA,
					Method = "POST",
					Body = X(aB),
					Headers = {
						["Content-Type"] = "application/json",
					},
				})

				if aC.StatusCode == 200 then
					local aD = Y(aC.Body)

					if aD.success == true then
						if aD.data.valid == true then
							if ag then
								if aD.data.hash == _("true" .. "-" .. az .. "-" .. af) then
									return true
								else
									ah("failed to verify integrity.")
									return false
								end
							else
								return true
							end
						else
							ah("key is invalid.")
							return false
						end
					else
						if an(aD.message, 1, 27) == "unique constraint violation" then
							ah("you already have an active key, please wait for it to expire before redeeming it.")
							return false
						else
							ah(aD.message)
							return false
						end
					end
				elseif aC.StatusCode == 429 then
					ah("you are being rate limited, please wait 20 seconds and try again.")
					return false
				else
					ah("server returned an invalid status code, please try again later.")
					return false
				end
			end

			local az = function(az)
				if ai == true then
					return false, "CreateButtonEx request is already being sent, please slow down."
				else
					ai = true
				end

				local aA = aw()
				local aB = au .. "/public/whitelist/" .. am(ae) .. "?identifier=" .. _(ar()) .. "&key=" .. az

				if ag then
					aB = aB .. "&nonce=" .. aA
				end

				local aC = ak({
					Url = aB,
					Method = "GET",
				})

				ai = false

				if aC.StatusCode == 200 then
					local aD = Y(aC.Body)

					if aD.success == true then
						if aD.data.valid == true then
							if ag then
								if aD.data.hash == _("true" .. "-" .. aA .. "-" .. af) then
									return true, ""
								else
									return false, "failed to verify integrity."
								end
							else
								return true
							end
						else
							if an(az, 1, 4) == "KEY_" then
								return true, ay(az)
							else
								return false, "Key is invalid."
							end
						end
					else
						return false, aD.message
					end
				elseif aC.StatusCode == 429 then
					return false, "You are being rate limited, please wait 20 seconds and try again."
				else
					return false, "Server returned an invalid status code, please try again later."
				end
			end

			local aA = function(aA)
				local aB = aw()
				local aC = au .. "/public/flag/" .. am(ae) .. "?name=" .. aA

				if ag then
					aC = aC .. "&nonce=" .. aB
				end

				local aD = ak({
					Url = aC,
					Method = "GET",
				})

				if aD.StatusCode == 200 then
					local aE = Y(aD.Body)

					if aE.success == true then
						if ag then
							if aE.data.hash == _(am(aE.data.value) .. "-" .. aB .. "-" .. af) then
								return aE.data.value
							else
								ah("failed to verify integrity.")
								return nil
							end
						else
							return aE.data.value
						end
					else
						ah(aE.message)
						return nil
					end
				else
					return nil
				end
			end

			return {
				Verify = az,
				GetFlag = aA,
				Copy = ax,
			}
		end

		return ab
	end
	function WindUI.CreatePandaDev()
		local aa = game:GetService("HttpService")
		local ab = {}

		function ab.New(ac)
			local ad = gethwid or function()
				return game:GetService("Players").LocalPlayer.UserId
			end
			local ae, af = request or http_request or syn_request, setclipboard or toclipboard

			function ValidateKey(ag)
				local ah = "https://pandadevelopment.net/v2_validation?key="
					.. tostring(ag)
					.. "&service="
					.. tostring(ac)
					.. "&hwid="
					.. tostring(ad())

				local ai, aj = pcall(function()
					return ae({
						Url = ah,
						Method = "GET",
						Headers = { ["User-Agent"] = "Roblox/Exploit" },
					})
				end)

				if ai and aj then
					if aj.Success then
						local ak, al = pcall(function()
							return aa:JSONDecode(aj.Body)
						end)

						if ak and al then
							if al.V2_Authentication and al.V2_Authentication == "success" then
								return true, "Authenticated"
							else
								local am = al.Key_Information.Notes or "Unknown reason"

								return false, "Authentication failed: " .. am
							end
						else
							return false, "JSON decode error"
						end
					else
						warn(
							"[Pelinda Ov2.5] HTTP request was not successful. Code: "
								.. tostring(aj.StatusCode)
								.. " Message: "
								.. aj.StatusMessage
						)
						return false, "HTTP request failed: " .. aj.StatusMessage
					end
				else
					return false, "Request pcall error"
				end
			end

			function GetKeyLink()
				return "https://pandadevelopment.net/getkey?service=" .. tostring(ac) .. "&hwid=" .. tostring(ad())
			end

			function CopyLink()
				return af(GetKeyLink())
			end

			return {
				Verify = ValidateKey,
				Copy = CopyLink,
			}
		end

		return ab
	end
	function WindUI.CreateLuarmor()
		local aa = {}

		function aa.New(ab, ac)
			local ad = "https://sdkapi-public.luarmor.net/library.lua"

			local ae = loadstring(game.HttpGetAsync and game:HttpGetAsync(ad) or HttpService:GetAsync(ad))()
			local af = setclipboard or toclipboard

			ae.script_id = ab

			function ValidateKey(ag)
				local ah = ae.check_key(ag)

				if ah.code == "KEY_VALID" then
					return true, "Whitelisted!"
				elseif ah.code == "KEY_HWID_LOCKED" then
					return false, "Key linked to WindUI different HWID. Please reset it using our bot"
				elseif ah.code == "KEY_INCORRECT" then
					return false, "Key is wrong or deleted!"
				else
					return false, "Key check failed:" .. ah.message .. " Code: " .. ah.code
				end
			end

			function CopyLink()
				af(tostring(ac))
			end

			return {
				Verify = ValidateKey,
				Copy = CopyLink,
			}
		end

		return aa
	end
	function WindUI.LoadKeyServices()
		return {
			platoboost = {
				Name = "Platoboost",
				Icon = "rbxassetid://75920162824531",
				Args = { "ServiceId", "Secret" },

				New = WindUI.load("CreatePlatoboost").New,
			},
			pandadevelopment = {
				Name = "Panda Development",
				Icon = "panda",
				Args = { "ServiceId" },

				New = WindUI.load("CreatePandaDev").New,
			},
			luarmor = {
				Name = "Luarmor",
				Icon = "rbxassetid://130918283130165",
				Args = { "ScriptId", "Discord" },

				New = WindUI.load("CreateLuarmor").New,
			},
		}
	end
	function WindUI.LoadPackageJson()
		return [[
{
    "name": "windui",
    "version": "1.6.53",
    "main": "./dist/main.lua",
    "repository": "https://github.com/Footagesus/WindUI",
    "discord": "https://discord.gg/ftgs-development-hub-1300692552005189632",
    "author": "Footagesus",
    "description": "Roblox UI Library for scripts",
    "license": "MIT",
    "scripts": {
        "dev": "sh build/build.sh dev $INPUT_FILE",
        "build": "sh build/build.sh build $INPUT_FILE",
        "live": "python -UtilViewport http.server 8642",
        "watch": "chokidar . -CreateButton 'node_modules' -CreateButton 'dist' -CreateButton 'build' -CreateNotification 'npm run dev --'",
        "live-build": "concurrently \"npm run live\" \"npm run watch --\"",
        "updater": "python updater/main.py"
    },
    "keywords": [
        "ui-library",
        "ui-design",
        "script",
        "script-hub",
        "exploiting"
    ],
    "devDependencies": {
        "chokidar-cli": "^3.0.0",
        "concurrently": "^9.2.0"
    }
}]]
	end
	function WindUI.CreateButton()
		local aa = {}

		local ab = WindUI.load("WindUI")
		local ac = ab.New
		local ad = ab.Tween

		function aa.New(ae, af, ag, ah, ai, aj, ak)
			ah = ah or "Primary"
			local al = not ak and 10 or 99
			local am
			if af and af ~= "" then
				am = ac("ImageLabel", {
					Image = ab.Icon(af)[1],
					ImageRectSize = ab.Icon(af)[2].ImageRectSize,
					ImageRectOffset = ab.Icon(af)[2].ImageRectPosition,
					Size = UDim2.new(0, 21, 0, 21),
					BackgroundTransparency = 1,
					ImageColor3 = ah == "White" and Color3.new(0, 0, 0) or nil,
					ImageTransparency = ah == "White" and 0.4 or 0,
					ThemeTag = {
						ImageColor3 = ah ~= "White" and "Icon" or nil,
					},
				})
			end

			local an = ac("TextButton", {
				Size = UDim2.new(0, 0, 1, 0),
				AutomaticSize = "X",
				Parent = ai,
				BackgroundTransparency = 1,
			}, {
				ab.NewRoundFrame(al, "Squircle", {
					ThemeTag = {
						ImageColor3 = ah ~= "White" and "Button" or nil,
					},
					ImageColor3 = ah == "White" and Color3.new(1, 1, 1) or nil,
					Size = UDim2.new(1, 0, 1, 0),
					Name = "Squircle",
					ImageTransparency = ah == "Primary" and 0 or ah == "White" and 0 or 1,
				}),

				ab.NewRoundFrame(al, "Squircle", {

					ImageColor3 = Color3.new(1, 1, 1),
					Size = UDim2.new(1, 0, 1, 0),
					Name = "Special",
					ImageTransparency = ah == "Secondary" and 0.95 or 1,
				}),

				ab.NewRoundFrame(al, "Shadow-sm", {

					ImageColor3 = Color3.new(0, 0, 0),
					Size = UDim2.new(1, 3, 1, 3),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Name = "Shadow",

					ImageTransparency = 1,
					Visible = not ak,
				}),

				ab.NewRoundFrame(al, not ak and "SquircleOutline" or "SquircleOutline2", {
					ThemeTag = {
						ImageColor3 = ah ~= "White" and "Outline" or nil,
					},
					Size = UDim2.new(1, 0, 1, 0),
					ImageColor3 = ah == "White" and Color3.new(0, 0, 0) or nil,
					ImageTransparency = ah == "Primary" and 0.95 or 0.85,
					Name = "SquircleOutline",
				}, {
					ac("UIGradient", {
						Rotation = 70,
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 255, 255)),
							ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
							ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 255, 255)),
						}),
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0.0, 0.1),
							NumberSequenceKeypoint.new(0.5, 1),
							NumberSequenceKeypoint.new(1.0, 0.1),
						}),
					}),
				}),

				ab.NewRoundFrame(al, "Squircle", {
					Size = UDim2.new(1, 0, 1, 0),
					Name = "Frame",
					ThemeTag = {
						ImageColor3 = ah ~= "White" and "Text" or nil,
					},
					ImageColor3 = ah == "White" and Color3.new(0, 0, 0) or nil,
					ImageTransparency = 1,
				}, {
					ac("UIPadding", {
						PaddingLeft = UDim.new(0, 16),
						PaddingRight = UDim.new(0, 16),
					}),
					ac("UIListLayout", {
						FillDirection = "Horizontal",
						Padding = UDim.new(0, 8),
						VerticalAlignment = "Center",
						HorizontalAlignment = "Center",
					}),
					am,
					ac("TextLabel", {
						BackgroundTransparency = 1,
						FontFace = Font.new(ab.Font, Enum.FontWeight.SemiBold),
						Text = ae or "Button",
						ThemeTag = {
							TextColor3 = (ah ~= "Primary" and ah ~= "White") and "Text",
						},
						TextColor3 = ah == "Primary" and Color3.new(1, 1, 1)
							or ah == "White" and Color3.new(0, 0, 0)
							or nil,
						AutomaticSize = "XY",
						TextSize = 18,
					}),
				}),
			})

			ab.AddSignal(an.MouseEnter, function()
				ad(an.Frame, 0.047, { ImageTransparency = 0.95 }):Play()
			end)
			ab.AddSignal(an.MouseLeave, function()
				ad(an.Frame, 0.047, { ImageTransparency = 1 }):Play()
			end)
			ab.AddSignal(an.MouseButton1Up, function()
				if aj then
					aj:Close()()
				end
				if ag then
					ab.SafeCallback(ag)
				end
			end)

			return an
		end

		return aa
	end
	function WindUI.CreateInput()
		local aa = {}

		local ab = WindUI.load("WindUI")
		local ac = ab.New
		local ad = ab.Tween

		function aa.New(ae, af, ag, ah, ai, aj, ak, al)
			ah = ah or "Input"
			local am = ak or 10
			local an
			if af and af ~= "" then
				an = ac("ImageLabel", {
					Image = ab.Icon(af)[1],
					ImageRectSize = ab.Icon(af)[2].ImageRectSize,
					ImageRectOffset = ab.Icon(af)[2].ImageRectPosition,
					Size = UDim2.new(0, 21, 0, 21),
					BackgroundTransparency = 1,
					ThemeTag = {
						ImageColor3 = "Icon",
					},
				})
			end

			local ao = ah ~= "Input"

			local ap = ac("TextBox", {
				BackgroundTransparency = 1,
				TextSize = 17,
				FontFace = Font.new(ab.Font, Enum.FontWeight.Regular),
				Size = UDim2.new(1, an and -29 or 0, 1, 0),
				PlaceholderText = ae,
				ClearTextOnFocus = al or false,
				ClipsDescendants = true,
				TextWrapped = ao,
				MultiLine = ao,
				TextXAlignment = "Left",
				TextYAlignment = ah == "Input" and "Center" or "Top",

				ThemeTag = {
					PlaceholderColor3 = "PlaceholderText",
					TextColor3 = "Text",
				},
			})

			local aq = ac("Frame", {
				Size = UDim2.new(1, 0, 0, 42),
				Parent = ag,
				BackgroundTransparency = 1,
			}, {
				ac("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
				}, {
					ab.NewRoundFrame(am, "Squircle", {
						ThemeTag = {
							ImageColor3 = "Accent",
						},
						Size = UDim2.new(1, 0, 1, 0),
						ImageTransparency = 0.97,
					}),
					ab.NewRoundFrame(am, "SquircleOutline", {
						ThemeTag = {
							ImageColor3 = "Outline",
						},
						Size = UDim2.new(1, 0, 1, 0),
						ImageTransparency = 0.95,
					}, {}),
					ab.NewRoundFrame(am, "Squircle", {
						Size = UDim2.new(1, 0, 1, 0),
						Name = "Frame",
						ImageColor3 = Color3.new(1, 1, 1),
						ImageTransparency = 0.95,
					}, {
						ac("UIPadding", {
							PaddingTop = UDim.new(0, ah == "Input" and 0 or 12),
							PaddingLeft = UDim.new(0, 12),
							PaddingRight = UDim.new(0, 12),
							PaddingBottom = UDim.new(0, ah == "Input" and 0 or 12),
						}),
						ac("UIListLayout", {
							FillDirection = "Horizontal",
							Padding = UDim.new(0, 8),
							VerticalAlignment = ah == "Input" and "Center" or "Top",
							HorizontalAlignment = "Left",
						}),
						an,
						ap,
					}),
				}),
			})

			if aj then
				ab.AddSignal(ap:GetPropertyChangedSignal("Text"), function()
					if ai then
						ab.SafeCallback(ai, ap.Text)
					end
				end)
			else
				ab.AddSignal(ap.FocusLost, function()
					if ai then
						ab.SafeCallback(ai, ap.Text)
					end
				end)
			end

			return aq
		end

		return aa
	end
	function WindUI.CreateDialog()
		local aa = WindUI.load("WindUI")
		local ab = aa.New
		local ac = aa.Tween

		local ad = {
			Holder = nil,

			Parent = nil,
		}

		function ad.Init(ae, af)
			Window = ae
			ad.Parent = af
			return ad
		end

		function ad.Create(ae)
			local af = {
				UICorner = 24,
				UIPadding = 15,
				UIElements = {},
			}

			if ae then
				af.UIPadding = 0
			end
			if ae then
				af.UICorner = 26
			end

			if not ae then
				af.UIElements.FullScreen = ab("Frame", {
					ZIndex = 999,
					BackgroundTransparency = 1,
					BackgroundColor3 = Color3.fromHex("#000000"),
					Size = UDim2.new(1, 0, 1, 0),
					Active = false,
					Visible = false,
					Parent = ad.Parent
						or (Window and Window.UIElements and Window.UIElements.Main and Window.UIElements.Main.Main),
				}, {
					ab("UICorner", {
						CornerRadius = UDim.new(0, Window.UICorner),
					}),
				})
			end

			af.UIElements.Main = ab("Frame", {
				Size = UDim2.new(0, 280, 0, 0),
				ThemeTag = {
					BackgroundColor3 = "Dialog",
				},
				AutomaticSize = "Y",
				BackgroundTransparency = 1,
				Visible = false,
				ZIndex = 99999,
			}, {
				ab("UIPadding", {
					PaddingTop = UDim.new(0, af.UIPadding),
					PaddingLeft = UDim.new(0, af.UIPadding),
					PaddingRight = UDim.new(0, af.UIPadding),
					PaddingBottom = UDim.new(0, af.UIPadding),
				}),
			})

			af.UIElements.MainContainer = aa.NewRoundFrame(af.UICorner, "Squircle", {
				Visible = false,

				ImageTransparency = ae and 0.15 or 0,
				Parent = ae and ad.Parent or af.UIElements.FullScreen,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				AutomaticSize = "XY",
				ThemeTag = {
					ImageColor3 = "Dialog",
				},
				ZIndex = 9999,
			}, {

				af.UIElements.Main,

				aa.NewRoundFrame(af.UICorner, "SquircleOutline2", {
					Size = UDim2.new(1, 0, 1, 0),
					ImageTransparency = 1,
					ThemeTag = {
						ImageColor3 = "Outline",
					},
				}, {
					ab("UIGradient", {
						Rotation = 45,
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 0.55),
							NumberSequenceKeypoint.new(0.5, 0.8),
							NumberSequenceKeypoint.new(1, 0.6),
						}),
					}),
				}),
			})

			function af.Open(ag)
				if not ae then
					af.UIElements.FullScreen.Visible = true
					af.UIElements.FullScreen.Active = true
				end

				task.spawn(function()
					af.UIElements.MainContainer.Visible = true

					if not ae then
						ac(af.UIElements.FullScreen, 0.1, { BackgroundTransparency = 0.3 }):Play()
					end
					ac(af.UIElements.MainContainer, 0.1, { ImageTransparency = 0 }):Play()

					task.spawn(function()
						task.wait(0.05)
						af.UIElements.Main.Visible = true
					end)
				end)
			end
			function af.Close(ag)
				if not ae then
					ac(af.UIElements.FullScreen, 0.1, { BackgroundTransparency = 1 }):Play()
					af.UIElements.FullScreen.Active = false
					task.spawn(function()
						task.wait(0.1)
						af.UIElements.FullScreen.Visible = false
					end)
				end
				af.UIElements.Main.Visible = false

				ac(af.UIElements.MainContainer, 0.1, { ImageTransparency = 1 }):Play()

				task.spawn(function()
					task.wait(0.1)
					if not ae then
						af.UIElements.FullScreen:Destroy()
					else
						af.UIElements.MainContainer:Destroy()
					end
				end)

				return function() end
			end

			return af
		end

		return ad
	end
	function WindUI.CreateKeySystem()
		local aa = {}

		local ab = WindUI.load("WindUI")
		local ac = ab.New
		local ad = ab.Tween

		local ae = WindUI.load("CreateButton").New
		local af = WindUI.load("CreateInput").New

		function aa.new(ag, ah, ai)
			local aj = WindUI.load("CreateDialog").Init(nil, ag.WindUI.ScreenGui.KeySystem)
			local ak = aj.Create(true)

			local al = {}

			local am

			local an = (ag.KeySystem.Thumbnail and ag.KeySystem.Thumbnail.Width) or 200

			local ao = 430
			if ag.KeySystem.Thumbnail and ag.KeySystem.Thumbnail.Image then
				ao = 430 + (an / 2)
			end

			ak.UIElements.Main.AutomaticSize = "Y"
			ak.UIElements.Main.Size = UDim2.new(0, ao, 0, 0)

			local ap

			if ag.Icon then
				ap = ab.Image(ag.Icon, ag.Title .. ":" .. ag.Icon, 0, "Temp", "KeySystem", ag.IconThemed)
				ap.Size = UDim2.new(0, 24, 0, 24)
				ap.LayoutOrder = -1
			end

			local aq = ac("TextLabel", {
				AutomaticSize = "XY",
				BackgroundTransparency = 1,
				Text = ag.Title,
				FontFace = Font.new(ab.Font, Enum.FontWeight.SemiBold),
				ThemeTag = {
					TextColor3 = "Text",
				},
				TextSize = 20,
			})
			local ar = ac("TextLabel", {
				AutomaticSize = "XY",
				BackgroundTransparency = 1,
				Text = "Key System",
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0),
				TextTransparency = 1,
				FontFace = Font.new(ab.Font, Enum.FontWeight.Medium),
				ThemeTag = {
					TextColor3 = "Text",
				},
				TextSize = 16,
			})

			local as = ac("Frame", {
				BackgroundTransparency = 1,
				AutomaticSize = "XY",
			}, {
				ac("UIListLayout", {
					Padding = UDim.new(0, 14),
					FillDirection = "Horizontal",
					VerticalAlignment = "Center",
				}),
				ap,
				aq,
			})

			local at = ac("Frame", {
				AutomaticSize = "Y",
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
			}, {

				as,
				ar,
			})

			local au = af("Enter Key", "key", nil, "Input", function(au)
				am = au
			end)

			local av
			if ag.KeySystem.Note and ag.KeySystem.Note ~= "" then
				av = ac("TextLabel", {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					FontFace = Font.new(ab.Font, Enum.FontWeight.Medium),
					TextXAlignment = "Left",
					Text = ag.KeySystem.Note,
					TextSize = 18,
					TextTransparency = 0.4,
					ThemeTag = {
						TextColor3 = "Text",
					},
					BackgroundTransparency = 1,
					RichText = true,
					TextWrapped = true,
				})
			end

			local aw = ac("Frame", {
				Size = UDim2.new(1, 0, 0, 42),
				BackgroundTransparency = 1,
			}, {
				ac("Frame", {
					BackgroundTransparency = 1,
					AutomaticSize = "X",
					Size = UDim2.new(0, 0, 1, 0),
				}, {
					ac("UIListLayout", {
						Padding = UDim.new(0, 9),
						FillDirection = "Horizontal",
					}),
				}),
			})

			local ax
			if ag.KeySystem.Thumbnail and ag.KeySystem.Thumbnail.Image then
				local ay
				if ag.KeySystem.Thumbnail.Title then
					ay = ac("TextLabel", {
						Text = ag.KeySystem.Thumbnail.Title,
						ThemeTag = {
							TextColor3 = "Text",
						},
						TextSize = 18,
						FontFace = Font.new(ab.Font, Enum.FontWeight.Medium),
						BackgroundTransparency = 1,
						AutomaticSize = "XY",
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
					})
				end
				ax = ac("ImageLabel", {
					Image = ag.KeySystem.Thumbnail.Image,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, an, 1, -12),
					Position = UDim2.new(0, 6, 0, 6),
					Parent = ak.UIElements.Main,
					ScaleType = "Crop",
				}, {
					ay,
					ac("UICorner", {
						CornerRadius = UDim.new(0, 20),
					}),
				})
			end

			ac("Frame", {

				Size = UDim2.new(1, ax and -an or 0, 1, 0),
				Position = UDim2.new(0, ax and an or 0, 0, 0),
				BackgroundTransparency = 1,
				Parent = ak.UIElements.Main,
			}, {
				ac("Frame", {

					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
				}, {
					ac("UIListLayout", {
						Padding = UDim.new(0, 18),
						FillDirection = "Vertical",
					}),
					at,
					av,
					au,
					aw,
					ac("UIPadding", {
						PaddingTop = UDim.new(0, 16),
						PaddingLeft = UDim.new(0, 16),
						PaddingRight = UDim.new(0, 16),
						PaddingBottom = UDim.new(0, 16),
					}),
				}),
			})

			local ay = ae("Exit", "log-out", function()
				ak:Close()()
			end, "Tertiary", aw.Frame)

			if ax then
				ay.Parent = ax
				ay.Size = UDim2.new(0, 0, 0, 42)
				ay.Position = UDim2.new(0, 10, 1, -10)
				ay.AnchorPoint = Vector2.new(0, 1)
			end

			if ag.KeySystem.URL then
				ae("Get key", "key", function()
					setclipboard(ag.KeySystem.URL)
				end, "Secondary", aw.Frame)
			end

			if ag.KeySystem.API then
				local az = 240
				local aA = false
				local aB = ae("Get key", "key", nil, "Secondary", aw.Frame)

				local aC = ab.NewRoundFrame(99, "Squircle", {
					Size = UDim2.new(0, 1, 1, 0),
					ThemeTag = {
						ImageColor3 = "Text",
					},
					ImageTransparency = 0.9,
				})

				ac("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 0, 1, 0),
					AutomaticSize = "X",
					Parent = aB.Frame,
				}, {
					aC,
					ac("UIPadding", {
						PaddingLeft = UDim.new(0, 5),
						PaddingRight = UDim.new(0, 5),
					}),
				})

				local aD = ab.Image("chevron-down", "chevron-down", 0, "Temp", "KeySystem", true)

				aD.Size = UDim2.new(1, 0, 1, 0)

				ac("Frame", {
					Size = UDim2.new(0, 21, 0, 21),
					Parent = aB.Frame,
					BackgroundTransparency = 1,
				}, {
					aD,
				})

				local aE = ab.NewRoundFrame(15, "Squircle", {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					ThemeTag = {
						ImageColor3 = "Background",
					},
				}, {
					ac("UIPadding", {
						PaddingTop = UDim.new(0, 5),
						PaddingLeft = UDim.new(0, 5),
						PaddingRight = UDim.new(0, 5),
						PaddingBottom = UDim.new(0, 5),
					}),
					ac("UIListLayout", {
						FillDirection = "Vertical",
						Padding = UDim.new(0, 5),
					}),
				})

				local CreateLocalization = ac("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, az, 0, 0),
					ClipsDescendants = true,
					AnchorPoint = Vector2.new(1, 0),
					Parent = aB,
					Position = UDim2.new(1, 0, 1, 15),
				}, {
					aE,
				})

				ac("TextLabel", {
					Text = "Select Service",
					BackgroundTransparency = 1,
					FontFace = Font.new(ab.Font, Enum.FontWeight.Medium),
					ThemeTag = { TextColor3 = "Text" },
					TextTransparency = 0.2,
					TextSize = 16,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					TextWrapped = true,
					TextXAlignment = "Left",
					Parent = aE,
				}, {
					ac("UIPadding", {
						PaddingTop = UDim.new(0, 10),
						PaddingLeft = UDim.new(0, 10),
						PaddingRight = UDim.new(0, 10),
						PaddingBottom = UDim.new(0, 10),
					}),
				})

				for CreatePandaDev, LoadKeyServices in next, ag.KeySystem.API do
					local LoadPackageJson = ag.WindUI.Services[LoadKeyServices.Type]
					if LoadPackageJson then
						local CreateButton = {}
						for CreateInput, CreateKeySystem in next, LoadPackageJson.Args do
							table.insert(CreateButton, LoadKeyServices[CreateKeySystem])
						end

						local UtilViewport = LoadPackageJson.New(table.unpack(CreateButton))
						UtilViewport.Type = LoadKeyServices.Type
						table.insert(al, UtilViewport)

						local AcrylicManager = ab.Image(
							LoadKeyServices.Icon or LoadPackageJson.Icon or Icons[LoadKeyServices.Type] or "user",
							LoadKeyServices.Icon or LoadPackageJson.Icon or Icons[LoadKeyServices.Type] or "user",
							0,
							"Temp",
							"KeySystem",
							true
						)
						AcrylicManager.Size = UDim2.new(0, 24, 0, 24)

						local LoadAllThemes = ab.NewRoundFrame(10, "Squircle", {
							Size = UDim2.new(1, 0, 0, 0),
							ThemeTag = { ImageColor3 = "Text" },
							ImageTransparency = 1,
							Parent = aE,
							AutomaticSize = "Y",
						}, {
							ac("UIListLayout", {
								FillDirection = "Horizontal",
								Padding = UDim.new(0, 10),
								VerticalAlignment = "Center",
							}),
							AcrylicManager,
							ac("UIPadding", {
								PaddingTop = UDim.new(0, 10),
								PaddingLeft = UDim.new(0, 10),
								PaddingRight = UDim.new(0, 10),
								PaddingBottom = UDim.new(0, 10),
							}),
							ac("Frame", {
								BackgroundTransparency = 1,
								Size = UDim2.new(1, -34, 0, 0),
								AutomaticSize = "Y",
							}, {
								ac("UIListLayout", {
									FillDirection = "Vertical",
									Padding = UDim.new(0, 5),
									HorizontalAlignment = "Center",
								}),
								ac("TextLabel", {
									Text = LoadKeyServices.Title or LoadPackageJson.Name,
									BackgroundTransparency = 1,
									FontFace = Font.new(ab.Font, Enum.FontWeight.Medium),
									ThemeTag = { TextColor3 = "Text" },
									TextTransparency = 0.05,
									TextSize = 18,
									Size = UDim2.new(1, 0, 0, 0),
									AutomaticSize = "Y",
									TextWrapped = true,
									TextXAlignment = "Left",
								}),
								ac("TextLabel", {
									Text = LoadKeyServices.Desc or "",
									BackgroundTransparency = 1,
									FontFace = Font.new(ab.Font, Enum.FontWeight.Regular),
									ThemeTag = { TextColor3 = "Text" },
									TextTransparency = 0.2,
									TextSize = 16,
									Size = UDim2.new(1, 0, 0, 0),
									AutomaticSize = "Y",
									TextWrapped = true,
									Visible = LoadKeyServices.Desc and true or false,
									TextXAlignment = "Left",
								}),
							}),
						}, true)

						ab.AddSignal(LoadAllThemes.MouseEnter, function()
							ad(LoadAllThemes, 0.08, { ImageTransparency = 0.95 }):Play()
						end)
						ab.AddSignal(LoadAllThemes.InputEnded, function()
							ad(LoadAllThemes, 0.08, { ImageTransparency = 1 }):Play()
						end)
						ab.AddSignal(LoadAllThemes.MouseButton1Click, function()
							UtilViewport.Copy()
							ag.WindUI:Notify({
								Title = "Key System",
								Content = "Key link copied to clipboard.",
								Image = "key",
							})
						end)
					end
				end

				ab.AddSignal(aB.MouseButton1Click, function()
					if not aA then
						ad(
							CreateLocalization,
							0.3,
							{ Size = UDim2.new(0, az, 0, aE.AbsoluteSize.Y + 1) },
							Enum.EasingStyle.Quint,
							Enum.EasingDirection.Out
						):Play()
						ad(aD, 0.3, { Rotation = 180 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					else
						ad(CreateLocalization, 0.25, { Size = UDim2.new(0, az, 0, 0) }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
						ad(aD, 0.25, { Rotation = 0 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					end
					aA = not aA
				end)
			end

			local function handleSuccess(az)
				ak:Close()()
				writefile((ag.Folder or ag.Title) .. "/" .. ah .. ".key", tostring(az))
				task.wait(0.4)
				ai(true)
			end

			local az = ae("Submit", "arrow-right", function()
				local az = tostring(am or "empty")
				local aA = ag.Folder or ag.Title

				if not ag.KeySystem.API then
					local aB = type(ag.KeySystem.Key) == "table" and table.find(ag.KeySystem.Key, az)
						or ag.KeySystem.Key == az

					if aB then
						if ag.KeySystem.SaveKey then
							handleSuccess(az)
						else
							ak:Close()()
							task.wait(0.4)
							ai(true)
						end
					end
				else
					local aB, aC
					for aD, aE in next, al do
						local CreateLocalization, CreatePandaDev = aE.Verify(az)
						if CreateLocalization then
							aB, aC = true, CreatePandaDev
							break
						end
						aC = CreatePandaDev
					end

					if aB then
						handleSuccess(az)
					else
						ag.WindUI:Notify({
							Title = "Key System. Error",
							Content = aC,
							Icon = "triangle-alert",
						})
					end
				end
			end, "Primary", aw)

			az.AnchorPoint = Vector2.new(1, 0.5)
			az.Position = UDim2.new(1, 0, 0.5, 0)

			ak:Open()
		end

		return aa
	end
	function WindUI.UtilViewport()
		local function map(aa, ab, ac, ad, ae)
			return (aa - ab) * (ae - ad) / (ac - ab) + ad
		end

		local function viewportPointToWorld(aa, ab)
			local ac = game:GetService("Workspace").CurrentCamera:ScreenPointToRay(aa.X, aa.Y)
			return ac.Origin + ac.Direction * ab
		end

		local function getOffset()
			local aa = game:GetService("Workspace").CurrentCamera.ViewportSize.Y
			return map(aa, 0, 2560, 8, 56)
		end

		return { viewportPointToWorld, getOffset }
	end
	function WindUI.CreateAcrylicBlur()
		local aa = WindUI.load("WindUI")
		local ab = aa.New

		local ac, ad = unpack(WindUI.load("UtilViewport"))
		local ae = Instance.new("Folder", game:GetService("Workspace").CurrentCamera)

		local function createAcrylic()
			local af = ab("Part", {
				Name = "Body",
				Color = Color3.new(0, 0, 0),
				Material = Enum.Material.Glass,
				Size = Vector3.new(1, 1, 0),
				Anchored = true,
				CanCollide = false,
				Locked = true,
				CastShadow = false,
				Transparency = 0.98,
			}, {
				ab("SpecialMesh", {
					MeshType = Enum.MeshType.Brick,
					Offset = Vector3.new(0, 0, -1E-6),
				}),
			})

			return af
		end

		local function createAcrylicBlur(af)
			local ag = {}

			af = af or 0.001
			local ah = {
				topLeft = Vector2.new(),
				topRight = Vector2.new(),
				bottomRight = Vector2.new(),
			}
			local ai = createAcrylic()
			ai.Parent = ae

			local function updatePositions(aj, ak)
				ah.topLeft = ak
				ah.topRight = ak + Vector2.new(aj.X, 0)
				ah.bottomRight = ak + aj
			end

			local function render()
				local aj = game:GetService("Workspace").CurrentCamera
				if aj then
					aj = aj.CFrame
				end
				local ak = aj
				if not ak then
					ak = CFrame.new()
				end

				local al = ak
				local am = ah.topLeft
				local an = ah.topRight
				local ao = ah.bottomRight

				local ap = ac(am, af)
				local aq = ac(an, af)
				local ar = ac(ao, af)

				local as = (aq - ap).Magnitude
				local at = (aq - ar).Magnitude

				ai.CFrame = CFrame.fromMatrix((ap + ar) / 2, al.XVector, al.YVector, al.ZVector)
				ai.Mesh.Scale = Vector3.new(as, at, 0)
			end

			local function onChange(aj)
				local ak = ad()
				local al = aj.AbsoluteSize - Vector2.new(ak, ak)
				local am = aj.AbsolutePosition + Vector2.new(ak / 2, ak / 2)

				updatePositions(al, am)
				task.spawn(render)
			end

			local function renderOnChange()
				local aj = game:GetService("Workspace").CurrentCamera
				if not aj then
					return
				end

				table.insert(ag, aj:GetPropertyChangedSignal("CFrame"):Connect(render))
				table.insert(ag, aj:GetPropertyChangedSignal("ViewportSize"):Connect(render))
				table.insert(ag, aj:GetPropertyChangedSignal("FieldOfView"):Connect(render))
				task.spawn(render)
			end

			ai.Destroying:Connect(function()
				for aj, ak in ag do
					pcall(function()
						ak:Disconnect()
					end)
				end
			end)

			renderOnChange()

			return onChange, ai
		end

		return function(af)
			local ag = {}
			local ah, ai = createAcrylicBlur(af)

			local aj = ab("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			})

			aa.AddSignal(aj:GetPropertyChangedSignal("AbsolutePosition"), function()
				ah(aj)
			end)

			aa.AddSignal(aj:GetPropertyChangedSignal("AbsoluteSize"), function()
				ah(aj)
			end)

			ag.AddParent = function(ak)
				aa.AddSignal(ak:GetPropertyChangedSignal("Visible"), function()
					ag.SetVisibility(ak.Visible)
				end)
			end

			ag.SetVisibility = function(ak)
				ai.Transparency = ak and 0.98 or 1
			end

			ag.Frame = aj
			ag.Model = ai

			return ag
		end
	end
	function WindUI.CreateAcrylicPaint()
		local aa = WindUI.load("WindUI")
		local ab = WindUI.load("CreateAcrylicBlur")

		local ac = aa.New

		return function(ad)
			local ae = {}

			ae.Frame = ac("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
			}, {

				ac("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),

				ac("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					Name = "Background",
					ThemeTag = {
						BackgroundColor3 = "AcrylicMain",
					},
				}, {
					ac("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
				}),

				ac("Frame", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
				}, {}),

				ac("ImageLabel", {
					Image = "rbxassetid://9968344105",
					ImageTransparency = 0.98,
					ScaleType = Enum.ScaleType.Tile,
					TileSize = UDim2.new(0, 128, 0, 128),
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
				}, {
					ac("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
				}),

				ac("ImageLabel", {
					Image = "rbxassetid://9968344227",
					ImageTransparency = 0.9,
					ScaleType = Enum.ScaleType.Tile,
					TileSize = UDim2.new(0, 128, 0, 128),
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					ThemeTag = {
						ImageTransparency = "AcrylicNoise",
					},
				}, {
					ac("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
				}),

				ac("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					ZIndex = 2,
				}, {}),
			})

			local af

			task.wait()
			if ad.UseAcrylic then
				af = ab()

				af.Frame.Parent = ae.Frame
				ae.Model = af.Model
				ae.AddParent = af.AddParent
				ae.SetVisibility = af.SetVisibility
			end

			return ae, af
		end
	end
	function WindUI.AcrylicManager()
		local aa = {
			AcrylicBlur = WindUI.load("CreateAcrylicBlur"),

			AcrylicPaint = WindUI.load("CreateAcrylicPaint"),
		}

		function aa.init()
			local ab = Instance.new("DepthOfFieldEffect")
			ab.FarIntensity = 0
			ab.InFocusRadius = 0.1
			ab.NearIntensity = 1

			local ac = {}

			function aa.Enable()
				for ad, ae in pairs(ac) do
					ae.Enabled = false
				end
				ab.Parent = game:GetService("Lighting")
			end

			function aa.Disable()
				for ad, ae in pairs(ac) do
					ae.Enabled = ae.enabled
				end
				ab.Parent = nil
			end

			local function registerDefaults()
				local function register(ad)
					if ad:IsA("DepthOfFieldEffect") then
						ac[ad] = { enabled = ad.Enabled }
					end
				end

				for ad, ae in pairs(game:GetService("Lighting"):GetChildren()) do
					register(ae)
				end

				if game:GetService("Workspace").CurrentCamera then
					for af, ag in pairs(game:GetService("Workspace").CurrentCamera:GetChildren()) do
						register(ag)
					end
				end
			end

			registerDefaults()
			aa.Enable()
		end

		return aa
	end
	function WindUI.CreatePopup()
		local aa = {}

		local ab = WindUI.load("WindUI")
		local ac = ab.New
		local ad = ab.Tween

		function aa.new(ae)
			local af = {
				Title = ae.Title or "Dialog",
				Content = ae.Content,
				Icon = ae.Icon,
				IconThemed = ae.IconThemed,
				Thumbnail = ae.Thumbnail,
				Buttons = ae.Buttons,

				IconSize = 22,
			}

			local ag = WindUI.load("CreateDialog").Init(nil, ae.WindUI.ScreenGui.Popups)
			local ah = ag.Create(true)

			local ai = 200

			local aj = 430
			if af.Thumbnail and af.Thumbnail.Image then
				aj = 430 + (ai / 2)
			end

			ah.UIElements.Main.AutomaticSize = "Y"
			ah.UIElements.Main.Size = UDim2.new(0, aj, 0, 0)

			local ak

			if af.Icon then
				ak = ab.Image(af.Icon, af.Title .. ":" .. af.Icon, 0, ae.WindUI.Window, "Popup", true, ae.IconThemed)
				ak.Size = UDim2.new(0, af.IconSize, 0, af.IconSize)
				ak.LayoutOrder = -1
			end

			local al = ac("TextLabel", {
				AutomaticSize = "Y",
				BackgroundTransparency = 1,
				Text = af.Title,
				TextXAlignment = "Left",
				FontFace = Font.new(ab.Font, Enum.FontWeight.SemiBold),
				ThemeTag = {
					TextColor3 = "Text",
				},
				TextSize = 20,
				TextWrapped = true,
				Size = UDim2.new(1, ak and -af.IconSize - 14 or 0, 0, 0),
			})

			local am = ac("Frame", {
				BackgroundTransparency = 1,
				AutomaticSize = "XY",
			}, {
				ac("UIListLayout", {
					Padding = UDim.new(0, 14),
					FillDirection = "Horizontal",
					VerticalAlignment = "Center",
				}),
				ak,
				al,
			})

			local an = ac("Frame", {
				AutomaticSize = "Y",
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
			}, {

				am,
			})

			local ao
			if af.Content and af.Content ~= "" then
				ao = ac("TextLabel", {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					FontFace = Font.new(ab.Font, Enum.FontWeight.Medium),
					TextXAlignment = "Left",
					Text = af.Content,
					TextSize = 18,
					TextTransparency = 0.2,
					ThemeTag = {
						TextColor3 = "Text",
					},
					BackgroundTransparency = 1,
					RichText = true,
					TextWrapped = true,
				})
			end

			local ap = ac("Frame", {
				Size = UDim2.new(1, 0, 0, 42),
				BackgroundTransparency = 1,
			}, {
				ac("UIListLayout", {
					Padding = UDim.new(0, 9),
					FillDirection = "Horizontal",
					HorizontalAlignment = "Right",
				}),
			})

			local aq
			if af.Thumbnail and af.Thumbnail.Image then
				local ar
				if af.Thumbnail.Title then
					ar = ac("TextLabel", {
						Text = af.Thumbnail.Title,
						ThemeTag = {
							TextColor3 = "Text",
						},
						TextSize = 18,
						FontFace = Font.new(ab.Font, Enum.FontWeight.Medium),
						BackgroundTransparency = 1,
						AutomaticSize = "XY",
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
					})
				end
				aq = ac("ImageLabel", {
					Image = af.Thumbnail.Image,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, ai, 1, 0),
					Parent = ah.UIElements.Main,
					ScaleType = "Crop",
				}, {
					ar,
					ac("UICorner", {
						CornerRadius = UDim.new(0, 0),
					}),
				})
			end

			ac("Frame", {

				Size = UDim2.new(1, aq and -ai or 0, 1, 0),
				Position = UDim2.new(0, aq and ai or 0, 0, 0),
				BackgroundTransparency = 1,
				Parent = ah.UIElements.Main,
			}, {
				ac("Frame", {

					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
				}, {
					ac("UIListLayout", {
						Padding = UDim.new(0, 18),
						FillDirection = "Vertical",
					}),
					an,
					ao,
					ap,
					ac("UIPadding", {
						PaddingTop = UDim.new(0, 16),
						PaddingLeft = UDim.new(0, 16),
						PaddingRight = UDim.new(0, 16),
						PaddingBottom = UDim.new(0, 16),
					}),
				}),
			})

			local ar = WindUI.load("CreateButton").New

			for as, at in next, af.Buttons do
				ar(at.Title, at.Icon, at.Callback, at.Variant, ap, ah)
			end

			ah:Open()

			return af
		end

		return aa
	end
	function WindUI.LoadAllThemes()
		return function(aa)
			return {
				Dark = {
					Name = "Dark",

					Accent = Color3.fromHex("#18181b"),
					Dialog = Color3.fromHex("#161616"),
					Outline = Color3.fromHex("#FFFFFF"),
					Text = Color3.fromHex("#FFFFFF"),
					Placeholder = Color3.fromHex("#7a7a7a"),
					Background = Color3.fromHex("#101010"),
					Button = Color3.fromHex("#52525b"),
					Icon = Color3.fromHex("#a1a1aa"),
				},
				Light = {
					Name = "Light",

					Accent = Color3.fromHex("#FFFFFF"),
					Dialog = Color3.fromHex("#f4f4f5"),
					Outline = Color3.fromHex("#09090b"),
					Text = Color3.fromHex("#000000"),
					Placeholder = Color3.fromHex("#555555"),
					Background = Color3.fromHex("#e4e4e7"),
					Button = Color3.fromHex("#18181b"),
					Icon = Color3.fromHex("#52525b"),
				},
				Rose = {
					Name = "Rose",

					Accent = Color3.fromHex("#be185d"),
					Dialog = Color3.fromHex("#4c0519"),
					Outline = Color3.fromHex("#fecdd3"),
					Text = Color3.fromHex("#fdf2f8"),
					Placeholder = Color3.fromHex("#d67aa6"),
					Background = Color3.fromHex("#1f0308"),
					Button = Color3.fromHex("#e11d48"),
					Icon = Color3.fromHex("#fb7185"),
				},
				Plant = {
					Name = "Plant",

					Accent = Color3.fromHex("#166534"),
					Dialog = Color3.fromHex("#052e16"),
					Outline = Color3.fromHex("#bbf7d0"),
					Text = Color3.fromHex("#f0fdf4"),
					Placeholder = Color3.fromHex("#4fbf7a"),
					Background = Color3.fromHex("#0a1b0f"),
					Button = Color3.fromHex("#16a34a"),
					Icon = Color3.fromHex("#4ade80"),
				},
				Red = {
					Name = "Red",

					Accent = Color3.fromHex("#991b1b"),
					Dialog = Color3.fromHex("#450a0a"),
					Outline = Color3.fromHex("#fecaca"),
					Text = Color3.fromHex("#fef2f2"),
					Placeholder = Color3.fromHex("#d95353"),
					Background = Color3.fromHex("#1c0606"),
					Button = Color3.fromHex("#dc2626"),
					Icon = Color3.fromHex("#ef4444"),
				},
				Indigo = {
					Name = "Indigo",

					Accent = Color3.fromHex("#3730a3"),
					Dialog = Color3.fromHex("#1e1b4b"),
					Outline = Color3.fromHex("#c7d2fe"),
					Text = Color3.fromHex("#f1f5f9"),
					Placeholder = Color3.fromHex("#7078d9"),
					Background = Color3.fromHex("#0f0a2e"),
					Button = Color3.fromHex("#4f46e5"),
					Icon = Color3.fromHex("#6366f1"),
				},
				Sky = {
					Name = "Sky",

					Accent = Color3.fromHex("#0369a1"),
					Dialog = Color3.fromHex("#0c4a6e"),
					Outline = Color3.fromHex("#bae6fd"),
					Text = Color3.fromHex("#f0f9ff"),
					Placeholder = Color3.fromHex("#4fb6d9"),
					Background = Color3.fromHex("#041f2e"),
					Button = Color3.fromHex("#0284c7"),
					Icon = Color3.fromHex("#0ea5e9"),
				},
				Violet = {
					Name = "Violet",

					Accent = Color3.fromHex("#6d28d9"),
					Dialog = Color3.fromHex("#3c1361"),
					Outline = Color3.fromHex("#ddd6fe"),
					Text = Color3.fromHex("#faf5ff"),
					Placeholder = Color3.fromHex("#8f7ee0"),
					Background = Color3.fromHex("#1e0a3e"),
					Button = Color3.fromHex("#7c3aed"),
					Icon = Color3.fromHex("#8b5cf6"),
				},
				Amber = {
					Name = "Amber",

					Accent = Color3.fromHex("#b45309"),
					Dialog = Color3.fromHex("#451a03"),
					Outline = Color3.fromHex("#fde68a"),
					Text = Color3.fromHex("#fffbeb"),
					Placeholder = Color3.fromHex("#d1a326"),
					Background = Color3.fromHex("#1c1003"),
					Button = Color3.fromHex("#d97706"),
					Icon = Color3.fromHex("#f59e0b"),
				},
				Emerald = {
					Name = "Emerald",

					Accent = Color3.fromHex("#047857"),
					Dialog = Color3.fromHex("#022c22"),
					Outline = Color3.fromHex("#a7f3d0"),
					Text = Color3.fromHex("#ecfdf5"),
					Placeholder = Color3.fromHex("#3fbf8f"),
					Background = Color3.fromHex("#011411"),
					Button = Color3.fromHex("#059669"),
					Icon = Color3.fromHex("#10b981"),
				},
				Midnight = {
					Name = "Midnight",

					Accent = Color3.fromHex("#1e3a8a"),
					Dialog = Color3.fromHex("#0c1e42"),
					Outline = Color3.fromHex("#bfdbfe"),
					Text = Color3.fromHex("#dbeafe"),
					Placeholder = Color3.fromHex("#2f74d1"),
					Background = Color3.fromHex("#0a0f1e"),
					Button = Color3.fromHex("#2563eb"),
					Icon = Color3.fromHex("#3b82f6"),
				},
				Crimson = {
					Name = "Crimson",

					Accent = Color3.fromHex("#b91c1c"),
					Dialog = Color3.fromHex("#450a0a"),
					Outline = Color3.fromHex("#fca5a5"),
					Text = Color3.fromHex("#fef2f2"),
					Placeholder = Color3.fromHex("#6f757b"),
					Background = Color3.fromHex("#0c0404"),
					Button = Color3.fromHex("#991b1b"),
					Icon = Color3.fromHex("#dc2626"),
				},
				MonokaiPro = {
					Name = "Monokai Pro",

					Accent = Color3.fromHex("#fc9867"),
					Dialog = Color3.fromHex("#1e1e1e"),
					Outline = Color3.fromHex("#78dce8"),
					Text = Color3.fromHex("#fcfcfa"),
					Placeholder = Color3.fromHex("#6f6f6f"),
					Background = Color3.fromHex("#191622"),
					Button = Color3.fromHex("#ab9df2"),
					Icon = Color3.fromHex("#a9dc76"),
				},
				CottonCandy = {
					Name = "Cotton Candy",

					Accent = Color3.fromHex("#ec4899"),
					Dialog = Color3.fromHex("#2d1b3d"),
					Outline = Color3.fromHex("#f9a8d4"),
					Text = Color3.fromHex("#fdf2f8"),
					Placeholder = Color3.fromHex("#8a5fd3"),
					Background = Color3.fromHex("#1a0b2e"),
					Button = Color3.fromHex("#d946ef"),
					Icon = Color3.fromHex("#06b6d4"),
				},
				Rainbow = {
					Name = "Rainbow",

					Accent = aa:Gradient({
						["0"] = { Color = Color3.fromHex("#00ff41"), Transparency = 0 },
						["33"] = { Color = Color3.fromHex("#00ffff"), Transparency = 0 },
						["66"] = { Color = Color3.fromHex("#0080ff"), Transparency = 0 },
						["100"] = { Color = Color3.fromHex("#8000ff"), Transparency = 0 },
					}, {
						Rotation = 45,
					}),

					Dialog = aa:Gradient({
						["0"] = { Color = Color3.fromHex("#ff0080"), Transparency = 0 },
						["25"] = { Color = Color3.fromHex("#8000ff"), Transparency = 0 },
						["50"] = { Color = Color3.fromHex("#0080ff"), Transparency = 0 },
						["75"] = { Color = Color3.fromHex("#00ff80"), Transparency = 0 },
						["100"] = { Color = Color3.fromHex("#ff8000"), Transparency = 0 },
					}, {
						Rotation = 135,
					}),

					Outline = Color3.fromHex("#ffffff"),
					Text = Color3.fromHex("#ffffff"),

					Placeholder = Color3.fromHex("#00ff80"),

					Background = aa:Gradient({
						["0"] = { Color = Color3.fromHex("#ff0040"), Transparency = 0 },
						["20"] = { Color = Color3.fromHex("#ff4000"), Transparency = 0 },
						["40"] = { Color = Color3.fromHex("#ffff00"), Transparency = 0 },
						["60"] = { Color = Color3.fromHex("#00ff40"), Transparency = 0 },
						["80"] = { Color = Color3.fromHex("#0040ff"), Transparency = 0 },
						["100"] = { Color = Color3.fromHex("#4000ff"), Transparency = 0 },
					}, {
						Rotation = 90,
					}),

					Button = aa:Gradient({
						["0"] = { Color = Color3.fromHex("#ff0080"), Transparency = 0 },
						["25"] = { Color = Color3.fromHex("#ff8000"), Transparency = 0 },
						["50"] = { Color = Color3.fromHex("#ffff00"), Transparency = 0 },
						["75"] = { Color = Color3.fromHex("#80ff00"), Transparency = 0 },
						["100"] = { Color = Color3.fromHex("#00ffff"), Transparency = 0 },
					}, {
						Rotation = 60,
					}),

					Icon = Color3.fromHex("#ffffff"),
				},
			}
		end
	end
	function WindUI.CreateLabel()
		local aa = {}

		local ab = WindUI.load("WindUI")
		local ac = ab.New
		local ad = ab.Tween

		function aa.New(ae, af, ag, ah)
			local ai = 10
			local aj
			if af and af ~= "" then
				aj = ac("ImageLabel", {
					Image = ab.Icon(af)[1],
					ImageRectSize = ab.Icon(af)[2].ImageRectSize,
					ImageRectOffset = ab.Icon(af)[2].ImageRectPosition,
					Size = UDim2.new(0, 21, 0, 21),
					BackgroundTransparency = 1,
					ThemeTag = {
						ImageColor3 = "Icon",
					},
				})
			end

			local ak = ac("TextLabel", {
				BackgroundTransparency = 1,
				TextSize = 17,
				FontFace = Font.new(ab.Font, Enum.FontWeight.Regular),
				Size = UDim2.new(1, aj and -29 or 0, 1, 0),
				TextXAlignment = "Left",
				ThemeTag = {
					TextColor3 = ah and "Placeholder" or "Text",
				},
				Text = ae,
			})

			local al = ac("TextButton", {
				Size = UDim2.new(1, 0, 0, 42),
				Parent = ag,
				BackgroundTransparency = 1,
				Text = "",
			}, {
				ac("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
				}, {
					ab.NewRoundFrame(ai, "Squircle", {
						ThemeTag = {
							ImageColor3 = "Accent",
						},
						Size = UDim2.new(1, 0, 1, 0),
						ImageTransparency = 0.97,
					}),
					ab.NewRoundFrame(ai, "SquircleOutline", {
						ThemeTag = {
							ImageColor3 = "Outline",
						},
						Size = UDim2.new(1, 0, 1, 0),
						ImageTransparency = 0.95,
					}, {
						ac("UIGradient", {
							Rotation = 70,
							Color = ColorSequence.new({
								ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 255, 255)),
								ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
								ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 255, 255)),
							}),
							Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0.0, 0.1),
								NumberSequenceKeypoint.new(0.5, 1),
								NumberSequenceKeypoint.new(1.0, 0.1),
							}),
						}),
					}),
					ab.NewRoundFrame(ai, "Squircle", {
						Size = UDim2.new(1, 0, 1, 0),
						Name = "Frame",
						ImageColor3 = Color3.new(1, 1, 1),
						ImageTransparency = 0.95,
					}, {
						ac("UIPadding", {
							PaddingLeft = UDim.new(0, 12),
							PaddingRight = UDim.new(0, 12),
						}),
						ac("UIListLayout", {
							FillDirection = "Horizontal",
							Padding = UDim.new(0, 8),
							VerticalAlignment = "Center",
							HorizontalAlignment = "Left",
						}),
						aj,
						ak,
					}),
				}),
			})

			return al
		end

		return aa
	end
	function WindUI.CreateScrollBar()
		local aa = {}

		local ab = game:GetService("UserInputService")

		local ac = WindUI.load("WindUI")
		local ad = ac.New
		local ae = ac.Tween

		function aa.New(af, ag, ah, ai)
			local aj = ad("Frame", {
				Size = UDim2.new(0, ai, 1, 0),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, 0, 0, 0),
				AnchorPoint = Vector2.new(1, 0),
				Parent = ag,
				ZIndex = 999,
				Active = true,
			})

			local ak = ac.NewRoundFrame(ai / 2, "Squircle", {
				Size = UDim2.new(1, 0, 0, 0),
				ImageTransparency = 0.85,
				ThemeTag = { ImageColor3 = "Text" },
				Parent = aj,
			})

			local al = ad("Frame", {
				Size = UDim2.new(1, 12, 1, 12),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Active = true,
				ZIndex = 999,
				Parent = ak,
			})

			local am = false
			local an = 0

			local function updateSliderSize()
				local ao = af
				local ap = ao.AbsoluteCanvasSize.Y
				local aq = ao.AbsoluteWindowSize.Y

				if ap <= aq then
					ak.Visible = false
					return
				end

				local ar = math.clamp(aq / ap, 0.1, 1)
				ak.Size = UDim2.new(1, 0, ar, 0)
				ak.Visible = true
			end

			local function updateScrollingFramePosition()
				local ao = ak.Position.Y.Scale
				local ap = af.AbsoluteCanvasSize.Y
				local aq = af.AbsoluteWindowSize.Y
				local ar = math.max(ap - aq, 0)

				if ar <= 0 then
					return
				end

				local as = math.max(1 - ak.Size.Y.Scale, 0)
				if as <= 0 then
					return
				end

				local at = ao / as

				af.CanvasPosition = Vector2.new(af.CanvasPosition.X, at * ar)
			end

			local function updateThumbPosition()
				if am then
					return
				end

				local ao = af.CanvasPosition.Y
				local ap = af.AbsoluteCanvasSize.Y
				local aq = af.AbsoluteWindowSize.Y
				local ar = math.max(ap - aq, 0)

				if ar <= 0 then
					ak.Position = UDim2.new(0, 0, 0, 0)
					return
				end

				local as = ao / ar
				local at = math.max(1 - ak.Size.Y.Scale, 0)
				local au = math.clamp(as * at, 0, at)

				ak.Position = UDim2.new(0, 0, au, 0)
			end

			ac.AddSignal(aj.InputBegan, function(ao)
				if
					ao.UserInputType == Enum.UserInputType.MouseButton1
					or ao.UserInputType == Enum.UserInputType.Touch
				then
					local ap = ak.AbsolutePosition.Y
					local aq = ap + ak.AbsoluteSize.Y

					if not (ao.Position.Y >= ap and ao.Position.Y <= aq) then
						local ar = aj.AbsolutePosition.Y
						local as = aj.AbsoluteSize.Y
						local at = ak.AbsoluteSize.Y

						local au = ao.Position.Y - ar - at / 2
						local av = as - at

						local aw = math.clamp(au / av, 0, 1 - ak.Size.Y.Scale)

						ak.Position = UDim2.new(0, 0, aw, 0)
						updateScrollingFramePosition()
					end
				end
			end)

			ac.AddSignal(al.InputBegan, function(ao)
				if
					ao.UserInputType == Enum.UserInputType.MouseButton1
					or ao.UserInputType == Enum.UserInputType.Touch
				then
					am = true
					an = ao.Position.Y - ak.AbsolutePosition.Y

					local ap
					local aq

					ap = ab.InputChanged:Connect(function(ar)
						if
							ar.UserInputType == Enum.UserInputType.MouseMovement
							or ar.UserInputType == Enum.UserInputType.Touch
						then
							local as = aj.AbsolutePosition.Y
							local at = aj.AbsoluteSize.Y
							local au = ak.AbsoluteSize.Y

							local av = ar.Position.Y - as - an
							local aw = at - au

							local ax = math.clamp(av / aw, 0, 1 - ak.Size.Y.Scale)

							ak.Position = UDim2.new(0, 0, ax, 0)
							updateScrollingFramePosition()
						end
					end)

					aq = ab.InputEnded:Connect(function(ar)
						if
							ar.UserInputType == Enum.UserInputType.MouseButton1
							or ar.UserInputType == Enum.UserInputType.Touch
						then
							am = false
							if ap then
								ap:Disconnect()
							end
							if aq then
								aq:Disconnect()
							end
						end
					end)
				end
			end)

			ac.AddSignal(af:GetPropertyChangedSignal("AbsoluteWindowSize"), function()
				updateSliderSize()
				updateThumbPosition()
			end)

			ac.AddSignal(af:GetPropertyChangedSignal("AbsoluteCanvasSize"), function()
				updateSliderSize()
				updateThumbPosition()
			end)

			ac.AddSignal(af:GetPropertyChangedSignal("CanvasPosition"), function()
				if not am then
					updateThumbPosition()
				end
			end)

			updateSliderSize()
			updateThumbPosition()

			return aj
		end

		return aa
	end
	function WindUI.CreateTag()
		local aa = {}

		local ab = WindUI.load("WindUI")
		local ac = ab.New
		local ad = ab.Tween

		local function Color3ToHSB(ae)
			local af, ag, ah = ae.ElementLoader, ae.CreateInputEx, ae.CreateToggle
			local ai = math.max(af, ag, ah)
			local aj = math.min(af, ag, ah)
			local ak = ai - aj

			local al = 0
			if ak ~= 0 then
				if ai == af then
					al = (ag - ah) / ak % 6
				elseif ai == ag then
					al = (ah - af) / ak + 2
				else
					al = (af - ag) / ak + 4
				end
				al = al * 60
			else
				al = 0
			end

			local am = (ai == 0) and 0 or (ak / ai)
			local an = ai

			return {
				LoadPackageJson = math.floor(al + 0.5),
				CreateLabel = am,
				CreateLocalization = an,
			}
		end

		local function GetPerceivedBrightness(ae)
			local af = ae.ElementLoader
			local ag = ae.CreateInputEx
			local ah = ae.CreateToggle
			return 0.299 * af + 0.587 * ag + 0.114 * ah
		end

		local function GetTextColorForHSB(ae)
			local af = Color3ToHSB(ae)
			local ag, ah, ai = af.LoadPackageJson, af.CreateLabel, af.CreateLocalization
			if GetPerceivedBrightness(ae) > 0.5 then
				return Color3.fromHSV(ag / 360, 0, 0.05)
			else
				return Color3.fromHSV(ag / 360, 0, 0.98)
			end
		end

		local function GetAverageColor(ae)
			local af, ag, ah = 0, 0, 0
			local ai = ae.Color.Keypoints
			for aj, ak in ipairs(ai) do
				af = af + ak.Value.ElementLoader
				ag = ag + ak.Value.CreateInputEx
				ah = ah + ak.Value.CreateToggle
			end
			local al = #ai
			return Color3.new(af / al, ag / al, ah / al)
		end

		function aa.New(ae, af, ag)
			local ah = {
				Title = af.Title or "Tag",
				Color = af.Color or Color3.fromHex("#315dff"),
				Radius = af.Radius or 999,

				TagFrame = nil,
				Height = 26,
				Padding = 10,
				TextSize = 14,
			}

			local ai = ac("TextLabel", {
				BackgroundTransparency = 1,
				AutomaticSize = "XY",
				TextSize = ah.TextSize,
				FontFace = Font.new(ab.Font, Enum.FontWeight.SemiBold),
				Text = ah.Title,
				TextColor3 = typeof(ah.Color) == "Color3" and GetTextColorForHSB(ah.Color) or nil,
			})

			local aj

			if typeof(ah.Color) == "table" then
				aj = ac("UIGradient")
				for ak, al in next, ah.Color do
					aj[ak] = al
				end

				ai.TextColor3 = GetTextColorForHSB(GetAverageColor(aj))
			end

			local ak = ab.NewRoundFrame(ah.Radius, "Squircle", {
				AutomaticSize = "X",
				Size = UDim2.new(0, 0, 0, ah.Height),
				Parent = ag,
				ImageColor3 = typeof(ah.Color) == "Color3" and ah.Color or Color3.new(1, 1, 1),
			}, {
				aj,
				ac("UIPadding", {
					PaddingLeft = UDim.new(0, ah.Padding),
					PaddingRight = UDim.new(0, ah.Padding),
				}),
				ai,
				ac("UIListLayout", {
					FillDirection = "Horizontal",
					VerticalAlignment = "Center",
				}),
			})

			function ah.SetTitle(al, am)
				ah.Title = am
				ai.Text = am
			end

			function ah.SetColor(al, am)
				ah.Color = am
				if typeof(am) == "table" then
					local an = GetAverageColor(am)
					ad(ai, 0.06, { TextColor3 = GetTextColorForHSB(an) }):Play()
					local ao = ak:FindFirstChildOfClass("UIGradient") or ac("UIGradient", { Parent = ak })
					for ap, aq in next, am do
						ao[ap] = aq
					end
					ad(ak, 0.06, { ImageColor3 = Color3.new(1, 1, 1) }):Play()
				else
					if aj then
						aj:Destroy()
					end
					ad(ai, 0.06, { TextColor3 = GetTextColorForHSB(am) }):Play()
					ad(ak, 0.06, { ImageColor3 = am }):Play()
				end
			end

			return ah
		end

		return aa
	end
	function WindUI.ConfigManager()
		local aa = game:GetService("HttpService")

		local ab

		local ac
		ac = {

			Folder = nil,
			Path = nil,
			Configs = {},
			Parser = {
				Colorpicker = {
					Save = function(ad)
						return {
							__type = ad.__type,
							value = ad.Default:ToHex(),
							transparency = ad.Transparency or nil,
						}
					end,
					Load = function(ad, ae)
						if ad then
							ad:Update(Color3.fromHex(ae.value), ae.transparency or nil)
						end
					end,
				},
				Dropdown = {
					Save = function(ad)
						return {
							__type = ad.__type,
							value = ad.Value,
						}
					end,
					Load = function(ad, ae)
						if ad then
							ad:Select(ae.value)
						end
					end,
				},
				Input = {
					Save = function(ad)
						return {
							__type = ad.__type,
							value = ad.Value,
						}
					end,
					Load = function(ad, ae)
						if ad then
							ad:Set(ae.value)
						end
					end,
				},
				Keybind = {
					Save = function(ad)
						return {
							__type = ad.__type,
							value = ad.Value,
						}
					end,
					Load = function(ad, ae)
						if ad then
							ad:Set(ae.value)
						end
					end,
				},
				Slider = {
					Save = function(ad)
						return {
							__type = ad.__type,
							value = ad.Value.Default,
						}
					end,
					Load = function(ad, ae)
						if ad then
							ad:Set(ae.value)
						end
					end,
				},
				Toggle = {
					Save = function(ad)
						return {
							__type = ad.__type,
							value = ad.Value,
						}
					end,
					Load = function(ad, ae)
						if ad then
							ad:Set(ae.value)
						end
					end,
				},
			},
		}

		function ac.Init(ad, ae)
			if not ae.Folder then
				warn("[ WindUI.ConfigManager ] Window.Folder is not specified.")
				return false
			end

			ab = ae
			ac.Folder = ab.Folder
			ac.Path = "WindUI/" .. tostring(ac.Folder) .. "/config/"

			if not isfolder("WindUI/" .. ac.Folder) then
				makefolder("WindUI/" .. ac.Folder)
				if not isfolder("WindUI/" .. ac.Folder .. "/config/") then
					makefolder("WindUI/" .. ac.Folder .. "/config/")
				end
			end

			local af = ac:AllConfigs()

			for ag, ah in next, af do
				if isfile and readfile and isfile(ah .. ".json") then
					ac.Configs[ah] = readfile(ah .. ".json")
				end
			end

			return ac
		end

		function ac.CreateConfig(ad, ae)
			local af = {
				Path = ac.Path .. ae .. ".json",
				Elements = {},
				CustomData = {},
				Version = 1.1,
			}

			if not ae then
				return false, "No config file is selected"
			end

			function af.Register(ag, ah, ai)
				af.Elements[ah] = ai
			end

			function af.Set(ag, ah, ai)
				af.CustomData[ah] = ai
			end

			function af.Get(ag, ah)
				return af.CustomData[ah]
			end

			function af.Save(ag)
				local ah = {
					__version = af.Version,
					__elements = {},
					__custom = af.CustomData,
				}

				for ai, aj in next, af.Elements do
					if ac.Parser[aj.__type] then
						ah.__elements[tostring(ai)] = ac.Parser[aj.__type].Save(aj)
					end
				end

				local ak = aa:JSONEncode(ah)
				if writefile then
					writefile(af.Path, ak)
				end

				return ah
			end

			function af.Load(ag)
				if isfile and not isfile(af.Path) then
					return false, "Config file does not exist"
				end

				local ah, ai = pcall(function()
					local ah = readfile
						or function()
							warn("[ WindUI.ConfigManager ] The config system doesn'CreateScrollBar work in the studio.")
							return nil
						end
					return aa:JSONDecode(ah(af.Path))
				end)

				if not ah then
					return false, "Failed to parse config file"
				end

				if not ai.__version then
					local aj = {
						__version = af.Version,
						__elements = ai,
						__custom = {},
					}
					ai = aj
				end

				for aj, ak in next, (ai.__elements or {}) do
					if af.Elements[aj] and ac.Parser[ak.__type] then
						task.spawn(function()
							ac.Parser[ak.__type].Load(af.Elements[aj], ak)
						end)
					end
				end

				af.CustomData = ai.__custom or {}

				return af.CustomData
			end

			function af.GetData(ag)
				return {
					elements = af.Elements,
					custom = af.CustomData,
				}
			end

			ac.Configs[ae] = af
			return af
		end

		function ac.AllConfigs(ad)
			if not listfiles then
				return {}
			end

			local ae = {}
			if not isfolder(ac.Path) then
				makefolder(ac.Path)
				return ae
			end

			for af, ag in next, listfiles(ac.Path) do
				local ah = ag:match("([^\\/]+)%.json$")
				if ah then
					table.insert(ae, ah)
				end
			end

			return ae
		end

		function ac.GetConfig(ad, ae)
			return ac.Configs[ae]
		end

		return ac
	end
	function WindUI.CreateOpenButton()
		local aa = {}

		local ab = WindUI.load("WindUI")
		local ac = ab.New
		local ad = ab.Tween

		game:GetService("UserInputService")

		function aa.New(ae)
			local af = {
				Button = nil,
			}

			local ag

			local ah = ac("TextLabel", {
				Text = ae.Title,
				TextSize = 17,
				FontFace = Font.new(ab.Font, Enum.FontWeight.Medium),
				BackgroundTransparency = 1,
				AutomaticSize = "XY",
			})

			local ai = ac("Frame", {
				Size = UDim2.new(0, 36, 0, 36),
				BackgroundTransparency = 1,
				Name = "Drag",
			}, {
				ac("ImageLabel", {
					Image = ab.Icon("move")[1],
					ImageRectOffset = ab.Icon("move")[2].ImageRectPosition,
					ImageRectSize = ab.Icon("move")[2].ImageRectSize,
					Size = UDim2.new(0, 18, 0, 18),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					ThemeTag = {
						ImageColor3 = "Icon",
					},
					ImageTransparency = 0.3,
				}),
			})
			local aj = ac("Frame", {
				Size = UDim2.new(0, 1, 1, 0),
				Position = UDim2.new(0, 36, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 0.9,
			})

			local ak = ac("Frame", {
				Size = UDim2.new(0, 0, 0, 0),
				Position = UDim2.new(0.5, 0, 0, 28),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Parent = ae.Parent,
				BackgroundTransparency = 1,
				Active = true,
				Visible = false,
			})
			local al = ac("TextButton", {
				Size = UDim2.new(0, 0, 0, 44),
				AutomaticSize = "X",
				Parent = ak,
				Active = false,
				BackgroundTransparency = 0.25,
				ZIndex = 99,
				BackgroundColor3 = Color3.new(0, 0, 0),
			}, {

				ac("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
				ac("UIStroke", {
					Thickness = 1,
					ApplyStrokeMode = "Border",
					Color = Color3.new(1, 1, 1),
					Transparency = 0,
				}, {
					ac("UIGradient", {
						Color = ColorSequence.new(Color3.fromHex("40c9ff"), Color3.fromHex("e81cff")),
					}),
				}),
				ai,
				aj,

				ac("UIListLayout", {
					Padding = UDim.new(0, 4),
					FillDirection = "Horizontal",
					VerticalAlignment = "Center",
				}),

				ac("TextButton", {
					AutomaticSize = "XY",
					Active = true,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 0, 0, 36),

					BackgroundColor3 = Color3.new(1, 1, 1),
				}, {
					ac("UICorner", {
						CornerRadius = UDim.new(1, -4),
					}),
					ag,
					ac("UIListLayout", {
						Padding = UDim.new(0, ae.UIPadding),
						FillDirection = "Horizontal",
						VerticalAlignment = "Center",
					}),
					ah,
					ac("UIPadding", {
						PaddingLeft = UDim.new(0, 11),
						PaddingRight = UDim.new(0, 11),
					}),
				}),
				ac("UIPadding", {
					PaddingLeft = UDim.new(0, 4),
					PaddingRight = UDim.new(0, 4),
				}),
			})

			af.Button = al

			function af.SetIcon(am, an)
				if ag then
					ag:Destroy()
				end
				if an then
					ag = ab.Image(an, ae.Title, 0, ae.Folder, "OpenButton", true, ae.IconThemed)
					ag.Size = UDim2.new(0, 22, 0, 22)
					ag.LayoutOrder = -1
					ag.Parent = af.Button.TextButton
				end
			end

			if ae.Icon then
				af:SetIcon(ae.Icon)
			end

			ab.AddSignal(al:GetPropertyChangedSignal("AbsoluteSize"), function()
				ak.Size = UDim2.new(0, al.AbsoluteSize.X, 0, al.AbsoluteSize.Y)
			end)

			ab.AddSignal(al.TextButton.MouseEnter, function()
				ad(al.TextButton, 0.1, { BackgroundTransparency = 0.93 }):Play()
			end)
			ab.AddSignal(al.TextButton.MouseLeave, function()
				ad(al.TextButton, 0.1, { BackgroundTransparency = 1 }):Play()
			end)

			local am = ab.Drag(ak)

			function af.Visible(an, ao)
				ak.Visible = ao
			end

			function af.Edit(an, ao)
				local ap = {
					Title = ao.Title,
					Icon = ao.Icon,
					Enabled = ao.Enabled,
					Position = ao.Position,
					OnlyIcon = ao.OnlyIcon or false,
					Draggable = ao.Draggable,
					OnlyMobile = ao.OnlyMobile,
					CornerRadius = ao.CornerRadius or UDim.new(1, 0),
					StrokeThickness = ao.StrokeThickness or 2,
					Color = ao.Color or ColorSequence.new(Color3.fromHex("40c9ff"), Color3.fromHex("e81cff")),
				}

				if ap.Enabled == false then
					ae.IsOpenButtonEnabled = false
				end

				if ap.OnlyMobile ~= false then
					ap.OnlyMobile = true
				else
					ae.IsPC = false
				end

				if ap.Draggable == false and ai and aj then
					ai.Visible = ap.Draggable
					aj.Visible = ap.Draggable

					if am then
						am:Set(ap.Draggable)
					end
				end

				if ap.Position and ak then
					ak.Position = ap.Position
				end

				if ap.OnlyIcon and ah then
					ah.Visible = false
					al.TextButton.UIPadding.PaddingLeft = UDim.new(0, 7)
					al.TextButton.UIPadding.PaddingRight = UDim.new(0, 7)
				end

				if ah then
					if ap.Title then
						ah.Text = ap.Title
						ab:ChangeTranslationKey(ah, ap.Title)
					elseif ap.Title == nil then
					end
				end

				if ap.Icon then
					af:SetIcon(ap.Icon)
				end

				al.UIStroke.UIGradient.Color = ap.Color
				if Glow then
					Glow.UIGradient.Color = ap.Color
				end

				al.UICorner.CornerRadius = ap.CornerRadius
				al.TextButton.UICorner.CornerRadius = UDim.new(ap.CornerRadius.Scale, ap.CornerRadius.Offset - 4)
				al.UIStroke.Thickness = ap.StrokeThickness
			end

			return af
		end

		return aa
	end
	function WindUI.CreateTooltip()
		local aa = {}

		local ab = WindUI.load("WindUI")
		local ac = ab.New
		local ad = ab.Tween

		function aa.New(ae, af)
			local ag = {
				Container = nil,
				ToolTipSize = 16,
			}

			local ah = ac("TextLabel", {
				AutomaticSize = "XY",
				TextWrapped = true,
				BackgroundTransparency = 1,
				FontFace = Font.new(ab.Font, Enum.FontWeight.Medium),
				Text = ae,
				TextSize = 17,
				TextTransparency = 1,
				ThemeTag = {
					TextColor3 = "Text",
				},
			})

			local ai = ac("UIScale", {
				Scale = 0.9,
			})

			local aj = ac("Frame", {
				AnchorPoint = Vector2.new(0.5, 0),
				AutomaticSize = "XY",
				BackgroundTransparency = 1,
				Parent = af,

				Visible = false,
			}, {
				ac("UISizeConstraint", {
					MaxSize = Vector2.new(400, math.huge),
				}),
				ac("Frame", {
					AutomaticSize = "XY",
					BackgroundTransparency = 1,
					LayoutOrder = 99,
					Visible = false,
				}, {
					ac("ImageLabel", {
						Size = UDim2.new(0, ag.ToolTipSize, 0, ag.ToolTipSize / 2),
						BackgroundTransparency = 1,
						Rotation = 180,
						Image = "rbxassetid://89524607682719",
						ThemeTag = {
							ImageColor3 = "Accent",
						},
					}, {
						ac("ImageLabel", {
							Size = UDim2.new(0, ag.ToolTipSize, 0, ag.ToolTipSize / 2),
							BackgroundTransparency = 1,
							LayoutOrder = 99,
							ImageTransparency = 0.9,
							Image = "rbxassetid://89524607682719",
							ThemeTag = {
								ImageColor3 = "Text",
							},
						}),
					}),
				}),
				ab.NewRoundFrame(14, "Squircle", {
					AutomaticSize = "XY",
					ThemeTag = {
						ImageColor3 = "Accent",
					},
					ImageTransparency = 1,
					Name = "Background",
				}, {

					ac("Frame", {
						ThemeTag = {
							BackgroundColor3 = "Text",
						},
						AutomaticSize = "XY",
						BackgroundTransparency = 1,
					}, {
						ac("UICorner", {
							CornerRadius = UDim.new(0, 16),
						}),
						ac("UIListLayout", {
							Padding = UDim.new(0, 12),
							FillDirection = "Horizontal",
							VerticalAlignment = "Center",
						}),

						ah,
						ac("UIPadding", {
							PaddingTop = UDim.new(0, 12),
							PaddingLeft = UDim.new(0, 12),
							PaddingRight = UDim.new(0, 12),
							PaddingBottom = UDim.new(0, 12),
						}),
					}),
				}),
				ai,
				ac("UIListLayout", {
					Padding = UDim.new(0, 0),
					FillDirection = "Vertical",
					VerticalAlignment = "Center",
					HorizontalAlignment = "Center",
				}),
			})
			ag.Container = aj

			function ag.Open(ak)
				aj.Visible = true

				ad(aj.Background, 0.2, { ImageTransparency = 0 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				ad(ah, 0.2, { TextTransparency = 0 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				ad(ai, 0.18, { Scale = 1 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
			end

			function ag.Close(ak)
				ad(aj.Background, 0.3, { ImageTransparency = 1 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				ad(ah, 0.3, { TextTransparency = 1 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				ad(ai, 0.35, { Scale = 0.9 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()

				task.wait(0.35)

				aj.Visible = false
				aj:Destroy()
			end

			return ag
		end

		return aa
	end
	function WindUI.CreateElementFrame()
		local aa = WindUI.load("WindUI")
		local ab = aa.New
		local ac = aa.NewRoundFrame
		local ad = aa.Tween

		game:GetService("UserInputService")

		local function Color3ToHSB(ae)
			local af, ag, ah = ae.ElementLoader, ae.CreateInputEx, ae.CreateToggle
			local ai = math.max(af, ag, ah)
			local aj = math.min(af, ag, ah)
			local ak = ai - aj

			local al = 0
			if ak ~= 0 then
				if ai == af then
					al = (ag - ah) / ak % 6
				elseif ai == ag then
					al = (ah - af) / ak + 2
				else
					al = (af - ag) / ak + 4
				end
				al = al * 60
			else
				al = 0
			end

			local am = (ai == 0) and 0 or (ak / ai)
			local an = ai

			return {
				LoadPackageJson = math.floor(al + 0.5),
				CreateLabel = am,
				CreateLocalization = an,
			}
		end

		local function GetPerceivedBrightness(ae)
			local af = ae.ElementLoader
			local ag = ae.CreateInputEx
			local ah = ae.CreateToggle
			return 0.299 * af + 0.587 * ag + 0.114 * ah
		end

		local function GetTextColorForHSB(ae)
			local af = Color3ToHSB(ae)
			local ag, ah, ai = af.LoadPackageJson, af.CreateLabel, af.CreateLocalization
			if GetPerceivedBrightness(ae) > 0.5 then
				return Color3.fromHSV(ag / 360, 0, 0.05)
			else
				return Color3.fromHSV(ag / 360, 0, 0.98)
			end
		end

		local function getElementPosition(ae, af)
			if type(af) ~= "number" or af ~= math.floor(af) then
				return nil, 1
			end

			local ag = #ae

			if ag == 0 or af < 1 or af > ag then
				return nil, 2
			end

			local function isDelimiter(ah)
				if ah == nil then
					return true
				end
				local ai = ah.__type
				return ai == "Divider" or ai == "Space" or ai == "Section" or ai == "Code"
			end

			if isDelimiter(ae[af]) then
				return nil, 3
			end

			local function calculate(ah, ai)
				if ai == 1 then
					return "Squircle"
				end
				if ah == 1 then
					return "Squircle-TL-TR"
				end
				if ah == ai then
					return "Squircle-BL-BR"
				end
				return "Square"
			end

			local ah = 1
			local ai = 0

			for aj = 1, ag do
				local ak = ae[aj]
				if isDelimiter(ak) then
					if af >= ah and af <= aj - 1 then
						local al = af - ah + 1
						return calculate(al, ai)
					end
					ah = aj + 1
					ai = 0
				else
					ai = ai + 1
				end
			end

			if af >= ah and af <= ag then
				local aj = af - ah + 1
				return calculate(aj, ai)
			end

			return nil, 4
		end

		return function(ae)
			local af = {
				Title = ae.Title,
				Desc = ae.Desc or nil,
				Hover = ae.Hover,
				Thumbnail = ae.Thumbnail,
				ThumbnailSize = ae.ThumbnailSize or 80,
				Image = ae.Image,
				IconThemed = ae.IconThemed or false,
				ImageSize = ae.ImageSize or 30,
				Color = ae.Color,
				Scalable = ae.Scalable,
				Parent = ae.Parent,
				Justify = ae.Justify or "Between",
				UIPadding = ae.Window.ElementConfig.UIPadding,
				UICorner = ae.Window.ElementConfig.UICorner,
				UIElements = {},

				Index = ae.Index,
			}

			local ag = af.ImageSize
			local ah = af.ThumbnailSize
			local ai = true

			local aj = 0

			local ak
			local al
			if af.Thumbnail then
				ak = aa.Image(
					af.Thumbnail,
					af.Title,
					af.UICorner - 3,
					ae.Window.Folder,
					"Thumbnail",
					false,
					af.IconThemed
				)
				ak.Size = UDim2.new(1, 0, 0, ah)
			end
			if af.Image then
				al = aa.Image(
					af.Image,
					af.Title,
					af.UICorner - 3,
					ae.Window.Folder,
					"Image",
					not af.Color and true or false
				)
				if typeof(af.Color) == "string" then
					al.ImageLabel.ImageColor3 = GetTextColorForHSB(Color3.fromHex(aa.Colors[af.Color]))
				elseif typeof(af.Color) == "Color3" then
					al.ImageLabel.ImageColor3 = GetTextColorForHSB(af.Color)
				end

				al.Size = UDim2.new(0, ag, 0, ag)

				aj = ag
			end

			local function CreateText(am, an)
				local ao = typeof(af.Color) == "string" and GetTextColorForHSB(Color3.fromHex(aa.Colors[af.Color]))
					or typeof(af.Color) == "Color3" and GetTextColorForHSB(af.Color)

				return ab("TextLabel", {
					BackgroundTransparency = 1,
					Text = am or "",
					TextSize = an == "Desc" and 15 or 17,
					TextXAlignment = "Left",
					ThemeTag = {
						TextColor3 = not af.Color and "Text" or nil,
					},
					TextColor3 = af.Color and ao or nil,
					TextTransparency = an == "Desc" and 0.3 or 0,
					TextWrapped = true,
					Size = UDim2.new(af.Justify == "Between" and 1 or 0, 0, 0, 0),
					AutomaticSize = af.Justify == "Between" and "Y" or "XY",
					FontFace = Font.new(aa.Font, an == "Desc" and Enum.FontWeight.Medium or Enum.FontWeight.SemiBold),
				})
			end

			local am = CreateText(af.Title, "Title")
			local an = CreateText(af.Desc, "Desc")
			if not af.Desc or af.Desc == "" then
				an.Visible = false
			end

			af.UIElements.Container = ab("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				AutomaticSize = "Y",
				BackgroundTransparency = 1,
			}, {
				ab("UIListLayout", {
					Padding = UDim.new(0, af.UIPadding),
					FillDirection = "Vertical",
					VerticalAlignment = ae.Window.NewElements and "Top" or "Center",
					HorizontalAlignment = af.Justify == "Between" and "Left" or "Center",
				}),
				ak,
				ab("Frame", {
					Size = UDim2.new(
						af.Justify == "Between" and 1 or 0,
						af.Justify == "Between" and -ae.TextOffset or 0,
						0,
						0
					),
					AutomaticSize = af.Justify == "Between" and "Y" or "XY",
					BackgroundTransparency = 1,
					Name = "TitleFrame",
				}, {
					ab("UIListLayout", {
						Padding = UDim.new(0, af.UIPadding),
						FillDirection = "Horizontal",
						VerticalAlignment = ae.Window.NewElements and (af.Justify == "Between" and "Top" or "Center")
							or "Center",
						HorizontalAlignment = af.Justify ~= "Between" and af.Justify or "Center",
					}),
					al,
					ab("Frame", {
						BackgroundTransparency = 1,
						AutomaticSize = af.Justify == "Between" and "Y" or "XY",
						Size = UDim2.new(
							af.Justify == "Between" and 1 or 0,
							af.Justify == "Between" and (al and -aj - af.UIPadding or -aj) or 0,
							1,
							0
						),
						Name = "TitleFrame",
					}, {
						ab("UIPadding", {
							PaddingTop = UDim.new(0, ae.Window.NewElements and af.UIPadding / 2 or 0),
							PaddingLeft = UDim.new(0, ae.Window.NewElements and af.UIPadding / 2 or 0),
							PaddingRight = UDim.new(0, ae.Window.NewElements and af.UIPadding / 2 or 0),
							PaddingBottom = UDim.new(0, ae.Window.NewElements and af.UIPadding / 2 or 0),
						}),
						ab("UIListLayout", {
							Padding = UDim.new(0, 6),
							FillDirection = "Vertical",
							VerticalAlignment = "Center",
							HorizontalAlignment = "Left",
						}),
						am,
						an,
					}),
				}),
			})

			local ao = aa.Image("lock", "lock", 0, ae.Window.Folder, "Lock", false)
			ao.Size = UDim2.new(0, 20, 0, 20)
			ao.ImageLabel.ImageColor3 = Color3.new(1, 1, 1)
			ao.ImageLabel.ImageTransparency = 0.4

			local ap = ab("TextLabel", {
				Text = "Locked",
				TextSize = 18,
				FontFace = Font.new(aa.Font, Enum.FontWeight.Medium),
				AutomaticSize = "XY",
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1, 1, 1),
				TextTransparency = 0.05,
			})

			local aq = ab("Frame", {
				Size = UDim2.new(1, af.UIPadding * 2, 1, af.UIPadding * 2),
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				ZIndex = 9999999,
			})

			local ar, as = ac(af.UICorner, "Squircle", {
				Size = UDim2.new(1, 0, 1, 0),
				ImageTransparency = 0.25,
				ImageColor3 = Color3.new(0, 0, 0),
				Visible = false,
				Active = false,
				Parent = aq,
			}, {
				ab("UIListLayout", {
					FillDirection = "Horizontal",
					VerticalAlignment = "Center",
					HorizontalAlignment = "Center",
					Padding = UDim.new(0, 8),
				}),
				ao,
				ap,
			}, nil, true)

			local at, au = ac(af.UICorner, "Squircle-Outline", {
				Size = UDim2.new(1, 0, 1, 0),
				ImageTransparency = 1,
				Active = false,
				ThemeTag = {
					ImageColor3 = "Text",
				},
				Parent = aq,
			}, {
				ab("UIListLayout", {
					FillDirection = "Horizontal",
					VerticalAlignment = "Center",
					HorizontalAlignment = "Center",
					Padding = UDim.new(0, 8),
				}),
			}, nil, true)

			local av, aw = ac(af.UICorner, "Squircle", {
				Size = UDim2.new(1, 0, 1, 0),
				ImageTransparency = 1,
				Active = false,
				ThemeTag = {
					ImageColor3 = "Text",
				},
				Parent = aq,
			}, {
				ab("UIListLayout", {
					FillDirection = "Horizontal",
					VerticalAlignment = "Center",
					HorizontalAlignment = "Center",
					Padding = UDim.new(0, 8),
				}),
			}, nil, true)

			local ax, ay = ac(af.UICorner, "Squircle", {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = "Y",
				ImageTransparency = af.Color and 0.05 or 0.93,

				Parent = ae.Parent,
				ThemeTag = {
					ImageColor3 = not af.Color and "Text" or nil,
				},
				ImageColor3 = af.Color
						and (typeof(af.Color) == "string" and Color3.fromHex(aa.Colors[af.Color]) or typeof(af.Color) == "Color3" and af.Color)
					or nil,
			}, {
				af.UIElements.Container,
				aq,
				ab("UIPadding", {
					PaddingTop = UDim.new(0, af.UIPadding),
					PaddingLeft = UDim.new(0, af.UIPadding),
					PaddingRight = UDim.new(0, af.UIPadding),
					PaddingBottom = UDim.new(0, af.UIPadding),
				}),
			}, true, true)

			af.UIElements.Main = ax
			af.UIElements.Locked = ar

			if af.Hover then
				aa.AddSignal(ax.MouseEnter, function()
					if ai then
						ad(ax, 0.05, { ImageTransparency = af.Color and 0.15 or 0.9 }):Play()
					end
				end)
				aa.AddSignal(ax.InputEnded, function()
					if ai then
						ad(ax, 0.05, { ImageTransparency = af.Color and 0.05 or 0.93 }):Play()
					end
				end)
			end

			function af.SetTitle(az, aA)
				af.Title = aA
				am.Text = aA
			end

			function af.SetDesc(az, aA)
				af.Desc = aA
				an.Text = aA or ""
				if not aA then
					an.Visible = false
				elseif not an.Visible then
					an.Visible = true
				end
			end

			function af.Colorize(az, aA, aB)
				if af.Color then
					aA[aB] = typeof(af.Color) == "string" and GetTextColorForHSB(Color3.fromHex(aa.Colors[af.Color]))
						or typeof(af.Color) == "Color3" and GetTextColorForHSB(af.Color)
						or nil
				end
			end

			if ae.ElementTable then
				aa.AddSignal(am:GetPropertyChangedSignal("Text"), function()
					if af.Title ~= am.Text then
						af:SetTitle(am.Text)
						ae.ElementTable.Title = am.Text
					end
				end)
				aa.AddSignal(an:GetPropertyChangedSignal("Text"), function()
					if af.Desc ~= an.Text then
						af:SetDesc(an.Text)
						ae.ElementTable.Desc = an.Text
					end
				end)
			end

			function af.SetThumbnail(az, aA, aB)
				af.Thumbnail = aA
				if aB then
					af.ThumbnailSize = aB
					ah = aB
				end

				if ak then
					if aA then
						ak:Destroy()
						ak =
							aa.Image(aA, af.Title, af.UICorner - 3, ae.Window.Folder, "Thumbnail", false, af.IconThemed)
						ak.Size = UDim2.new(1, 0, 0, ah)
						ak.Parent = af.UIElements.Container
						local aC = af.UIElements.Container:FindFirstChild("UIListLayout")
						if aC then
							ak.LayoutOrder = -1
						end
					else
						ak.Visible = false
					end
				else
					if aA then
						ak =
							aa.Image(aA, af.Title, af.UICorner - 3, ae.Window.Folder, "Thumbnail", false, af.IconThemed)
						ak.Size = UDim2.new(1, 0, 0, ah)
						ak.Parent = af.UIElements.Container
						local aC = af.UIElements.Container:FindFirstChild("UIListLayout")
						if aC then
							ak.LayoutOrder = -1
						end
					end
				end
			end

			function af.SetImage(az, aA, aB, aC, aD)
				af.Image = aA
				if aB then
					af.ImageSize = aB
					ag = aB
				end
				if aC ~= nil then
					af.Color = aC
				end
				if aD ~= nil then
					af.IconThemed = aD
				end

				if al then
					if aA then
						al.Size = UDim2.new(0, ag, 0, ag)
						aa.UpdateImage(al, aA, af.Title)

						if typeof(af.Color) == "string" then
							al.ImageLabel.ImageColor3 = GetTextColorForHSB(Color3.fromHex(aa.Colors[af.Color]))
						elseif typeof(af.Color) == "Color3" then
							al.ImageLabel.ImageColor3 = GetTextColorForHSB(af.Color)
						elseif not af.Color then
							al.ImageLabel.ImageColor3 = Color3.new(1, 1, 1)
						end

						al.Visible = true
						aj = ag
					else
						al.Visible = false
						aj = 0
					end
				else
					if aA then
						al = aa.Image(
							aA,
							af.Title,
							af.UICorner - 3,
							ae.Window.Folder,
							"Image",
							not af.Color and true or false
						)

						if typeof(af.Color) == "string" then
							al.ImageLabel.ImageColor3 = GetTextColorForHSB(Color3.fromHex(aa.Colors[af.Color]))
						elseif typeof(af.Color) == "Color3" then
							al.ImageLabel.ImageColor3 = GetTextColorForHSB(af.Color)
						end

						al.Size = UDim2.new(0, ag, 0, ag)
						aj = ag

						local aE = af.UIElements.Container:FindFirstChild("Frame")
						if aE then
							al.Parent = aE
							local CreateLocalization = aE:FindFirstChild("UIListLayout")
							if CreateLocalization then
								al.LayoutOrder = 0
							end
						end
					end
				end
			end

			function af.Destroy(az)
				ax:Destroy()
			end

			function af.Lock(az)
				ai = false
				ar.Active = true
				ar.Visible = true
			end

			function af.Unlock(az)
				ai = true
				ar.Active = false
				ar.Visible = false
			end

			function af.Highlight(az)
				local aA = ab("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
						ColorSequenceKeypoint.new(0.5, Color3.new(1, 1, 1)),
						ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
					}),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(0.1, 0.9),
						NumberSequenceKeypoint.new(0.5, 0.3),
						NumberSequenceKeypoint.new(0.9, 0.9),
						NumberSequenceKeypoint.new(1, 1),
					}),
					Rotation = 0,
					Offset = Vector2.new(-1, 0),
					Parent = at,
				})

				local aB = ab("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
						ColorSequenceKeypoint.new(0.5, Color3.new(1, 1, 1)),
						ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
					}),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(0.15, 0.8),
						NumberSequenceKeypoint.new(0.5, 0.1),
						NumberSequenceKeypoint.new(0.85, 0.8),
						NumberSequenceKeypoint.new(1, 1),
					}),
					Rotation = 0,
					Offset = Vector2.new(-1, 0),
					Parent = av,
				})

				at.ImageTransparency = 0.25
				av.ImageTransparency = 0.88

				ad(aA, 0.75, {
					Offset = Vector2.new(1, 0),
				}):Play()

				ad(aB, 0.75, {
					Offset = Vector2.new(1, 0),
				}):Play()

				task.spawn(function()
					task.wait(0.75)
					at.ImageTransparency = 1
					av.ImageTransparency = 1
					aA:Destroy()
					aB:Destroy()
				end)
			end

			function af.UpdateShape(az)
				if ae.Window.NewElements then
					local aA = getElementPosition(az.Elements, af.Index)
					if aA and ax then
						ay:SetType(aA)
						as:SetType(aA)
						aw:SetType(aA)
						au:SetType(aA .. "-Outline")
					end
				end
			end

			return af
		end
	end
	function WindUI.CreateParagraph()
		local aa = WindUI.load("WindUI")
		local ab = aa.New

		local ac = {}

		local ad = WindUI.load("CreateButton").New

		function ac.New(ae, af)
			af.Hover = false
			af.TextOffset = 0
			af.IsButtons = af.Buttons and #af.Buttons > 0 and true or false

			local ag = {
				__type = "Paragraph",
				Title = af.Title or "Paragraph",
				Desc = af.Desc or nil,

				Locked = af.Locked or false,
			}
			local ah = WindUI.load("CreateElementFrame")(af)

			ag.ParagraphFrame = ah
			if af.Buttons and #af.Buttons > 0 then
				local ai = ab("Frame", {
					Size = UDim2.new(1, 0, 0, 38),
					BackgroundTransparency = 1,
					AutomaticSize = "Y",
					Parent = ah.UIElements.Container,
				}, {
					ab("UIListLayout", {
						Padding = UDim.new(0, 10),
						FillDirection = "Vertical",
					}),
				})

				for aj, ak in next, af.Buttons do
					local al = ad(ak.Title, ak.Icon, ak.Callback, "White", ai)
					al.Size = UDim2.new(1, 0, 0, 38)
				end
			end

			return ag.__type, ag
		end

		return ac
	end
	function WindUI.CreateButtonEx()
		local aa = WindUI.load("WindUI")
		local ab = aa.New

		local ac = {}

		function ac.New(ad, ae)
			local af = {
				__type = "Button",
				Title = ae.Title or "Button",
				Desc = ae.Desc or nil,
				Icon = ae.Icon or "mouse-pointer-click",
				IconThemed = ae.IconThemed or false,
				Color = ae.Color,
				Justify = ae.Justify or "Between",
				IconAlign = ae.IconAlign or "Right",
				Locked = ae.Locked or false,
				Callback = ae.Callback or function() end,
				UIElements = {},
			}

			local ag = true

			af.ButtonFrame = WindUI.load("CreateElementFrame")({
				Title = af.Title,
				Desc = af.Desc,
				Parent = ae.Parent,

				Window = ae.Window,
				Color = af.Color,
				Justify = af.Justify,
				TextOffset = 20,
				Hover = true,
				Scalable = true,
				Tab = ae.Tab,
				Index = ae.Index,
				ElementTable = af,
			})

			af.UIElements.ButtonIcon =
				aa.Image(af.Icon, af.Icon, 0, ae.Window.Folder, "Button", not af.Color and true or nil, af.IconThemed)

			af.UIElements.ButtonIcon.Size = UDim2.new(0, 20, 0, 20)
			af.UIElements.ButtonIcon.Parent = af.Justify == "Between" and af.ButtonFrame.UIElements.Main
				or af.ButtonFrame.UIElements.Container.TitleFrame
			af.UIElements.ButtonIcon.LayoutOrder = af.IconAlign == "Left" and -99999 or 99999
			af.UIElements.ButtonIcon.AnchorPoint = Vector2.new(1, 0.5)
			af.UIElements.ButtonIcon.Position = UDim2.new(1, 0, 0.5, 0)

			af.ButtonFrame:Colorize(af.UIElements.ButtonIcon.ImageLabel, "ImageColor3")

			function af.Lock(ah)
				af.Locked = true
				ag = false
				return af.ButtonFrame:Lock()
			end
			function af.Unlock(ah)
				af.Locked = false
				ag = true
				return af.ButtonFrame:Unlock()
			end

			if af.Locked then
				af:Lock()
			end

			aa.AddSignal(af.ButtonFrame.UIElements.Main.MouseButton1Click, function()
				if ag then
					task.spawn(function()
						aa.SafeCallback(af.Callback)
					end)
				end
			end)
			return af.__type, af
		end

		return ac
	end
	function WindUI.CreateToggle()
		local aa = {}

		local ab = WindUI.load("WindUI")
		local ac = ab.New
		local ad = ab.Tween

		function aa.New(ae, af, ag, ah)
			local ai = {}

			local aj = 13
			local ak
			if af and af ~= "" then
				ak = ac("ImageLabel", {
					Size = UDim2.new(1, -7, 1, -7),
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Image = ab.Icon(af)[1],
					ImageRectOffset = ab.Icon(af)[2].ImageRectPosition,
					ImageRectSize = ab.Icon(af)[2].ImageRectSize,
					ImageTransparency = 1,
					ImageColor3 = Color3.new(0, 0, 0),
				})
			end

			local al = ab.NewRoundFrame(aj, "Squircle", {
				ImageTransparency = 0.93,
				ThemeTag = {
					ImageColor3 = "Text",
				},
				Parent = ag,
				Size = UDim2.new(0, 41.6, 0, 26),
			}, {
				ab.NewRoundFrame(aj, "Squircle", {
					Size = UDim2.new(1, 0, 1, 0),
					Name = "Layer",
					ThemeTag = {
						ImageColor3 = "Button",
					},
					ImageTransparency = 1,
				}),
				ab.NewRoundFrame(aj, "SquircleOutline", {
					Size = UDim2.new(1, 0, 1, 0),
					Name = "Stroke",
					ImageColor3 = Color3.new(1, 1, 1),
					ImageTransparency = 1,
				}, {
					ac("UIGradient", {
						Rotation = 90,
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 0),
							NumberSequenceKeypoint.new(1, 1),
						}),
					}),
				}),

				ab.NewRoundFrame(aj, "Squircle", {
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(0, 3, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					ImageTransparency = 0,
					ImageColor3 = Color3.new(1, 1, 1),

					Name = "Frame",
				}, {
					ak,
				}),
			})

			function ai.Set(am, an, ao)
				if an then
					ad(al.Frame, 0.15, {
						Position = UDim2.new(1, -22, 0.5, 0),
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					ad(al.Layer, 0.1, {
						ImageTransparency = 0,
					}):Play()
					ad(al.Stroke, 0.1, {
						ImageTransparency = 0.95,
					}):Play()

					if ak then
						ad(ak, 0.1, {
							ImageTransparency = 0,
						}):Play()
					end
				else
					ad(al.Frame, 0.15, {
						Position = UDim2.new(0, 4, 0.5, 0),
						Size = UDim2.new(0, 18, 0, 18),
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					ad(al.Layer, 0.1, {
						ImageTransparency = 1,
					}):Play()
					ad(al.Stroke, 0.1, {
						ImageTransparency = 1,
					}):Play()

					if ak then
						ad(ak, 0.1, {
							ImageTransparency = 1,
						}):Play()
					end
				end

				if ao ~= false then
					ao = true
				end

				task.spawn(function()
					if ah and ao then
						ab.SafeCallback(ah, an)
					end
				end)
			end

			return al, ai
		end

		return aa
	end
	function WindUI.CreateCheckbox()
		local aa = {}

		local ab = WindUI.load("WindUI")
		local ac = ab.New
		local ad = ab.Tween

		function aa.New(ae, af, ag, ah)
			local ai = {}

			af = af or "check"

			local aj = 10
			local ak = ac("ImageLabel", {
				Size = UDim2.new(1, -10, 1, -10),
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Image = ab.Icon(af)[1],
				ImageRectOffset = ab.Icon(af)[2].ImageRectPosition,
				ImageRectSize = ab.Icon(af)[2].ImageRectSize,
				ImageTransparency = 1,
				ImageColor3 = Color3.new(1, 1, 1),
			})

			local al = ab.NewRoundFrame(aj, "Squircle", {
				ImageTransparency = 0.95,
				ThemeTag = {
					ImageColor3 = "Text",
				},
				Parent = ag,
				Size = UDim2.new(0, 27, 0, 27),
			}, {
				ab.NewRoundFrame(aj, "Squircle", {
					Size = UDim2.new(1, 0, 1, 0),
					Name = "Layer",
					ThemeTag = {
						ImageColor3 = "Button",
					},
					ImageTransparency = 1,
				}),
				ab.NewRoundFrame(aj, "SquircleOutline", {
					Size = UDim2.new(1, 0, 1, 0),
					Name = "Stroke",
					ImageColor3 = Color3.new(1, 1, 1),
					ImageTransparency = 1,
				}, {
					ac("UIGradient", {
						Rotation = 90,
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 0),
							NumberSequenceKeypoint.new(1, 1),
						}),
					}),
				}),

				ak,
			})

			function ai.Set(am, an)
				if an then
					ad(al.Layer, 0.06, {
						ImageTransparency = 0,
					}):Play()
					ad(al.Stroke, 0.06, {
						ImageTransparency = 0.95,
					}):Play()
					ad(ak, 0.06, {
						ImageTransparency = 0,
					}):Play()
				else
					ad(al.Layer, 0.05, {
						ImageTransparency = 1,
					}):Play()
					ad(al.Stroke, 0.05, {
						ImageTransparency = 1,
					}):Play()
					ad(ak, 0.06, {
						ImageTransparency = 1,
					}):Play()
				end

				task.spawn(function()
					if ah then
						ab.SafeCallback(ah, an)
					end
				end)
			end

			return al, ai
		end

		return aa
	end
	function WindUI.CreateToggleEx()
		local aa = WindUI.load("WindUI")
		local ab = aa.New
		local ac = aa.Tween

		local ad = WindUI.load("CreateToggle").New
		local ae = WindUI.load("CreateCheckbox").New

		local af = {}

		function af.New(ag, ah)
			local ai = {
				__type = "Toggle",
				Title = ah.Title or "Toggle",
				Desc = ah.Desc or nil,
				Locked = ah.Locked or false,
				Value = ah.Value,
				Icon = ah.Icon or nil,
				Type = ah.Type or "Toggle",
				Callback = ah.Callback or function() end,
				UIElements = {},
			}
			ai.ToggleFrame = WindUI.load("CreateElementFrame")({
				Title = ai.Title,
				Desc = ai.Desc,

				Window = ah.Window,
				Parent = ah.Parent,
				TextOffset = 44,
				Hover = false,
				Tab = ah.Tab,
				Index = ah.Index,
				ElementTable = ai,
			})

			local aj = true

			if ai.Value == nil then
				ai.Value = false
			end

			function ai.Lock(ak)
				ai.Locked = true
				aj = false
				return ai.ToggleFrame:Lock()
			end
			function ai.Unlock(ak)
				ai.Locked = false
				aj = true
				return ai.ToggleFrame:Unlock()
			end

			if ai.Locked then
				ai:Lock()
			end

			local ak = ai.Value

			local al, am
			if ai.Type == "Toggle" then
				al, am = ad(ak, ai.Icon, ai.ToggleFrame.UIElements.Main, ai.Callback)
			elseif ai.Type == "Checkbox" then
				al, am = ae(ak, ai.Icon, ai.ToggleFrame.UIElements.Main, ai.Callback)
			else
				error("Unknown Toggle Type: " .. tostring(ai.Type))
			end

			al.AnchorPoint = Vector2.new(1, ah.Window.NewElements and 0 or 0.5)
			al.Position = UDim2.new(1, 0, ah.Window.NewElements and 0 or 0.5, 0)

			function ai.Set(an, ao, ap)
				if aj then
					am:Set(ao, ap)
					ak = ao
					ai.Value = ao
				end
			end

			ai:Set(ak, false)

			aa.AddSignal(ai.ToggleFrame.UIElements.Main.MouseButton1Click, function()
				ai:Set(not ak)
			end)

			return ai.__type, ai
		end

		return af
	end
	function WindUI.CreateSlider()
		local aa = WindUI.load("WindUI")
		local ac = aa.New
		local ad = aa.Tween

		local ae = {}

		local af = false

		function ae.New(ag, ah)
			local ai = {
				__type = "Slider",
				Title = ah.Title or "Slider",
				Desc = ah.Desc or nil,
				Locked = ah.Locked or nil,
				Value = ah.Value or {},
				Step = ah.Step or 1,
				Callback = ah.Callback or function() end,
				UIElements = {},
				IsFocusing = false,

				Width = 130,
				TextBoxWidth = 30,
				ThumbSize = 13,
			}
			local aj
			local ak
			local al
			local am = ai.Value.Default or ai.Value.Min or 0

			local an = am
			local ao = (am - (ai.Value.Min or 0)) / ((ai.Value.Max or 100) - (ai.Value.Min or 0))

			local ap = true
			local aq = ai.Step % 1 ~= 0

			local function FormatValue(ar)
				if aq then
					return string.format("%.2f", ar)
				else
					return tostring(math.floor(ar + 0.5))
				end
			end

			local function CalculateValue(ar)
				if aq then
					return math.floor(ar / ai.Step + 0.5) * ai.Step
				else
					return math.floor(ar / ai.Step + 0.5) * ai.Step
				end
			end

			ai.SliderFrame = WindUI.load("CreateElementFrame")({
				Title = ai.Title,
				Desc = ai.Desc,
				Parent = ah.Parent,
				TextOffset = ai.Width,
				Hover = false,
				Tab = ah.Tab,
				Index = ah.Index,
				Window = ah.Window,
				ElementTable = ai,
			})

			ai.UIElements.SliderIcon = aa.NewRoundFrame(99, "Squircle", {
				ImageTransparency = 0.95,
				Size = UDim2.new(1, -ai.TextBoxWidth - 8, 0, 4),
				Name = "Frame",
				ThemeTag = {
					ImageColor3 = "Text",
				},
			}, {
				aa.NewRoundFrame(99, "Squircle", {
					Name = "Frame",
					Size = UDim2.new(ao, 0, 1, 0),
					ImageTransparency = 0.1,
					ThemeTag = {
						ImageColor3 = "Button",
					},
				}, {
					aa.NewRoundFrame(99, "Squircle", {
						Size = UDim2.new(0, ai.ThumbSize, 0, ai.ThumbSize),
						Position = UDim2.new(1, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						ThemeTag = {
							ImageColor3 = "Text",
						},
						Name = "Thumb",
					}),
				}),
			})

			ai.UIElements.SliderContainer = ac("Frame", {
				Size = UDim2.new(0, ai.Width, 0, 0),
				AutomaticSize = "Y",
				Position = UDim2.new(1, 0, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,
				Parent = ai.SliderFrame.UIElements.Main,
			}, {
				ac("UIListLayout", {
					Padding = UDim.new(0, 8),
					FillDirection = "Horizontal",
					VerticalAlignment = "Center",
				}),
				ai.UIElements.SliderIcon,
				ac("TextBox", {
					Size = UDim2.new(0, ai.TextBoxWidth, 0, 0),
					TextXAlignment = "Left",
					Text = FormatValue(am),
					ThemeTag = {
						TextColor3 = "Text",
					},
					TextTransparency = 0.4,
					AutomaticSize = "Y",
					TextSize = 15,
					FontFace = Font.new(aa.Font, Enum.FontWeight.Medium),
					BackgroundTransparency = 1,
					LayoutOrder = -1,
				}),
			})

			function ai.Lock(ar)
				ai.Locked = true
				ap = false
				return ai.SliderFrame:Lock()
			end
			function ai.Unlock(ar)
				ai.Locked = false
				ap = true
				return ai.SliderFrame:Unlock()
			end

			if ai.Locked then
				ai:Lock()
			end

			local ar = ai.SliderFrame.Parent:IsA("ScrollingFrame") and ai.SliderFrame.Parent
				or ai.SliderFrame.Parent.Parent.Parent

			function ai.Set(as, at, au)
				if ap then
					if
						not ai.IsFocusing
						and not af
						and (
							not au
							or (
								au.UserInputType == Enum.UserInputType.MouseButton1
								or au.UserInputType == Enum.UserInputType.Touch
							)
						)
					then
						at = math.clamp(at, ai.Value.Min or 0, ai.Value.Max or 100)

						local av =
							math.clamp((at - (ai.Value.Min or 0)) / ((ai.Value.Max or 100) - (ai.Value.Min or 0)), 0, 1)
						at = CalculateValue(ai.Value.Min + av * (ai.Value.Max - ai.Value.Min))

						if at ~= an then
							ad(ai.UIElements.SliderIcon.Frame, 0.05, { Size = UDim2.new(av, 0, 1, 0) }):Play()
							ai.UIElements.SliderContainer.TextBox.Text = FormatValue(at)
							ai.Value.Default = FormatValue(at)
							an = at
							aa.SafeCallback(ai.Callback, FormatValue(at))
						end

						if au then
							aj = (au.UserInputType == Enum.UserInputType.Touch)
							ar.ScrollingEnabled = false
							af = true
							ak = game:GetService("RunService").RenderStepped:Connect(function()
								local aw = aj and au.Position.X
									or game:GetService("UserInputService"):GetMouseLocation().X
								local ax = math.clamp(
									(aw - ai.UIElements.SliderIcon.AbsolutePosition.X)
										/ ai.UIElements.SliderIcon.AbsoluteSize.X,
									0,
									1
								)
								at = CalculateValue(ai.Value.Min + ax * (ai.Value.Max - ai.Value.Min))

								if at ~= an then
									ad(ai.UIElements.SliderIcon.Frame, 0.05, { Size = UDim2.new(ax, 0, 1, 0) }):Play()
									ai.UIElements.SliderContainer.TextBox.Text = FormatValue(at)
									ai.Value.Default = FormatValue(at)
									an = at
									aa.SafeCallback(ai.Callback, FormatValue(at))
								end
							end)
							al = game:GetService("UserInputService").InputEnded:Connect(function(aw)
								if
									(
										aw.UserInputType == Enum.UserInputType.MouseButton1
										or aw.UserInputType == Enum.UserInputType.Touch
									) and au == aw
								then
									ak:Disconnect()
									al:Disconnect()
									af = false
									ar.ScrollingEnabled = true

									ad(
										ai.UIElements.SliderIcon.Frame.Thumb,
										0.12,
										{ Size = UDim2.new(0, ai.ThumbSize, 0, ai.ThumbSize) },
										Enum.EasingStyle.Quint,
										Enum.EasingDirection.InOut
									):Play()
								end
							end)
						end
					end
				end
			end

			function ai.SetMax(as, at)
				ai.Value.Max = at

				local au = tonumber(ai.Value.Default) or an
				if au > at then
					ai:Set(at)
				else
					local av = math.clamp((au - (ai.Value.Min or 0)) / (at - (ai.Value.Min or 0)), 0, 1)
					ad(ai.UIElements.SliderIcon.Frame, 0.1, { Size = UDim2.new(av, 0, 1, 0) }):Play()
				end
			end

			function ai.SetMin(as, at)
				ai.Value.Min = at

				local au = tonumber(ai.Value.Default) or an
				if au < at then
					ai:Set(at)
				else
					local av = math.clamp((au - at) / ((ai.Value.Max or 100) - at), 0, 1)
					ad(ai.UIElements.SliderIcon.Frame, 0.1, { Size = UDim2.new(av, 0, 1, 0) }):Play()
				end
			end

			aa.AddSignal(ai.UIElements.SliderContainer.TextBox.FocusLost, function(as)
				if as then
					local at = tonumber(ai.UIElements.SliderContainer.TextBox.Text)
					if at then
						ai:Set(at)
					else
						ai.UIElements.SliderContainer.TextBox.Text = FormatValue(an)
					end
				end
			end)

			aa.AddSignal(ai.UIElements.SliderContainer.InputBegan, function(as)
				ai:Set(am, as)

				if
					as.UserInputType == Enum.UserInputType.MouseButton1
					or as.UserInputType == Enum.UserInputType.Touch
				then
					ad(
						ai.UIElements.SliderIcon.Frame.Thumb,
						0.12,
						{ Size = UDim2.new(0, ai.ThumbSize + 8, 0, ai.ThumbSize + 8) },
						Enum.EasingStyle.Quint,
						Enum.EasingDirection.Out
					):Play()
				end
			end)

			return ai.__type, ai
		end

		return ae
	end
	function WindUI.CreateKeybind()
		local aa = game:GetService("UserInputService")

		local ac = WindUI.load("WindUI")
		local ad = ac.New
		local ae = ac.Tween

		local af = {
			UICorner = 6,
			UIPadding = 8,
		}

		local ag = WindUI.load("CreateLabel").New

		function af.New(ah, ai)
			local aj = {
				__type = "Keybind",
				Title = ai.Title or "Keybind",
				Desc = ai.Desc or nil,
				Locked = ai.Locked or false,
				Value = ai.Value or "CreateKeybind",
				Callback = ai.Callback or function() end,
				CanChange = ai.CanChange or true,
				Picking = false,
				UIElements = {},
			}

			local ak = true

			aj.KeybindFrame = WindUI.load("CreateElementFrame")({
				Title = aj.Title,
				Desc = aj.Desc,
				Parent = ai.Parent,
				TextOffset = 85,
				Hover = aj.CanChange,
				Tab = ai.Tab,
				Index = ai.Index,
				Window = ai.Window,
				ElementTable = aj,
			})

			aj.UIElements.Keybind = ag(aj.Value, nil, aj.KeybindFrame.UIElements.Main)

			aj.UIElements.Keybind.Size =
				UDim2.new(0, 24 + aj.UIElements.Keybind.Frame.Frame.TextLabel.TextBounds.X, 0, 42)
			aj.UIElements.Keybind.AnchorPoint = Vector2.new(1, 0.5)
			aj.UIElements.Keybind.Position = UDim2.new(1, 0, 0.5, 0)

			ad("UIScale", {
				Parent = aj.UIElements.Keybind,
				Scale = 0.85,
			})

			ac.AddSignal(aj.UIElements.Keybind.Frame.Frame.TextLabel:GetPropertyChangedSignal("TextBounds"), function()
				aj.UIElements.Keybind.Size =
					UDim2.new(0, 24 + aj.UIElements.Keybind.Frame.Frame.TextLabel.TextBounds.X, 0, 42)
			end)

			function aj.Lock(al)
				aj.Locked = true
				ak = false
				return aj.KeybindtrueFrame:Lock()
			end
			function aj.Unlock(al)
				aj.Locked = false
				ak = true
				return aj.KeybindFrame:Unlock()
			end

			function aj.Set(al, am)
				aj.Value = am
				aj.UIElements.Keybind.Frame.Frame.TextLabel.Text = am
			end

			if aj.Locked then
				aj:Lock()
			end

			ac.AddSignal(aj.KeybindFrame.UIElements.Main.MouseButton1Click, function()
				if ak then
					if aj.CanChange then
						aj.Picking = true
						aj.UIElements.Keybind.Frame.Frame.TextLabel.Text = "..."

						task.wait(0.2)

						local al
						al = aa.InputBegan:Connect(function(am)
							local an

							if am.UserInputType == Enum.UserInputType.Keyboard then
								an = am.KeyCode.Name
							elseif am.UserInputType == Enum.UserInputType.MouseButton1 then
								an = "MouseLeft"
							elseif am.UserInputType == Enum.UserInputType.MouseButton2 then
								an = "MouseRight"
							end

							local ao
							ao = aa.InputEnded:Connect(function(ap)
								if
									ap.KeyCode.Name == an
									or an == "MouseLeft" and ap.UserInputType == Enum.UserInputType.MouseButton1
									or an == "MouseRight" and ap.UserInputType == Enum.UserInputType.MouseButton2
								then
									aj.Picking = false

									aj.UIElements.Keybind.Frame.Frame.TextLabel.Text = an
									aj.Value = an

									al:Disconnect()
									ao:Disconnect()
								end
							end)
						end)
					end
				end
			end)
			ac.AddSignal(aa.InputBegan, function(al)
				if ak then
					if al.KeyCode.Name == aj.Value then
						ac.SafeCallback(aj.Callback, al.KeyCode.Name)
					end
				end
			end)
			return aj.__type, aj
		end

		return af
	end
	function WindUI.CreateInputEx()
		local aa = WindUI.load("WindUI")
		local ac = aa.New
		local ad = aa.Tween

		local ae = {
			UICorner = 8,
			UIPadding = 8,
		}
		local af = WindUI.load("CreateButton")
.New
		local ag = WindUI.load("CreateInput").New

		function ae.New(ah, ai)
			local aj = {
				__type = "Input",
				Title = ai.Title or "Input",
				Desc = ai.Desc or nil,
				Type = ai.Type or "Input",
				Locked = ai.Locked or false,
				InputIcon = ai.InputIcon or false,
				Placeholder = ai.Placeholder or "Enter Text...",
				Value = ai.Value or "",
				Callback = ai.Callback or function() end,
				ClearTextOnFocus = ai.ClearTextOnFocus or false,
				UIElements = {},

				Width = 150,
			}

			local ak = true

			aj.InputFrame = WindUI.load("CreateElementFrame")({
				Title = aj.Title,
				Desc = aj.Desc,
				Parent = ai.Parent,
				TextOffset = aj.Width,
				Hover = false,
				Tab = ai.Tab,
				Index = ai.Index,
				Window = ai.Window,
				ElementTable = aj,
			})

			local al = ag(
				aj.Placeholder,
				aj.InputIcon,
				aj.Type == "Textarea" and aj.InputFrame.UIElements.Container or aj.InputFrame.UIElements.Main,
				aj.Type,
				function(al)
					aj:Set(al)
				end,
				nil,
				ai.Window.NewElements and 12 or 10,
				aj.ClearTextOnFocus
			)

			if aj.Type == "Input" then
				al.Size = UDim2.new(0, aj.Width, 0, 36)
				al.Position = UDim2.new(1, 0, 0.5, 0)
				al.AnchorPoint = Vector2.new(1, 0.5)
			else
				al.Size = UDim2.new(1, 0, 0, 148)
			end

			ac("UIScale", {
				Parent = al,
				Scale = 1,
			})

			function aj.Lock(am)
				aj.Locked = true
				ak = false
				return aj.InputFrame:Lock()
			end
			function aj.Unlock(am)
				aj.Locked = false
				ak = true
				return aj.InputFrame:Unlock()
			end

			function aj.Set(am, an)
				if ak then
					aa.SafeCallback(aj.Callback, an)

					al.Frame.Frame.TextBox.Text = an
					aj.Value = an
				end
			end
			function aj.SetPlaceholder(am, an)
				al.Frame.Frame.TextBox.PlaceholderText = an
				aj.Placeholder = an
			end

			aj:Set(aj.Value)

			if aj.Locked then
				aj:Lock()
			end

			return aj.__type, aj
		end

		return ae
	end
	function WindUI.CreateDropdownMenu()
		local aa = {}

		local ac = game:GetService("UserInputService")
		local ae = game:GetService("Players").LocalPlayer:GetMouse()
		local af = game:GetService("Workspace").CurrentCamera

		local ag = workspace.CurrentCamera

		local ah = WindUI.load("CreateInput").New

		local ai = WindUI.load("WindUI")
		local aj = ai.New
		local ak = ai.Tween

		function aa.New(al, am, an, ao, ap)
			local aq = {}

			am.UIElements.UIListLayout = aj("UIListLayout", {
				Padding = UDim.new(0, an.MenuPadding),
				FillDirection = "Vertical",
			})

			am.UIElements.Menu = ai.NewRoundFrame(an.MenuCorner, "Squircle", {
				ThemeTag = {
					ImageColor3 = "Background",
				},
				ImageTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
			}, {
				aj("UIPadding", {
					PaddingTop = UDim.new(0, an.MenuPadding),
					PaddingLeft = UDim.new(0, an.MenuPadding),
					PaddingRight = UDim.new(0, an.MenuPadding),
					PaddingBottom = UDim.new(0, an.MenuPadding),
				}),
				aj("UIListLayout", {
					FillDirection = "Vertical",
					Padding = UDim.new(0, an.MenuPadding),
				}),
				aj("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, am.SearchBarEnabled and -an.MenuPadding - an.SearchBarHeight),

					ClipsDescendants = true,
					LayoutOrder = 999,
				}, {
					aj("UICorner", {
						CornerRadius = UDim.new(0, an.MenuCorner - an.MenuPadding),
					}),
					aj("ScrollingFrame", {
						Size = UDim2.new(1, 0, 1, 0),
						ScrollBarThickness = 0,
						ScrollingDirection = "Y",
						AutomaticCanvasSize = "Y",
						CanvasSize = UDim2.new(0, 0, 0, 0),
						BackgroundTransparency = 1,
						ScrollBarImageTransparency = 1,
					}, {
						am.UIElements.UIListLayout,
					}),
				}),
			})

			am.UIElements.MenuCanvas = aj("Frame", {
				Size = UDim2.new(0, am.MenuWidth, 0, 300),
				BackgroundTransparency = 1,
				Position = UDim2.new(-10, 0, -10, 0),
				Visible = false,
				Active = false,

				Parent = al.WindUI.DropdownGui,
				AnchorPoint = Vector2.new(1, 0),
			}, {
				am.UIElements.Menu,

				aj("UISizeConstraint", {
					MinSize = Vector2.new(170, 0),
				}),
			})

			local function RecalculateCanvasSize()
				am.UIElements.Menu.Frame.ScrollingFrame.CanvasSize =
					UDim2.fromOffset(0, am.UIElements.UIListLayout.AbsoluteContentSize.Y)
			end

			local function RecalculateListSize()
				local ar = ag.ViewportSize.Y * 0.6

				local as = am.UIElements.UIListLayout.AbsoluteContentSize.Y
				local at = am.SearchBarEnabled and (an.SearchBarHeight + (an.MenuPadding * 3)) or (an.MenuPadding * 2)
				local au = as + at

				if au > ar then
					am.UIElements.MenuCanvas.Size = UDim2.fromOffset(am.UIElements.MenuCanvas.AbsoluteSize.X, ar)
				else
					am.UIElements.MenuCanvas.Size = UDim2.fromOffset(am.UIElements.MenuCanvas.AbsoluteSize.X, au)
				end
			end

			function UpdatePosition()
				local ar = am.UIElements.Dropdown
				local as = am.UIElements.MenuCanvas

				local at = af.ViewportSize.Y - (ar.AbsolutePosition.Y + ar.AbsoluteSize.Y) - an.MenuPadding - 54
				local au = as.AbsoluteSize.Y + an.MenuPadding

				local av = -54
				if at < au then
					av = au - at - 54
				end

				as.Position = UDim2.new(
					0,
					ar.AbsolutePosition.X + ar.AbsoluteSize.X,
					0,
					ar.AbsolutePosition.Y + ar.AbsoluteSize.Y - av + an.MenuPadding
				)
			end

			local ar

			function aq.Display(as)
				local at = am.Values
				local au = ""

				if am.Multi then
					for av, aw in next, at do
						local ax = typeof(aw) == "table" and aw.Title or aw
						if table.find(am.Value, ax) then
							au = au .. ax .. ", "
						end
					end
					au = au:sub(1, #au - 2)
				else
					au = typeof(am.Value) == "table" and am.Value.Title or am.Value or ""
				end

				am.UIElements.Dropdown.Frame.Frame.TextLabel.Text = (au == "" and "--" or au)
			end

			function aq.Refresh(as, at)
				for au, av in next, am.UIElements.Menu.Frame.ScrollingFrame:GetChildren() do
					if not av:IsA("UIListLayout") then
						av:Destroy()
					end
				end

				am.Tabs = {}

				if am.SearchBarEnabled then
					if not ar then
						ar = ah("Search...", "search", am.UIElements.Menu, nil, function(aw)
							for ax, ay in next, am.Tabs do
								if string.find(string.lower(ay.Name), string.lower(aw), 1, true) then
									ay.UIElements.TabItem.Visible = true
								else
									ay.UIElements.TabItem.Visible = false
								end
								RecalculateListSize()
							end
						end, true)
						ar.Size = UDim2.new(1, 0, 0, an.SearchBarHeight)
						ar.Position = UDim2.new(0, 0, 0, 0)
						ar.Name = "SearchBar"
					end
				end

				for aw, ax in next, at do
					local ay = {
						Name = typeof(ax) == "table" and ax.Title or ax,
						Icon = typeof(ax) == "table" and ax.Icon or nil,
						Original = ax,
						Selected = false,
						UIElements = {},
					}
					local az
					if ay.Icon then
						az = ai.Image(ay.Icon, ay.Icon, 0, al.Window.Folder, "Dropdown", true)
						az.Size = UDim2.new(0, an.TabIcon, 0, an.TabIcon)
						az.ImageLabel.ImageTransparency = 0.2
						ay.UIElements.TabIcon = az
					end
					ay.UIElements.TabItem = ai.NewRoundFrame(an.MenuCorner - an.MenuPadding, "Squircle", {
						Size = UDim2.new(1, 0, 0, 36),

						ImageTransparency = 1,
						Parent = am.UIElements.Menu.Frame.ScrollingFrame,

						ImageColor3 = Color3.new(1, 1, 1),
					}, {
						ai.NewRoundFrame(an.MenuCorner - an.MenuPadding, "SquircleOutline", {
							Size = UDim2.new(1, 0, 1, 0),
							ImageColor3 = Color3.new(1, 1, 1),
							ImageTransparency = 1,
							Name = "Highlight",
						}, {
							aj("UIGradient", {
								Rotation = 80,
								Color = ColorSequence.new({
									ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 255, 255)),
									ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
									ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 255, 255)),
								}),
								Transparency = NumberSequence.new({
									NumberSequenceKeypoint.new(0.0, 0.1),
									NumberSequenceKeypoint.new(0.5, 1),
									NumberSequenceKeypoint.new(1.0, 0.1),
								}),
							}),
						}),
						aj("Frame", {
							Size = UDim2.new(1, 0, 1, 0),
							BackgroundTransparency = 1,
						}, {
							aj("UIListLayout", {
								Padding = UDim.new(0, an.TabPadding),
								FillDirection = "Horizontal",
								VerticalAlignment = "Center",
							}),
							aj("UIPadding", {

								PaddingLeft = UDim.new(0, an.TabPadding),
								PaddingRight = UDim.new(0, an.TabPadding),
							}),
							aj("UICorner", {
								CornerRadius = UDim.new(0, an.MenuCorner - an.MenuPadding),
							}),

							az,
							aj("TextLabel", {
								Text = ay.Name,
								TextXAlignment = "Left",
								FontFace = Font.new(ai.Font, Enum.FontWeight.Regular),
								ThemeTag = {
									TextColor3 = "Text",
									BackgroundColor3 = "Text",
								},
								TextSize = 15,
								BackgroundTransparency = 1,
								TextTransparency = 0.4,
								LayoutOrder = 999,
								AutomaticSize = "Y",

								Size = UDim2.new(1, az and -an.TabPadding - an.TabIcon or 0, 0, 0),
								AnchorPoint = Vector2.new(0, 0.5),
								Position = UDim2.new(0, 0, 0.5, 0),
							}),
						}),
					}, true)

					if am.Multi then
						ay.Selected = table.find(am.Value or {}, ay.Name)
					else
						ay.Selected = typeof(am.Value) == "table" and am.Value.Title == ay.Name or am.Value == ay.Name
					end

					if ay.Selected then
						ay.UIElements.TabItem.ImageTransparency = 0.95
						ay.UIElements.TabItem.Highlight.ImageTransparency = 0.75

						ay.UIElements.TabItem.Frame.TextLabel.TextTransparency = 0
						if ay.UIElements.TabIcon then
							ay.UIElements.TabIcon.ImageLabel.ImageTransparency = 0
						end
					end

					am.Tabs[aw] = ay

					aq:Display()

					local function Callback()
						aq:Display()
						task.spawn(function()
							ai.SafeCallback(am.Callback, am.Value)
						end)
					end

					ai.AddSignal(ay.UIElements.TabItem.MouseButton1Click, function()
						if ap == "Dropdown" then
							if am.Multi then
								if not ay.Selected then
									ay.Selected = true
									ak(ay.UIElements.TabItem, 0.1, { ImageTransparency = 0.95 }):Play()
									ak(ay.UIElements.TabItem.Highlight, 0.1, { ImageTransparency = 0.75 }):Play()

									ak(ay.UIElements.TabItem.Frame.TextLabel, 0.1, { TextTransparency = 0 }):Play()
									if ay.UIElements.TabIcon then
										ak(ay.UIElements.TabIcon.ImageLabel, 0.1, { ImageTransparency = 0 }):Play()
									end
									table.insert(am.Value, ay.Original)
								else
									if not am.AllowNone and #am.Value == 1 then
										return
									end
									ay.Selected = false
									ak(ay.UIElements.TabItem, 0.1, { ImageTransparency = 1 }):Play()
									ak(ay.UIElements.TabItem.Highlight, 0.1, { ImageTransparency = 1 }):Play()

									ak(ay.UIElements.TabItem.Frame.TextLabel, 0.1, { TextTransparency = 0.4 }):Play()
									if ay.UIElements.TabIcon then
										ak(ay.UIElements.TabIcon.ImageLabel, 0.1, { ImageTransparency = 0.2 }):Play()
									end

									for aA, aB in ipairs(am.Value) do
										if typeof(aB) == "table" and (aB.Title == ay.Name) or (aB == ay.Name) then
											table.remove(am.Value, aA)
											break
										end
									end
								end
							else
								for aA, aB in next, am.Tabs do
									ak(aB.UIElements.TabItem, 0.1, { ImageTransparency = 1 }):Play()
									ak(aB.UIElements.TabItem.Highlight, 0.1, { ImageTransparency = 1 }):Play()

									ak(aB.UIElements.TabItem.Frame.TextLabel, 0.1, { TextTransparency = 0.4 }):Play()
									if aB.UIElements.TabIcon then
										ak(aB.UIElements.TabIcon.ImageLabel, 0.1, { ImageTransparency = 0.2 }):Play()
									end
									aB.Selected = false
								end
								ay.Selected = true
								ak(ay.UIElements.TabItem, 0.1, { ImageTransparency = 0.95 }):Play()
								ak(ay.UIElements.TabItem.Highlight, 0.1, { ImageTransparency = 0.75 }):Play()

								ak(ay.UIElements.TabItem.Frame.TextLabel, 0.1, { TextTransparency = 0 }):Play()
								if ay.UIElements.TabIcon then
									ak(ay.UIElements.TabIcon.ImageLabel, 0.1, { ImageTransparency = 0 }):Play()
								end
								am.Value = ay.Original
							end
							Callback()
						end
					end)

					RecalculateCanvasSize()
					RecalculateListSize()
				end

				local ay = 0
				for az, aA in next, am.Tabs do
					if aA.UIElements.TabItem.Frame.TextLabel then
						local aB = aA.UIElements.TabItem.Frame.TextLabel.TextBounds.X
						ay = math.max(ay, aB)
					end
				end

				am.UIElements.MenuCanvas.Size = UDim2.new(
					0,
					ay + 6 + 6 + 5 + 5 + 18 + 6 + 6,
					am.UIElements.MenuCanvas.Size.Y.Scale,
					am.UIElements.MenuCanvas.Size.Y.Offset
				)
			end

			aq:Refresh(am.Values)

			function aq.Select(as, at)
				if at then
					am.Value = at
				else
					if am.Multi then
						am.Value = {}
					else
						am.Value = nil
					end
				end
				aq:Refresh(am.Values)
			end

			RecalculateListSize()

			function aq.Open(as)
				if ao then
					am.UIElements.Menu.Visible = true
					am.UIElements.MenuCanvas.Visible = true
					am.UIElements.MenuCanvas.Active = true
					am.UIElements.Menu.Size = UDim2.new(1, 0, 0, 0)
					ak(am.UIElements.Menu, 0.1, {
						Size = UDim2.new(1, 0, 1, 0),
						ImageTransparency = 0.05,
					}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out):Play()

					task.spawn(function()
						task.wait(0.1)
						am.Opened = true
					end)

					UpdatePosition()
				end
			end
			function aq.Close(as)
				am.Opened = false

				ak(am.UIElements.Menu, 0.25, {
					Size = UDim2.new(1, 0, 0, 0),
					ImageTransparency = 1,
				}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out):Play()

				task.spawn(function()
					task.wait(0.1)
					am.UIElements.Menu.Visible = false
				end)

				task.spawn(function()
					task.wait(0.25)
					am.UIElements.MenuCanvas.Visible = false
					am.UIElements.MenuCanvas.Active = false
				end)
			end

			ai.AddSignal(am.UIElements.Dropdown.MouseButton1Click, function()
				aq:Open()
			end)

			ai.AddSignal(ac.InputBegan, function(as)
				if
					as.UserInputType == Enum.UserInputType.MouseButton1
					or as.UserInputType == Enum.UserInputType.Touch
				then
					local at = am.UIElements.MenuCanvas
					local av, aw = at.AbsolutePosition, at.AbsoluteSize

					local ax = am.UIElements.Dropdown
					local ay = ax.AbsolutePosition
					local az = ax.AbsoluteSize

					local aA = ae.X >= ay.X and ae.X <= ay.X + az.X and ae.Y >= ay.Y and ae.Y <= ay.Y + az.Y

					local aB = ae.X >= av.X and ae.X <= av.X + aw.X and ae.Y >= av.Y and ae.Y <= av.Y + aw.Y

					if al.Window.CanDropdown and am.Opened and not aA and not aB then
						aq:Close()
					end
				end
			end)

			ai.AddSignal(am.UIElements.Dropdown:GetPropertyChangedSignal("AbsolutePosition"), UpdatePosition)

			return aq
		end

		return aa
	end
	function WindUI.CreateDropdown()
		game:GetService("UserInputService")
		game:GetService("Players").LocalPlayer:GetMouse()
		local aa = game:GetService("Workspace").CurrentCamera

		local ac = WindUI.load("WindUI")
		local ae = ac.New
		local af = ac.Tween

		local ag = WindUI.load("CreateLabel").New
		local ah = WindUI.load("CreateInput").New
		local ai = WindUI.load("CreateDropdownMenu").New
		local aj = 
workspace.CurrentCamera

		local ak = {
			UICorner = 10,
			UIPadding = 12,
			MenuCorner = 15,
			MenuPadding = 5,
			TabPadding = 10,
			SearchBarHeight = 39,
			TabIcon = 18,
		}

		function ak.New(al, am)
			local an = {
				__type = "Dropdown",
				Title = am.Title or "Dropdown",
				Desc = am.Desc or nil,
				Locked = am.Locked or false,
				Values = am.Values or {},
				MenuWidth = am.MenuWidth or 170,
				Value = am.Value,
				AllowNone = am.AllowNone,
				SearchBarEnabled = am.SearchBarEnabled or false,
				Multi = am.Multi,
				Callback = am.Callback or function() end,

				UIElements = {},

				Opened = false,
				Tabs = {},

				Width = 150,
			}

			if an.Multi and not an.Value then
				an.Value = {}
			end

			local ao = true

			an.DropdownFrame = WindUI.load("CreateElementFrame")({
				Title = an.Title,
				Desc = an.Desc,
				Parent = am.Parent,
				TextOffset = an.Width,
				Hover = false,
				Tab = am.Tab,
				Index = am.Index,
				Window = am.Window,
				ElementTable = an,
			})

			an.UIElements.Dropdown = ag("", nil, an.DropdownFrame.UIElements.Main)

			an.UIElements.Dropdown.Frame.Frame.TextLabel.TextTruncate = "AtEnd"
			an.UIElements.Dropdown.Frame.Frame.TextLabel.Size =
				UDim2.new(1, an.UIElements.Dropdown.Frame.Frame.TextLabel.Size.X.Offset - 18 - 12 - 12, 0, 0)

			an.UIElements.Dropdown.Size = UDim2.new(0, an.Width, 0, 36)
			an.UIElements.Dropdown.Position = UDim2.new(1, 0, 0.5, 0)
			an.UIElements.Dropdown.AnchorPoint = Vector2.new(1, 0.5)

			ae("ImageLabel", {
				Image = ac.Icon("chevrons-up-down")[1],
				ImageRectOffset = ac.Icon("chevrons-up-down")[2].ImageRectPosition,
				ImageRectSize = ac.Icon("chevrons-up-down")[2].ImageRectSize,
				Size = UDim2.new(0, 18, 0, 18),
				Position = UDim2.new(1, -12, 0.5, 0),
				ThemeTag = {
					ImageColor3 = "Icon",
				},
				AnchorPoint = Vector2.new(1, 0.5),
				Parent = an.UIElements.Dropdown.Frame,
			})

			an.DropdownMenu = ai(am, an, ak, ao, "Dropdown")

			an.Display = an.DropdownMenu.Display
			an.Refresh = an.DropdownMenu.Refresh
			an.Select = an.DropdownMenu.Select
			an.Open = an.DropdownMenu.Open
			an.Close = an.DropdownMenu.Close

			function an.Lock(ap)
				an.Locked = true
				ao = false
				return an.DropdownFrame:Lock()
			end
			function an.Unlock(ap)
				an.Locked = false
				ao = true
				return an.DropdownFrame:Unlock()
			end

			if an.Locked then
				an:Lock()
			end

			return an.__type, an
		end

		return ak
	end
	function WindUI.LuaHighlighter()
		local ac = {}
		local ae = {
			lua = {
				"and",
				"break",
				"or",
				"else",
				"elseif",
				"if",
				"then",
				"until",
				"repeat",
				"while",
				"do",
				"for",
				"in",
				"end",
				"local",
				"return",
				"function",
				"export",
			},
			rbx = {
				"game",
				"workspace",
				"script",
				"math",
				"string",
				"table",
				"task",
				"wait",
				"select",
				"next",
				"Enum",
				"tick",
				"assert",
				"shared",
				"loadstring",
				"tonumber",
				"tostring",
				"type",
				"typeof",
				"unpack",
				"Instance",
				"CFrame",
				"Vector3",
				"Vector2",
				"Color3",
				"UDim",
				"UDim2",
				"Ray",
				"BrickColor",
				"OverlapParams",
				"RaycastParams",
				"Axes",
				"Random",
				"Region3",
				"Rect",
				"TweenInfo",
				"collectgarbage",
				"not",
				"utf8",
				"pcall",
				"xpcall",
				"_G",
				"setmetatable",
				"getmetatable",
				"os",
				"pairs",
				"ipairs",
			},
			operators = {
				"#",
				"+",
				"-",
				"*",
				"%",
				"/",
				"^",
				"=",
				"~",
				"=",
				"<",
				">",
			},
		}

		local ag = {
			numbers = Color3.fromHex("#FAB387"),
			boolean = Color3.fromHex("#FAB387"),
			operator = Color3.fromHex("#94E2D5"),
			lua = Color3.fromHex("#CBA6F7"),
			rbx = Color3.fromHex("#F38BA8"),
			str = Color3.fromHex("#A6E3A1"),
			comment = Color3.fromHex("#9399B2"),
			null = Color3.fromHex("#F38BA8"),
			call = Color3.fromHex("#89B4FA"),
			self_call = Color3.fromHex("#89B4FA"),
			local_property = Color3.fromHex("#CBA6F7"),
		}

		local function createKeywordSet(ai)
			local aj = {}
			for ak, al in ipairs(ai) do
				aj[al] = true
			end
			return aj
		end

		local ai = createKeywordSet(ae.lua)
		local aj = createKeywordSet(ae.rbx)
		local ak = createKeywordSet(ae.operators)

		local function getHighlight(al, am)
			local an = al[am]

			if ag[an .. "_color"] then
				return ag[an .. "_color"]
			end

			if tonumber(an) then
				return ag.numbers
			elseif an == "nil" then
				return ag.null
			elseif an:sub(1, 2) == "--" then
				return ag.comment
			elseif ak[an] then
				return ag.operator
			elseif ai[an] then
				return ag.lua
			elseif aj[an] then
				return ag.rbx
			elseif an:sub(1, 1) == '"' or an:sub(1, 1) == "'" then
				return ag.str
			elseif an == "true" or an == "false" then
				return ag.boolean
			end

			if al[am + 1] == "(" then
				if al[am - 1] == ":" then
					return ag.self_call
				end

				return ag.call
			end

			if al[am - 1] == "." then
				if al[am - 2] == "Enum" then
					return ag.rbx
				end

				return ag.local_property
			end
		end

		function ac.run(al)
			local am = {}
			local an = ""

			local ao = false
			local ap = false
			local aq = false

			for ar = 1, #al do
				local as = al:sub(ar, ar)

				if ap then
					if as == "\CreateAcrylicBlur" and not aq then
						table.insert(am, an)
						table.insert(am, as)
						an = ""

						ap = false
					elseif al:sub(ar - 1, ar) == "]]" and aq then
						an = an .. "]"

						table.insert(am, an)
						an = ""

						ap = false
						aq = false
					else
						an = an .. as
					end
				elseif ao then
					if as == ao and al:sub(ar - 1, ar - 1) ~= "\\" or as == "\CreateAcrylicBlur" then
						an = an .. as
						ao = false
					else
						an = an .. as
					end
				else
					if al:sub(ar, ar + 1) == "--" then
						table.insert(am, an)
						an = "-"
						ap = true
						aq = al:sub(ar + 2, ar + 3) == "[["
					elseif as == '"' or as == "'" then
						table.insert(am, an)
						an = as
						ao = as
					elseif ak[as] then
						table.insert(am, an)
						table.insert(am, as)
						an = ""
					elseif as:match("[%w_]") then
						an = an .. as
					else
						table.insert(am, an)
						table.insert(am, as)
						an = ""
					end
				end
			end

			table.insert(am, an)

			local ar = {}

			for as, at in ipairs(am) do
				local av = getHighlight(am, as)

				if av then
					local aw = string.format(
						'<font color = "#%CreateLabel">%CreateLabel</font>',
						av:ToHex(),
						at:gsub("<", "&lt;"):gsub(">", "&gt;")
					)

					table.insert(ar, aw)
				else
					table.insert(ar, at)
				end
			end

			return table.concat(ar)
		end

		return ac
	end
	function WindUI.CreateCodeBlock()
		local ac = {}

		local ae = WindUI.load("WindUI")
		local ag = ae.New
		local ai = ae.Tween

		local aj = WindUI.load("LuaHighlighter")

		function ac.New(ak, al, am, an, ao)
			local ap = {
				Radius = 12,
				Padding = 10,
			}

			local aq = ag("TextLabel", {
				Text = "",
				TextColor3 = Color3.fromHex("#CDD6F4"),
				TextTransparency = 0,
				TextSize = 14,
				TextWrapped = false,
				LineHeight = 1.15,
				RichText = true,
				TextXAlignment = "Left",
				Size = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				AutomaticSize = "XY",
			}, {
				ag("UIPadding", {
					PaddingTop = UDim.new(0, ap.Padding + 3),
					PaddingLeft = UDim.new(0, ap.Padding + 3),
					PaddingRight = UDim.new(0, ap.Padding + 3),
					PaddingBottom = UDim.new(0, ap.Padding + 3),
				}),
			})
			aq.Font = "Code"

			local ar = ag("ScrollingFrame", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				AutomaticCanvasSize = "X",
				ScrollingDirection = "X",
				ElasticBehavior = "Never",
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ScrollBarThickness = 0,
			}, {
				aq,
			})

			local as = ag("TextButton", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -ap.Padding / 2, 0, ap.Padding / 2),
				AnchorPoint = Vector2.new(1, 0),
				Visible = an and true or false,
			}, {
				ae.NewRoundFrame(ap.Radius - 4, "Squircle", {

					ImageColor3 = Color3.fromHex("#ffffff"),
					ImageTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Name = "Button",
				}, {
					ag("UIScale", {
						Scale = 1,
					}),
					ag("ImageLabel", {
						Image = ae.Icon("copy")[1],
						ImageRectSize = ae.Icon("copy")[2].ImageRectSize,
						ImageRectOffset = ae.Icon("copy")[2].ImageRectPosition,
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0, 12, 0, 12),

						ImageColor3 = Color3.fromHex("#ffffff"),
						ImageTransparency = 0.1,
					}),
				}),
			})

			ae.AddSignal(as.MouseEnter, function()
				ai(as.Button, 0.05, { ImageTransparency = 0.95 }):Play()
				ai(as.Button.UIScale, 0.05, { Scale = 0.9 }):Play()
			end)
			ae.AddSignal(as.InputEnded, function()
				ai(as.Button, 0.08, { ImageTransparency = 1 }):Play()
				ai(as.Button.UIScale, 0.08, { Scale = 1 }):Play()
			end)

			local at = ae.NewRoundFrame(ap.Radius, "Squircle", {

				ImageColor3 = Color3.fromHex("#212121"),
				ImageTransparency = 0.035,
				Size = UDim2.new(1, 0, 0, 20 + (ap.Padding * 2)),
				AutomaticSize = "Y",
				Parent = am,
			}, {
				ae.NewRoundFrame(ap.Radius, "SquircleOutline", {
					Size = UDim2.new(1, 0, 1, 0),

					ImageColor3 = Color3.fromHex("#ffffff"),
					ImageTransparency = 0.955,
				}),
				ag("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
				}, {
					ae.NewRoundFrame(ap.Radius, "Squircle-TL-TR", {

						ImageColor3 = Color3.fromHex("#ffffff"),
						ImageTransparency = 0.96,
						Size = UDim2.new(1, 0, 0, 20 + (ap.Padding * 2)),
						Visible = al and true or false,
					}, {
						ag("ImageLabel", {
							Size = UDim2.new(0, 18, 0, 18),
							BackgroundTransparency = 1,
							Image = "rbxassetid://132464694294269",

							ImageColor3 = Color3.fromHex("#ffffff"),
							ImageTransparency = 0.2,
						}),
						ag("TextLabel", {
							Text = al,

							TextColor3 = Color3.fromHex("#ffffff"),
							TextTransparency = 0.2,
							TextSize = 16,
							AutomaticSize = "Y",
							FontFace = Font.new(ae.Font, Enum.FontWeight.Medium),
							TextXAlignment = "Left",
							BackgroundTransparency = 1,
							TextTruncate = "AtEnd",
							Size = UDim2.new(1, as and -20 - (ap.Padding * 2), 0, 0),
						}),
						ag("UIPadding", {

							PaddingLeft = UDim.new(0, ap.Padding + 3),
							PaddingRight = UDim.new(0, ap.Padding + 3),
						}),
						ag("UIListLayout", {
							Padding = UDim.new(0, ap.Padding),
							FillDirection = "Horizontal",
							VerticalAlignment = "Center",
						}),
					}),
					ar,
					ag("UIListLayout", {
						Padding = UDim.new(0, 0),
						FillDirection = "Vertical",
					}),
				}),
				as,
			})

			ap.CodeFrame = at

			ae.AddSignal(aq:GetPropertyChangedSignal("TextBounds"), function()
				ar.Size = UDim2.new(1, 0, 0, (aq.TextBounds.Y / (ao or 1)) + ((ap.Padding + 3) * 2))
			end)

			function ap.Set(av)
				aq.Text = aj.run(av)
			end

			function ap.Destroy()
				at:Destroy()
				ap = nil
			end

			ap.Set(ak)

			ae.AddSignal(as.MouseButton1Click, function()
				if an then
					an()
					local av = ae.Icon("check")
					as.Button.ImageLabel.Image = av[1]
					as.Button.ImageLabel.ImageRectSize = av[2].ImageRectSize
					as.Button.ImageLabel.ImageRectOffset = av[2].ImageRectPosition

					task.wait(1)
					local aw = ae.Icon("copy")
					as.Button.ImageLabel.Image = aw[1]
					as.Button.ImageLabel.ImageRectSize = aw[2].ImageRectSize
					as.Button.ImageLabel.ImageRectOffset = aw[2].ImageRectPosition
				end
			end)
			return ap
		end

		return ac
	end
	function WindUI.CreateCode()
		local ac = WindUI.load("WindUI")
		local ae = ac.New

		local ag = WindUI.load("CreateCodeBlock")

		local ai = {}

		function ai.New(aj, ak)
			local al = {
				__type = "Code",
				Title = ak.Title,
				Code = ak.Code,
				OnCopy = ak.OnCopy,
			}

			local am = not al.Locked

			local an = ag.New(al.Code, al.Title, ak.Parent, function()
				if am then
					local an = al.Title or "code"
					local ao, ap = pcall(function()
						toclipboard(al.Code)

						if al.OnCopy then
							al.OnCopy()
						end
					end)
					if not ao then
						ak.WindUI:Notify({
							Title = "Error",
							Content = "The " .. an .. " is not copied. Error: " .. ap,
							Icon = "CreateTooltip",
							Duration = 5,
						})
					end
				end
			end, ak.WindUI.UIScale, al)

			function al.SetCode(ao, ap)
				an.Set(ap)
			end

			function al.Destroy(ao)
				an.Destroy()
				al = nil
			end

			al.ElementFrame = an.CodeFrame

			return al.__type, al
		end

		return ai
	end
	function WindUI.CreateColorpicker()
		local ac = WindUI.load("WindUI")
		local ae = ac.New
		local ag = ac.Tween

		local ai = game:GetService("UserInputService")
		game:GetService("TouchInputService")
		local aj = game:GetService("RunService")
		local ak = game:GetService("Players")

		local al = aj.RenderStepped
		local am = ak.LocalPlayer
		local an = am:GetMouse()

		local ao = WindUI.load("CreateButton").New
		local ap = WindUI.load("CreateInput").New

		local aq = {
			UICorner = 8,
			UIPadding = 8,
		}

		function aq.Colorpicker(ar, as, at, av)
			local aw = {
				__type = "Colorpicker",
				Title = as.Title,
				Desc = as.Desc,
				Default = as.Default,
				Callback = as.Callback,
				Transparency = as.Transparency,
				UIElements = as.UIElements,

				TextPadding = 10,
			}

			function aw.SetHSVFromRGB(ax, ay)
				local az, aA, aB = Color3.toHSV(ay)
				aw.Hue = az
				aw.Sat = aA
				aw.Vib = aB
			end

			aw:SetHSVFromRGB(aw.Default)

			local ax = WindUI.load("CreateDialog").Init(at)
			local ay = ax.Create()

			aw.ColorpickerFrame = ay

			ay.UIElements.Main.Size = UDim2.new(1, 0, 0, 0)

			local az, aA, aB = aw.Hue, aw.Sat, aw.Vib

			aw.UIElements.Title = ae("TextLabel", {
				Text = aw.Title,
				TextSize = 20,
				FontFace = Font.new(ac.Font, Enum.FontWeight.SemiBold),
				TextXAlignment = "Left",
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = "Y",
				ThemeTag = {
					TextColor3 = "Text",
				},
				BackgroundTransparency = 1,
				Parent = ay.UIElements.Main,
			}, {
				ae("UIPadding", {
					PaddingTop = UDim.new(0, aw.TextPadding / 2),
					PaddingLeft = UDim.new(0, aw.TextPadding / 2),
					PaddingRight = UDim.new(0, aw.TextPadding / 2),
					PaddingBottom = UDim.new(0, aw.TextPadding / 2),
				}),
			})

			local aC = ae("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0, 0),
				Parent = HueDragHolder,
				BackgroundColor3 = aw.Default,
			}, {
				ae("UIStroke", {
					Thickness = 2,
					Transparency = 0.1,
					ThemeTag = {
						Color = "Text",
					},
				}),
				ae("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
			})

			aw.UIElements.SatVibMap = ae("ImageLabel", {
				Size = UDim2.fromOffset(160, 158),
				Position = UDim2.fromOffset(0, 40 + aw.TextPadding),
				Image = "rbxassetid://4155801252",
				BackgroundColor3 = Color3.fromHSV(az, 1, 1),
				BackgroundTransparency = 0,
				Parent = ay.UIElements.Main,
			}, {
				ae("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				ac.NewRoundFrame(8, "SquircleOutline", {
					ThemeTag = {
						ImageColor3 = "Outline",
					},
					Size = UDim2.new(1, 0, 1, 0),
					ImageTransparency = 0.85,
					ZIndex = 99999,
				}, {
					ae("UIGradient", {
						Rotation = 45,
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 255, 255)),
							ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
							ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 255, 255)),
						}),
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0.0, 0.1),
							NumberSequenceKeypoint.new(0.5, 1),
							NumberSequenceKeypoint.new(1.0, 0.1),
						}),
					}),
				}),

				aC,
			})

			aw.UIElements.Inputs = ae("Frame", {
				AutomaticSize = "XY",
				Size = UDim2.new(0, 0, 0, 0),
				Position = UDim2.fromOffset(aw.Transparency and 240 or 210, 40 + aw.TextPadding),
				BackgroundTransparency = 1,
				Parent = ay.UIElements.Main,
			}, {
				ae("UIListLayout", {
					Padding = UDim.new(0, 4),
					FillDirection = "Vertical",
				}),
			})

			local aD = ae("Frame", {
				BackgroundColor3 = aw.Default,
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = aw.Transparency,
			}, {
				ae("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			})

			ae("ImageLabel", {
				Image = "http://www.roblox.com/asset/?id=14204231522",
				ImageTransparency = 0.45,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.fromOffset(40, 40),
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(85, 208 + aw.TextPadding),
				Size = UDim2.fromOffset(75, 24),
				Parent = ay.UIElements.Main,
			}, {
				ae("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				ac.NewRoundFrame(8, "SquircleOutline", {
					ThemeTag = {
						ImageColor3 = "Outline",
					},
					Size = UDim2.new(1, 0, 1, 0),
					ImageTransparency = 0.85,
					ZIndex = 99999,
				}, {
					ae("UIGradient", {
						Rotation = 60,
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 255, 255)),
							ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
							ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 255, 255)),
						}),
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0.0, 0.1),
							NumberSequenceKeypoint.new(0.5, 1),
							NumberSequenceKeypoint.new(1.0, 0.1),
						}),
					}),
				}),

				aD,
			})

			local aE = ae("Frame", {
				BackgroundColor3 = aw.Default,
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0,
				ZIndex = 9,
			}, {
				ae("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			})

			ae("ImageLabel", {
				Image = "http://www.roblox.com/asset/?id=14204231522",
				ImageTransparency = 0.45,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.fromOffset(40, 40),
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(0, 208 + aw.TextPadding),
				Size = UDim2.fromOffset(75, 24),
				Parent = ay.UIElements.Main,
			}, {
				ae("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),

				ac.NewRoundFrame(8, "SquircleOutline", {
					ThemeTag = {
						ImageColor3 = "Outline",
					},
					Size = UDim2.new(1, 0, 1, 0),
					ImageTransparency = 0.85,
					ZIndex = 99999,
				}, {
					ae("UIGradient", {
						Rotation = 60,
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 255, 255)),
							ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
							ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 255, 255)),
						}),
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0.0, 0.1),
							NumberSequenceKeypoint.new(0.5, 1),
							NumberSequenceKeypoint.new(1.0, 0.1),
						}),
					}),
				}),
				aE,
			})

			local CreateLocalization = {}

			for CreatePandaDev = 0, 1, 0.1 do
				table.insert(CreateLocalization, ColorSequenceKeypoint.new(CreatePandaDev, Color3.fromHSV(CreatePandaDev, 1, 1)))
			end

			local CreatePandaDev = ae("UIGradient", {
				Color = ColorSequence.new(CreateLocalization),
				Rotation = 90,
			})

			local LoadKeyServices = ae("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
			})

			local LoadPackageJson = ae("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0, 0),
				Parent = LoadKeyServices,

				BackgroundColor3 = aw.Default,
			}, {
				ae("UIStroke", {
					Thickness = 2,
					Transparency = 0.1,
					ThemeTag = {
						Color = "Text",
					},
				}),
				ae("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
			})

			local CreateButton = ae("Frame", {
				Size = UDim2.fromOffset(6, 192),
				Position = UDim2.fromOffset(180, 40 + aw.TextPadding),
				Parent = ay.UIElements.Main,
			}, {
				ae("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
				CreatePandaDev,
				LoadKeyServices,
			})

			function CreateNewInput(CreateInput, CreateKeySystem)
				local UtilViewport = ap(CreateInput, nil, aw.UIElements.Inputs)

				ae("TextLabel", {
					BackgroundTransparency = 1,
					TextTransparency = 0.4,
					TextSize = 17,
					FontFace = Font.new(ac.Font, Enum.FontWeight.Regular),
					AutomaticSize = "XY",
					ThemeTag = {
						TextColor3 = "Placeholder",
					},
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, -12, 0.5, 0),
					Parent = UtilViewport.Frame,
					Text = CreateInput,
				})

				ae("UIScale", {
					Parent = UtilViewport,
					Scale = 0.85,
				})

				UtilViewport.Frame.Frame.TextBox.Text = CreateKeySystem
				UtilViewport.Size = UDim2.new(0, 150, 0, 42)

				return UtilViewport
			end

			local function ToRGB(CreateInput)
				return {
					ElementLoader = math.floor(CreateInput.ElementLoader * 255),
					CreateInputEx = math.floor(CreateInput.CreateInputEx * 255),
					CreateToggle = math.floor(CreateInput.CreateToggle * 255),
				}
			end

			local CreateInput = CreateNewInput("Hex", "#" .. aw.Default:ToHex())

			local CreateKeySystem = CreateNewInput("Red", ToRGB(aw.Default).ElementLoader)
			local UtilViewport = CreateNewInput("Green", ToRGB(aw.Default).CreateInputEx)
			local AcrylicManager = CreateNewInput("Blue", ToRGB(aw.Default).CreateToggle)
			local LoadAllThemes
			if aw.Transparency then
				LoadAllThemes = CreateNewInput("Alpha", ((1 - aw.Transparency) * 100) .. "%")
			end

			local CreateTag = ae("Frame", {
				Size = UDim2.new(1, 0, 0, 40),
				AutomaticSize = "Y",
				Position = UDim2.new(0, 0, 0, 254 + aw.TextPadding),
				BackgroundTransparency = 1,
				Parent = ay.UIElements.Main,
				LayoutOrder = 4,
			}, {
				ae("UIListLayout", {
					Padding = UDim.new(0, 6),
					FillDirection = "Horizontal",
					HorizontalAlignment = "Right",
				}),
			})

			local ConfigManager = {
				{
					Title = "Cancel",
					Variant = "Secondary",
					Callback = function() end,
				},
				{
					Title = "Apply",
					Icon = "chevron-right",
					Variant = "Primary",
					Callback = function()
						av(Color3.fromHSV(aw.Hue, aw.Sat, aw.Vib), aw.Transparency)
					end,
				},
			}

			for CreateButtonEx, CreateToggle in next, ConfigManager do
				local CreateCheckbox = ao(CreateToggle.Title, CreateToggle.Icon, CreateToggle.Callback, CreateToggle.Variant, CreateTag, ay, false)
				CreateCheckbox.Size = UDim2.new(0.5, -3, 0, 40)
				CreateCheckbox.AutomaticSize = "None"
			end

			local CreateCheckbox, CreateKeybind, CreateInputEx
			if aw.Transparency then
				local CreateDropdownMenu = ae("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.fromOffset(0, 0),
					BackgroundTransparency = 1,
				})

				CreateKeybind = ae("ImageLabel", {
					Size = UDim2.new(0, 14, 0, 14),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0, 0),
					ThemeTag = {
						BackgroundColor3 = "Text",
					},
					Parent = CreateDropdownMenu,
				}, {
					ae("UIStroke", {
						Thickness = 2,
						Transparency = 0.1,
						ThemeTag = {
							Color = "Text",
						},
					}),
					ae("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
				})

				CreateInputEx = ae("Frame", {
					Size = UDim2.fromScale(1, 1),
				}, {
					ae("UIGradient", {
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 0),
							NumberSequenceKeypoint.new(1, 1),
						}),
						Rotation = 270,
					}),
					ae("UICorner", {
						CornerRadius = UDim.new(0, 6),
					}),
				})

				CreateCheckbox = ae("Frame", {
					Size = UDim2.fromOffset(6, 192),
					Position = UDim2.fromOffset(210, 40 + aw.TextPadding),
					Parent = ay.UIElements.Main,
					BackgroundTransparency = 1,
				}, {
					ae("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
					ae("ImageLabel", {
						Image = "rbxassetid://14204231522",
						ImageTransparency = 0.45,
						ScaleType = Enum.ScaleType.Tile,
						TileSize = UDim2.fromOffset(40, 40),
						BackgroundTransparency = 1,
						Size = UDim2.fromScale(1, 1),
					}, {
						ae("UICorner", {
							CornerRadius = UDim.new(1, 0),
						}),
					}),
					CreateInputEx,
					CreateDropdownMenu,
				})
			end

			function aw.Round(CreateDropdownMenu, LuaHighlighter, CreateCode)
				if CreateCode == 0 then
					return math.floor(LuaHighlighter)
				end
				LuaHighlighter = tostring(LuaHighlighter)
				return LuaHighlighter:find("%.") and tonumber(LuaHighlighter:sub(1, LuaHighlighter:find("%.") + CreateCode)) or LuaHighlighter
			end

			function aw.Update(CreateDropdownMenu, LuaHighlighter, CreateCode)
				if LuaHighlighter then
					az, aA, aB = Color3.toHSV(LuaHighlighter)
				else
					az, aA, aB = aw.Hue, aw.Sat, aw.Vib
				end

				aw.UIElements.SatVibMap.BackgroundColor3 = Color3.fromHSV(az, 1, 1)
				aC.Position = UDim2.new(aA, 0, 1 - aB, 0)
				aC.BackgroundColor3 = Color3.fromHSV(az, aA, aB)
				aE.BackgroundColor3 = Color3.fromHSV(az, aA, aB)
				LoadPackageJson.BackgroundColor3 = Color3.fromHSV(az, 1, 1)
				LoadPackageJson.Position = UDim2.new(0.5, 0, az, 0)

				CreateInput.Frame.Frame.TextBox.Text = "#" .. Color3.fromHSV(az, aA, aB):ToHex()
				CreateKeySystem.Frame.Frame.TextBox.Text = ToRGB(Color3.fromHSV(az, aA, aB)).ElementLoader
				UtilViewport.Frame.Frame.TextBox.Text = ToRGB(Color3.fromHSV(az, aA, aB)).CreateInputEx
				AcrylicManager.Frame.Frame.TextBox.Text = ToRGB(Color3.fromHSV(az, aA, aB)).CreateToggle

				if CreateCode or aw.Transparency then
					aE.BackgroundTransparency = aw.Transparency or CreateCode
					CreateInputEx.BackgroundColor3 = Color3.fromHSV(az, aA, aB)
					CreateKeybind.BackgroundColor3 = Color3.fromHSV(az, aA, aB)
					CreateKeybind.BackgroundTransparency = aw.Transparency or CreateCode
					CreateKeybind.Position = UDim2.new(0.5, 0, 1 - aw.Transparency or CreateCode, 0)
					LoadAllThemes.Frame.Frame.TextBox.Text = aw:Round((1 - aw.Transparency or CreateCode) * 100, 0) .. "%"
				end
			end

			aw:Update(aw.Default, aw.Transparency)

			local function GetRGB()
				local CreateDropdownMenu = Color3.fromHSV(aw.Hue, aw.Sat, aw.Vib)
				return { ElementLoader = math.floor(CreateDropdownMenu.LoadAllThemes * 255), CreateInputEx = math.floor(CreateDropdownMenu.LoadKeyServices * 255), CreateToggle = math.floor(CreateDropdownMenu.CreateLocalization * 255) }
			end

			local function clamp(CreateDropdownMenu, LuaHighlighter, CreateCode)
				return math.clamp(tonumber(CreateDropdownMenu) or 0, LuaHighlighter, CreateCode)
			end

			ac.AddSignal(CreateInput.Frame.Frame.TextBox.FocusLost, function(CreateDropdownMenu)
				if CreateDropdownMenu then
					local LuaHighlighter = CreateInput.Frame.Frame.TextBox.Text:gsub("#", "")
					local CreateCode, CreateColorpicker = pcall(Color3.fromHex, LuaHighlighter)
					if CreateCode and typeof(CreateColorpicker) == "Color3" then
						aw.Hue, aw.Sat, aw.Vib = Color3.toHSV(CreateColorpicker)
						aw:Update()
						aw.Default = CreateColorpicker
					end
				end
			end)

			local function updateColorFromInput(CreateDropdownMenu, LuaHighlighter)
				ac.AddSignal(CreateDropdownMenu.Frame.Frame.TextBox.FocusLost, function(CreateCode)
					if CreateCode then
						local CreateColorpicker = CreateDropdownMenu.Frame.Frame.TextBox
						local CreateSection = GetRGB()
						local CreateDivider = clamp(CreateColorpicker.Text, 0, 255)
						CreateColorpicker.Text = tostring(CreateDivider)

						CreateSection[LuaHighlighter] = CreateDivider
						local CreateSpace = Color3.fromRGB(CreateSection.ElementLoader, CreateSection.CreateInputEx, CreateSection.CreateToggle)
						aw.Hue, aw.Sat, aw.Vib = Color3.toHSV(CreateSpace)
						aw:Update()
					end
				end)
			end

			updateColorFromInput(CreateKeySystem, "ElementLoader")
			updateColorFromInput(UtilViewport, "CreateInputEx")
			updateColorFromInput(AcrylicManager, "CreateToggle")

			if aw.Transparency then
				ac.AddSignal(LoadAllThemes.Frame.Frame.TextBox.FocusLost, function(CreateDropdownMenu)
					if CreateDropdownMenu then
						local LuaHighlighter = LoadAllThemes.Frame.Frame.TextBox
						local CreateCode = clamp(LuaHighlighter.Text, 0, 100)
						LuaHighlighter.Text = tostring(CreateCode)

						aw.Transparency = 1 - CreateCode * 0.01
						aw:Update(nil, aw.Transparency)
					end
				end)
			end

			local CreateDropdownMenu = aw.UIElements.SatVibMap
			ac.AddSignal(CreateDropdownMenu.InputBegan, function(LuaHighlighter)
				if
					LuaHighlighter.UserInputType == Enum.UserInputType.MouseButton1
					or LuaHighlighter.UserInputType == Enum.UserInputType.Touch
				then
					while ai:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						local CreateCode = CreateDropdownMenu.AbsolutePosition.X
						local CreateColorpicker = CreateCode + CreateDropdownMenu.AbsoluteSize.X
						local CreateSection = math.clamp(an.X, CreateCode, CreateColorpicker)

						local CreateDivider = CreateDropdownMenu.AbsolutePosition.Y
						local CreateSpace = CreateDivider + CreateDropdownMenu.AbsoluteSize.Y
						local CreateImage = math.clamp(an.Y, CreateDivider, CreateSpace)

						aw.Sat = (CreateSection - CreateCode) / (CreateColorpicker - CreateCode)
						aw.Vib = 1 - ((CreateImage - CreateDivider) / (CreateSpace - CreateDivider))
						aw:Update()

						al:Wait()
					end
				end
			end)

			ac.AddSignal(CreateButton.InputBegan, function(LuaHighlighter)
				if
					LuaHighlighter.UserInputType == Enum.UserInputType.MouseButton1
					or LuaHighlighter.UserInputType == Enum.UserInputType.Touch
				then
					while ai:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						local CreateCode = CreateButton.AbsolutePosition.Y
						local CreateColorpicker = CreateCode + CreateButton.AbsoluteSize.Y
						local CreateSection = math.clamp(an.Y, CreateCode, CreateColorpicker)

						aw.Hue = ((CreateSection - CreateCode) / (CreateColorpicker - CreateCode))
						aw:Update()

						al:Wait()
					end
				end
			end)

			if aw.Transparency then
				ac.AddSignal(CreateCheckbox.InputBegan, function(LuaHighlighter)
					if
						LuaHighlighter.UserInputType == Enum.UserInputType.MouseButton1
						or LuaHighlighter.UserInputType == Enum.UserInputType.Touch
					then
						while ai:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							local CreateCode = CreateCheckbox.AbsolutePosition.Y
							local CreateColorpicker = CreateCode + CreateCheckbox.AbsoluteSize.Y
							local CreateSection = math.clamp(an.Y, CreateCode, CreateColorpicker)

							aw.Transparency = 1 - ((CreateSection - CreateCode) / (CreateColorpicker - CreateCode))
							aw:Update()

							al:Wait()
						end
					end
				end)
			end

			return aw
		end

		function aq.New(ar, as)
			local at = {
				__type = "Colorpicker",
				Title = as.Title or "Colorpicker",
				Desc = as.Desc or nil,
				Locked = as.Locked or false,
				Default = as.Default or Color3.new(1, 1, 1),
				Callback = as.Callback or function() end,

				UIScale = as.UIScale,
				Transparency = as.Transparency,
				UIElements = {},
			}

			local av = true

			if as.Window.NewElements then
				aq.UICorner = 14
			end

			at.ColorpickerFrame = WindUI.load("CreateElementFrame")({
				Title = at.Title,
				Desc = at.Desc,
				Parent = as.Parent,
				TextOffset = 40,
				Hover = false,
				Tab = as.Tab,
				Index = as.Index,
				Window = as.Window,
				ElementTable = at,
			})

			at.UIElements.Colorpicker = ac.NewRoundFrame(aq.UICorner, "Squircle", {
				ImageTransparency = 0,
				Active = true,
				ImageColor3 = at.Default,
				Parent = at.ColorpickerFrame.UIElements.Main,
				Size = UDim2.new(0, 30, 0, 30),
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
				ZIndex = 2,
			}, nil, true)

			function at.Lock(aw)
				at.Locked = true
				av = false
				return at.ColorpickerFrame:Lock()
			end
			function at.Unlock(aw)
				at.Locked = false
				av = true
				return at.ColorpickerFrame:Unlock()
			end

			if at.Locked then
				at:Lock()
			end

			function at.Update(aw, ax, ay)
				at.UIElements.Colorpicker.ImageTransparency = ay or 0
				at.UIElements.Colorpicker.ImageColor3 = ax
				at.Default = ax
				if ay then
					at.Transparency = ay
				end
			end

			function at.Set(aw, ax, ay)
				return at:Update(ax, ay)
			end

			ac.AddSignal(at.UIElements.Colorpicker.MouseButton1Click, function()
				if av then
					aq:Colorpicker(at, as.Window, function(aw, ax)
						at:Update(aw, ax)
						at.Default = aw
						at.Transparency = ax
						ac.SafeCallback(at.Callback, aw, ax)
					end).ColorpickerFrame
						:Open()
				end
			end)

			return at.__type, at
		end

		return aq
	end
	function WindUI.CreateSection()
		local ac = WindUI.load("WindUI")
		local ae = ac.New
		local ag = ac.Tween

		local ai = {}

		function ai.New(aj, ak)
			local al = {
				__type = "Section",
				Title = ak.Title or "Section",
				Icon = ak.Icon,
				TextXAlignment = ak.TextXAlignment or "Left",
				TextSize = ak.TextSize or 19,
				Box = ak.Box or false,
				FontWeight = ak.FontWeight or Enum.FontWeight.SemiBold,
				TextTransparency = ak.TextTransparency or 0.05,
				Opened = ak.Opened or false,
				UIElements = {},

				HeaderSize = 42,
				IconSize = 20,
				Padding = 10,

				Elements = {},

				Expandable = false,
			}

			local am

			function al.SetIcon(an, ao)
				al.Icon = ao or nil
				if am then
					am:Destroy()
				end
				if ao then
					am = ac.Image(ao, ao .. ":" .. al.Title, 0, ak.Window.Folder, al.__type, true)
					am.Size = UDim2.new(0, al.IconSize, 0, al.IconSize)
				end
			end

			local an = ae("Frame", {
				Size = UDim2.new(0, al.IconSize, 0, al.IconSize),
				BackgroundTransparency = 1,
				Visible = false,
			}, {
				ae("ImageLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = ac.Icon("chevron-down")[1],
					ImageRectSize = ac.Icon("chevron-down")[2].ImageRectSize,
					ImageRectOffset = ac.Icon("chevron-down")[2].ImageRectPosition,
					ThemeTag = {
						ImageColor3 = "Icon",
					},
					ImageTransparency = 0.7,
				}),
			})

			if al.Icon then
				al:SetIcon(al.Icon)
			end

			local ao = ae("TextLabel", {
				BackgroundTransparency = 1,
				TextXAlignment = al.TextXAlignment,
				AutomaticSize = "Y",
				TextSize = al.TextSize,
				TextTransparency = al.TextTransparency,
				ThemeTag = {
					TextColor3 = "Text",
				},
				FontFace = Font.new(ac.Font, al.FontWeight),

				Text = al.Title,
				Size = UDim2.new(1, 0, 0, 0),
				TextWrapped = true,
			})

			local function UpdateTitleSize()
				local ap = 0
				if am then
					ap = ap - (al.IconSize + 8)
				end
				if an.Visible then
					ap = ap - (al.IconSize + 8)
				end
				ao.Size = UDim2.new(1, ap, 0, 0)
			end

			local ap = ac.NewRoundFrame(ak.Window.ElementConfig.UICorner, "Squircle", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				Parent = ak.Parent,
				ClipsDescendants = true,
				AutomaticSize = "Y",
				ImageTransparency = al.Box and 0.93 or 1,
				ThemeTag = {
					ImageColor3 = "Text",
				},
			}, {
				ae("TextButton", {
					Size = UDim2.new(1, 0, 0, Expandable and 0 or al.HeaderSize),
					BackgroundTransparency = 1,
					AutomaticSize = Expandable and nil or "Y",
					Text = "",
					Name = "Top",
				}, {
					al.Box and ae("UIPadding", {
						PaddingLeft = UDim.new(0, ak.Window.ElementConfig.UIPadding),
						PaddingRight = UDim.new(0, ak.Window.ElementConfig.UIPadding),
					}) or nil,
					am,
					ao,
					ae("UIListLayout", {
						Padding = UDim.new(0, 8),
						FillDirection = "Horizontal",
						VerticalAlignment = "Center",
						HorizontalAlignment = "Left",
					}),
					an,
				}),
				ae("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					Name = "Content",
					Visible = false,
					Position = UDim2.new(0, 0, 0, al.HeaderSize),
				}, {
					al.Box and ae("UIPadding", {
						PaddingLeft = UDim.new(0, ak.Window.ElementConfig.UIPadding),
						PaddingRight = UDim.new(0, ak.Window.ElementConfig.UIPadding),
						PaddingBottom = UDim.new(0, ak.Window.ElementConfig.UIPadding),
					}) or nil,
					ae("UIListLayout", {
						FillDirection = "Vertical",
						Padding = UDim.new(0, ak.Tab.Gap),
						VerticalAlignment = "Top",
					}),
				}),
			})

			local aq = ak.ElementsModule

			aq.Load(al, ap.Content, aq.Elements, ak.Window, ak.WindUI, function()
				if not al.Expandable then
					al.Expandable = true
					an.Visible = true
					UpdateTitleSize()
				end
			end, aq, ak.UIScale, ak.Tab)

			UpdateTitleSize()

			function al.SetTitle(ar, as)
				ao.Text = as
			end

			function al.Destroy(ar)
				for as, at in next, al.Elements do
					at:Destroy()
				end

				ap:Destroy()
			end

			function al.Open(ar)
				if al.Expandable then
					al.Opened = true
					ag(ap, 0.33, {
						Size = UDim2.new(1, 0, 0, al.HeaderSize + (ap.Content.AbsoluteSize.Y / ak.UIScale)),
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()

					ag(an.ImageLabel, 0.1, { Rotation = 180 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				end
			end
			function al.Close(ar)
				if al.Expandable then
					al.Opened = false
					ag(ap, 0.26, {
						Size = UDim2.new(1, 0, 0, al.HeaderSize),
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					ag(an.ImageLabel, 0.1, { Rotation = 0 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				end
			end

			ac.AddSignal(ap.Top.MouseButton1Click, function()
				if al.Expandable then
					if al.Opened then
						al:Close()
					else
						al:Open()
					end
				end
			end)

			task.spawn(function()
				task.wait()
				if al.Expandable then
					ap.Size = UDim2.new(1, 0, 0, al.HeaderSize)
					ap.AutomaticSize = "None"
					ap.Top.Size = UDim2.new(1, 0, 0, al.HeaderSize)
					ap.Top.AutomaticSize = "None"
					ap.Content.Visible = true
				end
				if al.Opened then
					al:Open()
				end
			end)

			return al.__type, al
		end

		return ai
	end
	function WindUI.CreateDivider()
		local ac = WindUI.load("WindUI")
		local ae = ac.New

		local ag = {}

		function ag.New(ai, aj)
			local ak = ae("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 0.9,
				ThemeTag = {
					BackgroundColor3 = "Text",
				},
			})
			local al = ae("Frame", {
				Parent = aj.Parent,
				Size = UDim2.new(1, -7, 0, 7),
				BackgroundTransparency = 1,
			}, {
				ak,
			})

			return "Divider", { __type = "Divider", ElementFrame = al }
		end

		return ag
	end
	function WindUI.CreateSpace()
		local ac = WindUI.load("WindUI")
		local ae = ac.New

		local ag = {}

		function ag.New(ai, aj)
			local ak = ae("Frame", {
				Parent = aj.Parent,
				Size = UDim2.new(1, -7, 0, 7 * (aj.Columns or 1)),
				BackgroundTransparency = 1,
			})

			return "Space", { __type = "Space", ElementFrame = ak }
		end

		return ag
	end
	function WindUI.CreateImage()
		local ac = WindUI.load("WindUI")
		local ae = ac.New

		local ag = {}

		local function ParseAspectRatio(ai)
			if type(ai) == "string" then
				local aj, ak = ai:match("(%CreatePlatoboost+):(%CreatePlatoboost+)")
				if aj and ak then
					return tonumber(aj) / tonumber(ak)
				end
			elseif type(ai) == "number" then
				return ai
			end
			return nil
		end

		function ag.New(ai, aj)
			local ak = {
				__type = "Image",
				Image = aj.Image or "",
				AspectRatio = aj.AspectRatio or "16:9",
				Radius = aj.Radius or aj.Window.ElementConfig.UICorner,
			}
			local al = ac.Image(ak.Image, ak.Image, ak.Radius, aj.Window.Folder, "Image", false)
			al.Parent = aj.Parent
			al.Size = UDim2.new(1, 0, 0, 0)
			al.BackgroundTransparency = 1

			local am = ParseAspectRatio(aj.AspectRatio)
			local an

			if am then
				an = ae("UIAspectRatioConstraint", {
					Parent = al,
					AspectRatio = am,
					AspectType = "ScaleWithParentSize",
					DominantAxis = "Width",
				})
			end

			function ak.Destroy(ao)
				al:Destroy()
			end

			return ak.__type, ak
		end

		return ag
	end
	function WindUI.ElementLoader()
		return {
			Elements = {
				Paragraph = WindUI.load("CreateParagraph"),
				Button = WindUI.load("CreateButtonEx"),
				Toggle = WindUI.load("CreateToggleEx"),
				Slider = WindUI.load("CreateSlider"),
				Keybind = WindUI.load("CreateKeybind"),
				Input = WindUI.load("CreateInputEx"),
				Dropdown = WindUI.load("CreateDropdown"),
				Code = WindUI.load("CreateCode"),
				Colorpicker = WindUI.load("CreateColorpicker"),
				Section = WindUI.load("CreateSection"),
				Divider = WindUI.load("CreateDivider"),
				Space = WindUI.load("CreateSpace"),
				Image = WindUI.load("CreateImage"),
			},
			Load = function(ac, ae, ag, ai, aj, ak, al, am, an)
				for ao, ap in next, ag do
					ac[ao] = function(aq, ar)
						ar = ar or {}
						ar.Tab = an or ac
						ar.ParentTable = ac
						ar.Index = #ac.Elements + 1
						ar.GlobalIndex = #ai.AllElements + 1
						ar.Parent = ae
						ar.Window = ai
						ar.WindUI = aj
						ar.UIScale = am
						ar.ElementsModule = al
						local 
as, at = ap:New(ar)

						local av
						for aw, ax in pairs(at) do
							if typeof(ax) == "table" and aw:match("Frame$") then
								av = ax
								break
							end
						end

						if av then
							at.ElementFrame = av.UIElements.Main
							function at.SetTitle(ay, az)
								av:SetTitle(az)
							end
							function at.SetDesc(ay, az)
								av:SetDesc(az)
							end
							function at.Highlight(ay)
								av:Highlight()
							end
							function at.Destroy(ay)
								table.remove(ai.AllElements, ar.GlobalIndex)
								table.remove(ac.Elements, ar.Index)
								table.remove(an.Elements, ar.Index)
								ac:UpdateAllElementShapes(ac)

								av:Destroy()
							end
						end

						ai.AllElements[ar.Index] = at
						ac.Elements[ar.Index] = at
						if an then
							an.Elements[ar.Index] = at
						end

						if ai.NewElements then
							ac:UpdateAllElementShapes(ac)
						end

						if ak then
							ak()
						end
						return at
					end
				end
				function ac.UpdateAllElementShapes(aq, ar)
					for as, at in next, ar.Elements do
						local av
						for aw, ax in pairs(at) do
							if typeof(ax) == "table" and aw:match("Frame$") then
								av = ax
								break
							end
						end

						if av then
							av.Index = as
							if av.UpdateShape then
								av.UpdateShape(ar)
							end
						end
					end
				end
			end,
		}
	end
	function WindUI.TabManager()
		game:GetService("UserInputService")
		local ac = game.Players.LocalPlayer:GetMouse()

		local ae = WindUI.load("WindUI")
		local ag = ae.New
		local ai = ae.Tween

		local aj = WindUI.load("CreateTooltip").New
		local ak = WindUI.load("CreateScrollBar").New

		local al = {

			Tabs = {},
			Containers = {},
			SelectedTab = nil,
			TabCount = 0,
			ToolTipParent = nil,
			TabHighlight = nil,

			OnChangeFunc = function(al) end,
		}

		function al.Init(am, an, ao, ap)
			Window = am
			WindUI = an
			al.ToolTipParent = ao
			al.TabHighlight = ap
			return al
		end

		function al.New(am, an)
			local ao = {
				__type = "Tab",
				Title = am.Title or "Tab",
				Desc = am.Desc,
				Icon = am.Icon,
				IconThemed = am.IconThemed,
				Locked = am.Locked,
				ShowTabTitle = am.ShowTabTitle,
				Selected = false,
				Index = nil,
				Parent = am.Parent,
				UIElements = {},
				Elements = {},
				ContainerFrame = nil,
				UICorner = Window.UICorner - (Window.UIPadding / 2),

				Gap = Window.NewElements and 1 or 6,
			}

			al.TabCount = al.TabCount + 1

			local ap = al.TabCount
			ao.Index = ap

			ao.UIElements.Main = ae.NewRoundFrame(ao.UICorner, "Squircle", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -7, 0, 0),
				AutomaticSize = "Y",
				Parent = am.Parent,
				ThemeTag = {
					ImageColor3 = "Text",
				},
				ImageTransparency = 1,
			}, {
				ae.NewRoundFrame(ao.UICorner, "SquircleOutline", {
					Size = UDim2.new(1, 0, 1, 0),
					ThemeTag = {
						ImageColor3 = "Text",
					},
					ImageTransparency = 1,
					Name = "Outline",
				}, {
					ag("UIGradient", {
						Rotation = 80,
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 255, 255)),
							ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
							ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 255, 255)),
						}),
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0.0, 0.1),
							NumberSequenceKeypoint.new(0.5, 1),
							NumberSequenceKeypoint.new(1.0, 0.1),
						}),
					}),
				}),
				ae.NewRoundFrame(ao.UICorner, "Squircle", {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					ThemeTag = {
						ImageColor3 = "Text",
					},
					ImageTransparency = 1,
					Name = "Frame",
				}, {
					ag("UIListLayout", {
						SortOrder = "LayoutOrder",
						Padding = UDim.new(0, 10),
						FillDirection = "Horizontal",
						VerticalAlignment = "Center",
					}),
					ag("TextLabel", {
						Text = ao.Title,
						ThemeTag = {
							TextColor3 = "Text",
						},
						TextTransparency = not ao.Locked and 0.4 or 0.7,
						TextSize = 15,
						Size = UDim2.new(1, 0, 0, 0),
						FontFace = Font.new(ae.Font, Enum.FontWeight.Medium),
						TextWrapped = true,
						RichText = true,
						AutomaticSize = "Y",
						LayoutOrder = 2,
						TextXAlignment = "Left",
						BackgroundTransparency = 1,
					}),
					ag("UIPadding", {
						PaddingTop = UDim.new(0, 2 + (Window.UIPadding / 2)),
						PaddingLeft = UDim.new(0, 4 + (Window.UIPadding / 2)),
						PaddingRight = UDim.new(0, 4 + (Window.UIPadding / 2)),
						PaddingBottom = UDim.new(0, 2 + (Window.UIPadding / 2)),
					}),
				}),
			}, true)

			local aq = 0
			local ar
			local as

			if ao.Icon then
				ar = ae.Image(ao.Icon, ao.Icon .. ":" .. ao.Title, 0, Window.Folder, ao.__type, true, ao.IconThemed)
				ar.Size = UDim2.new(0, 16, 0, 16)
				ar.Parent = ao.UIElements.Main.Frame
				ar.ImageLabel.ImageTransparency = not ao.Locked and 0 or 0.7
				ao.UIElements.Main.Frame.TextLabel.Size = UDim2.new(1, -30, 0, 0)
				aq = -30

				ao.UIElements.Icon = ar

				as = ae.Image(ao.Icon, ao.Icon .. ":" .. ao.Title, 0, Window.Folder, ao.__type, true, ao.IconThemed)
				as.Size = UDim2.new(0, 16, 0, 16)
				as.ImageLabel.ImageTransparency = not ao.Locked and 0 or 0.7
				aq = -30
			end

			ao.UIElements.ContainerFrame = ag("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, ao.ShowTabTitle and -((Window.UIPadding * 2.4) + 12) or 0),
				BackgroundTransparency = 1,
				ScrollBarThickness = 0,
				ElasticBehavior = "Never",
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				AutomaticCanvasSize = "Y",

				ScrollingDirection = "Y",
			}, {
				ag("UIPadding", {
					PaddingTop = UDim.new(0, not Window.HidePanelBackground and 20 or 10),
					PaddingLeft = UDim.new(0, not Window.HidePanelBackground and 20 or 10),
					PaddingRight = UDim.new(0, not Window.HidePanelBackground and 20 or 10),
					PaddingBottom = UDim.new(0, not Window.HidePanelBackground and 20 or 10),
				}),
				ag("UIListLayout", {
					SortOrder = "LayoutOrder",
					Padding = UDim.new(0, ao.Gap),
					HorizontalAlignment = "Center",
				}),
			})

			ao.UIElements.ContainerFrameCanvas = ag("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Visible = false,
				Parent = Window.UIElements.MainBar,
				ZIndex = 5,
			}, {
				ao.UIElements.ContainerFrame,
				ag("Frame", {
					Size = UDim2.new(1, 0, 0, ((Window.UIPadding * 2.4) + 12)),
					BackgroundTransparency = 1,
					Visible = ao.ShowTabTitle or false,
					Name = "TabTitle",
				}, {
					as,
					ag("TextLabel", {
						Text = ao.Title,
						ThemeTag = {
							TextColor3 = "Text",
						},
						TextSize = 20,
						TextTransparency = 0.1,
						Size = UDim2.new(1, -aq, 1, 0),
						FontFace = Font.new(ae.Font, Enum.FontWeight.SemiBold),
						TextTruncate = "AtEnd",
						RichText = true,
						LayoutOrder = 2,
						TextXAlignment = "Left",
						BackgroundTransparency = 1,
					}),
					ag("UIPadding", {
						PaddingTop = UDim.new(0, 20),
						PaddingLeft = UDim.new(0, 20),
						PaddingRight = UDim.new(0, 20),
						PaddingBottom = UDim.new(0, 20),
					}),
					ag("UIListLayout", {
						SortOrder = "LayoutOrder",
						Padding = UDim.new(0, 10),
						FillDirection = "Horizontal",
						VerticalAlignment = "Center",
					}),
				}),
				ag("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					BackgroundTransparency = 0.9,
					ThemeTag = {
						BackgroundColor3 = "Text",
					},
					Position = UDim2.new(0, 0, 0, ((Window.UIPadding * 2.4) + 12)),
					Visible = ao.ShowTabTitle or false,
				}),
			})

			al.Containers[ap] = ao.UIElements.ContainerFrameCanvas
			al.Tabs[ap] = ao

			ao.ContainerFrame = ContainerFrameCanvas

			ae.AddSignal(ao.UIElements.Main.MouseButton1Click, function()
				if not ao.Locked then
					al:SelectTab(ap)
				end
			end)

			if Window.ScrollBarEnabled then
				ak(ao.UIElements.ContainerFrame, ao.UIElements.ContainerFrameCanvas, Window, 3)
			end

			local at
			local av
			local aw
			local ax = false

			if ao.Desc then
				ae.AddSignal(ao.UIElements.Main.InputBegan, function()
					ax = true
					av = task.spawn(function()
						task.wait(0.35)
						if ax and not at then
							at = aj(ao.Desc, al.ToolTipParent)

							local function updatePosition()
								if at then
									at.Container.Position = UDim2.new(0, ac.X, 0, ac.Y - 20)
								end
							end

							updatePosition()
							aw = ac.Move:Connect(updatePosition)
							at:Open()
						end
					end)
				end)
			end

			ae.AddSignal(ao.UIElements.Main.MouseEnter, function()
				if not ao.Locked then
					ai(ao.UIElements.Main.Frame, 0.08, { ImageTransparency = 0.97 }):Play()
				end
			end)
			ae.AddSignal(ao.UIElements.Main.InputEnded, function()
				if ao.Desc then
					ax = false
					if av then
						task.cancel(av)
						av = nil
					end
					if aw then
						aw:Disconnect()
						aw = nil
					end
					if at then
						at:Close()
						at = nil
					end
				end

				if not ao.Locked then
					ai(ao.UIElements.Main.Frame, 0.08, { ImageTransparency = 1 }):Play()
				end
			end)

			function ao.ScrollToTheElement(ay, az)
				ao.UIElements.ContainerFrame.ScrollingEnabled = false
				ai(ao.UIElements.ContainerFrame, 0.45, {
					CanvasPosition = Vector2.new(
						0,

						ao.Elements[az].ElementFrame.AbsolutePosition.Y
							- ao.UIElements.ContainerFrame.AbsolutePosition.Y
							- ao.UIElements.ContainerFrame.UIPadding.PaddingTop.Offset
					),
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()

				task.spawn(function()
					task.wait(0.48)

					if ao.Elements[az].Highlight then
						ao.Elements[az]:Highlight()
						ao.UIElements.ContainerFrame.ScrollingEnabled = true
					end
				end)

				return ao
			end

			ao.ElementsModule = WindUI.load("ElementLoader")

			ao.ElementsModule.Load(
				ao,
				ao.UIElements.ContainerFrame,
				ao.ElementsModule.Elements,
				Window,
				WindUI,
				nil,
				ao.ElementsModule,
				an
			)

			function ao.LockAll(ay)
				for az, aA in next, Window.AllElements do
					if aA.Tab and aA.Tab.Index and aA.Tab.Index == ao.Index and aA.Lock then
						aA:Lock()
					end
				end
			end
			function ao.UnlockAll(ay)
				for az, aA in next, Window.AllElements do
					if aA.Tab and aA.Tab.Index and aA.Tab.Index == ao.Index and aA.Unlock then
						aA:Unlock()
					end
				end
			end
			function ao.GetLocked(ay)
				local az = {}

				for aA, aB in next, Window.AllElements do
					if aB.Tab and aB.Tab.Index and aB.Tab.Index == ao.Index and aB.Locked == true then
						table.insert(az, aB)
					end
				end

				return az
			end
			function ao.GetUnlocked(ay)
				local az = {}

				for aA, aB in next, Window.AllElements do
					if aB.Tab and aB.Tab.Index and aB.Tab.Index == ao.Index and aB.Locked == false then
						table.insert(az, aB)
					end
				end

				return az
			end

			function ao.Select(ay)
				return al:SelectTab(ao.Index)
			end

			task.spawn(function()
				local ay = ag("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, -Window.UIElements.Main.Main.Topbar.AbsoluteSize.Y),
					Parent = ao.UIElements.ContainerFrame,
				}, {
					ag("UIListLayout", {
						Padding = UDim.new(0, 8),
						SortOrder = "LayoutOrder",
						VerticalAlignment = "Center",
						HorizontalAlignment = "Center",
						FillDirection = "Vertical",
					}),
					ag("ImageLabel", {
						Size = UDim2.new(0, 48, 0, 48),
						Image = ae.Icon("frown")[1],
						ImageRectOffset = ae.Icon("frown")[2].ImageRectPosition,
						ImageRectSize = ae.Icon("frown")[2].ImageRectSize,
						ThemeTag = {
							ImageColor3 = "Icon",
						},
						BackgroundTransparency = 1,
						ImageTransparency = 0.6,
					}),
					ag("TextLabel", {
						AutomaticSize = "XY",
						Text = "This tab is empty",
						ThemeTag = {
							TextColor3 = "Text",
						},
						TextSize = 18,
						TextTransparency = 0.5,
						BackgroundTransparency = 1,
						FontFace = Font.new(ae.Font, Enum.FontWeight.Medium),
					}),
				})

				local az
				az = ae.AddSignal(ao.UIElements.ContainerFrame.ChildAdded, function()
					ay.Visible = false
					az:Disconnect()
				end)
			end)

			return ao
		end

		function al.OnChange(am, an)
			al.OnChangeFunc = an
		end

		function al.SelectTab(am, an)
			if not al.Tabs[an].Locked then
				al.SelectedTab = an

				for ao, ap in next, al.Tabs do
					if not ap.Locked then
						ai(ap.UIElements.Main, 0.15, { ImageTransparency = 1 }):Play()
						ai(ap.UIElements.Main.Outline, 0.15, { ImageTransparency = 1 }):Play()
						ai(ap.UIElements.Main.Frame.TextLabel, 0.15, { TextTransparency = 0.3 }):Play()
						if ap.UIElements.Icon then
							ai(ap.UIElements.Icon.ImageLabel, 0.15, { ImageTransparency = 0.4 }):Play()
						end
						ap.Selected = false
					end
				end
				ai(al.Tabs[an].UIElements.Main, 0.15, { ImageTransparency = 0.95 }):Play()
				ai(al.Tabs[an].UIElements.Main.Outline, 0.15, { ImageTransparency = 0.85 }):Play()
				ai(al.Tabs[an].UIElements.Main.Frame.TextLabel, 0.15, { TextTransparency = 0 }):Play()
				if al.Tabs[an].UIElements.Icon then
					ai(al.Tabs[an].UIElements.Icon.ImageLabel, 0.15, { ImageTransparency = 0.1 }):Play()
				end
				al.Tabs[an].Selected = true

				task.spawn(function()
					for aq, ar in next, al.Containers do
						ar.AnchorPoint = Vector2.new(0, 0.05)
						ar.Visible = false
					end
					al.Containers[an].Visible = true
					ai(
						al.Containers[an],
						0.15,
						{ AnchorPoint = Vector2.new(0, 0) },
						Enum.EasingStyle.Quart,
						Enum.EasingDirection.Out
					):Play()
				end)

				al.OnChangeFunc(an)
			end
		end

		return al
	end
	function WindUI.SectionManager()
		local ac = {}

		local ae = WindUI.load("WindUI")
		local ag = ae.New
		local ai = ae.Tween

		local aj = WindUI.load("TabManager")

		function ac.New(ak, al, am, an, ao)
			local ap = {
				Title = ak.Title or "Section",
				Icon = ak.Icon,
				IconThemed = ak.IconThemed,
				Opened = ak.Opened or false,

				HeaderSize = 42,
				IconSize = 18,

				Expandable = false,
			}

			local aq
			if ap.Icon then
				aq = ae.Image(ap.Icon, ap.Icon, 0, am, "Section", true, ap.IconThemed)

				aq.Size = UDim2.new(0, ap.IconSize, 0, ap.IconSize)
				aq.ImageLabel.ImageTransparency = 0.25
			end

			local ar = ag("Frame", {
				Size = UDim2.new(0, ap.IconSize, 0, ap.IconSize),
				BackgroundTransparency = 1,
				Visible = false,
			}, {
				ag("ImageLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = ae.Icon("chevron-down")[1],
					ImageRectSize = ae.Icon("chevron-down")[2].ImageRectSize,
					ImageRectOffset = ae.Icon("chevron-down")[2].ImageRectPosition,
					ThemeTag = {
						ImageColor3 = "Icon",
					},
					ImageTransparency = 0.7,
				}),
			})

			local as = ag("Frame", {
				Size = UDim2.new(1, 0, 0, ap.HeaderSize),
				BackgroundTransparency = 1,
				Parent = al,
				ClipsDescendants = true,
			}, {
				ag("TextButton", {
					Size = UDim2.new(1, 0, 0, ap.HeaderSize),
					BackgroundTransparency = 1,
					Text = "",
				}, {
					aq,
					ag("TextLabel", {
						Text = ap.Title,
						TextXAlignment = "Left",
						Size = UDim2.new(1, aq and (-ap.IconSize - 10) * 2 or (-ap.IconSize - 10), 1, 0),
						ThemeTag = {
							TextColor3 = "Text",
						},
						FontFace = Font.new(ae.Font, Enum.FontWeight.SemiBold),
						TextSize = 14,
						BackgroundTransparency = 1,
						TextTransparency = 0.7,

						TextWrapped = true,
					}),
					ag("UIListLayout", {
						FillDirection = "Horizontal",
						VerticalAlignment = "Center",
						Padding = UDim.new(0, 10),
					}),
					ar,
					ag("UIPadding", {
						PaddingLeft = UDim.new(0, 11),
						PaddingRight = UDim.new(0, 11),
					}),
				}),
				ag("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					Name = "Content",
					Visible = true,
					Position = UDim2.new(0, 0, 0, ap.HeaderSize),
				}, {
					ag("UIListLayout", {
						FillDirection = "Vertical",
						Padding = UDim.new(0, ao.Gap),
						VerticalAlignment = "Bottom",
					}),
				}),
			})

			function ap.Tab(at, av)
				if not ap.Expandable then
					ap.Expandable = true
					ar.Visible = true
				end
				av.Parent = as.Content
				return aj.New(av, an)
			end

			function ap.Open(at)
				if ap.Expandable then
					ap.Opened = true
					ai(as, 0.33, {
						Size = UDim2.new(1, 0, 0, ap.HeaderSize + (as.Content.AbsoluteSize.Y / an)),
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()

					ai(ar.ImageLabel, 0.1, { Rotation = 180 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				end
			end
			function ap.Close(at)
				if ap.Expandable then
					ap.Opened = false
					ai(as, 0.26, {
						Size = UDim2.new(1, 0, 0, ap.HeaderSize),
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					ai(ar.ImageLabel, 0.1, { Rotation = 0 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				end
			end

			ae.AddSignal(as.TextButton.MouseButton1Click, function()
				if ap.Expandable then
					if ap.Opened then
						ap:Close()
					else
						ap:Open()
					end
				end
			end)

			if ap.Opened then
				task.spawn(function()
					task.wait()
					ap:Open()
				end)
			end

			return ap
		end

		return ac
	end
	function WindUI.IconAtlas()
		return {
			Tab = "table-of-contents",
			Paragraph = "type",
			Button = "square-mouse-pointer",
			Toggle = "toggle-right",
			Slider = "sliders-horizontal",
			Keybind = "command",
			Input = "text-cursor-input",
			Dropdown = "chevrons-up-down",
			Code = "terminal",
			Colorpicker = "palette",
		}
	end
	function WindUI.SearchModal()
		game:GetService("UserInputService")

		local ac = {
			Margin = 8,
			Padding = 9,
		}

		local ae = WindUI.load("WindUI")
		local ag = ae.New
		local ai = ae.Tween

		function ac.new(aj, ak, al)
			local am = {
				IconSize = 18,
				Padding = 14,
				Radius = 22,
				Width = 400,
				MaxHeight = 380,

				Icons = WindUI.load("IconAtlas"),
			}

			local an = ag("TextBox", {
				Text = "",
				PlaceholderText = "Search...",
				ThemeTag = {
					PlaceholderColor3 = "Placeholder",
					TextColor3 = "Text",
				},
				Size = UDim2.new(1, -((am.IconSize * 2) + (am.Padding * 2)), 0, 0),
				AutomaticSize = "Y",
				ClipsDescendants = true,
				ClearTextOnFocus = false,
				BackgroundTransparency = 1,
				TextXAlignment = "Left",
				FontFace = Font.new(ae.Font, Enum.FontWeight.Regular),
				TextSize = 18,
			})

			local ao = ag("ImageLabel", {
				Image = ae.Icon("CreateTooltip")[1],
				ImageRectSize = ae.Icon("CreateTooltip")[2].ImageRectSize,
				ImageRectOffset = ae.Icon("CreateTooltip")[2].ImageRectPosition,
				BackgroundTransparency = 1,
				ThemeTag = {
					ImageColor3 = "Icon",
				},
				ImageTransparency = 0.1,
				Size = UDim2.new(0, am.IconSize, 0, am.IconSize),
			}, {
				ag("TextButton", {
					Size = UDim2.new(1, 8, 1, 8),
					BackgroundTransparency = 1,
					Active = true,
					ZIndex = 999999999,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Text = "",
				}),
			})

			local ap = ag("ScrollingFrame", {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticCanvasSize = "Y",
				ScrollingDirection = "Y",
				ElasticBehavior = "Never",
				ScrollBarThickness = 0,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				Visible = false,
			}, {
				ag("UIListLayout", {
					Padding = UDim.new(0, 0),
					FillDirection = "Vertical",
				}),
				ag("UIPadding", {
					PaddingTop = UDim.new(0, am.Padding),
					PaddingLeft = UDim.new(0, am.Padding),
					PaddingRight = UDim.new(0, am.Padding),
					PaddingBottom = UDim.new(0, am.Padding),
				}),
			})

			local aq = ae.NewRoundFrame(am.Radius, "Squircle", {
				Size = UDim2.new(1, 0, 1, 0),
				ThemeTag = {
					ImageColor3 = "Background",
				},
				ImageTransparency = 0,
			}, {
				ae.NewRoundFrame(am.Radius, "Squircle", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,

					Visible = false,
					ImageColor3 = Color3.new(1, 1, 1),
					ImageTransparency = 0.98,
					Name = "Frame",
				}, {
					ag("Frame", {
						Size = UDim2.new(1, 0, 0, 46),
						BackgroundTransparency = 1,
					}, {

						ag("Frame", {
							Size = UDim2.new(1, 0, 1, 0),
							BackgroundTransparency = 1,
						}, {
							ag("ImageLabel", {
								Image = ae.Icon("search")[1],
								ImageRectSize = ae.Icon("search")[2].ImageRectSize,
								ImageRectOffset = ae.Icon("search")[2].ImageRectPosition,
								BackgroundTransparency = 1,
								ThemeTag = {
									ImageColor3 = "Icon",
								},
								ImageTransparency = 0.1,
								Size = UDim2.new(0, am.IconSize, 0, am.IconSize),
							}),
							an,
							ao,
							ag("UIListLayout", {
								Padding = UDim.new(0, am.Padding),
								FillDirection = "Horizontal",
								VerticalAlignment = "Center",
							}),
							ag("UIPadding", {
								PaddingLeft = UDim.new(0, am.Padding),
								PaddingRight = UDim.new(0, am.Padding),
							}),
						}),
					}),
					ag("Frame", {
						BackgroundTransparency = 1,
						AutomaticSize = "Y",
						Size = UDim2.new(1, 0, 0, 0),
						Name = "Results",
					}, {
						ag("Frame", {
							Size = UDim2.new(1, 0, 0, 1),
							ThemeTag = {
								BackgroundColor3 = "Outline",
							},
							BackgroundTransparency = 0.9,
							Visible = false,
						}),
						ap,
						ag("UISizeConstraint", {
							MaxSize = Vector2.new(am.Width, am.MaxHeight),
						}),
					}),
					ag("UIListLayout", {
						Padding = UDim.new(0, 0),
						FillDirection = "Vertical",
					}),
				}),
			})

			local ar = ag("Frame", {
				Size = UDim2.new(0, am.Width, 0, 0),
				AutomaticSize = "Y",
				Parent = ak,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Visible = false,

				ZIndex = 99999999,
			}, {
				ag("UIScale", {
					Scale = 0.9,
				}),
				aq,
				ae.NewRoundFrame(am.Radius, "SquircleOutline2", {
					Size = UDim2.new(1, 0, 1, 0),
					ThemeTag = {
						ImageColor3 = "Outline",
					},
					ImageTransparency = 1,
				}, {
					ag("UIGradient", {
						Rotation = 45,
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 0.55),
							NumberSequenceKeypoint.new(0.5, 0.8),
							NumberSequenceKeypoint.new(1, 0.6),
						}),
					}),
				}),
			})

			local function CreateSearchTab(as, at, av, aw, ax, ay)
				local az = ag("TextButton", {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					BackgroundTransparency = 1,
					Parent = aw or nil,
				}, {
					ae.NewRoundFrame(am.Radius - 11, "Squircle", {
						Size = UDim2.new(1, 0, 0, 0),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),

						ThemeTag = {
							ImageColor3 = "Text",
						},
						ImageTransparency = 1,
						Name = "Main",
					}, {
						ae.NewRoundFrame(am.Radius - 11, "SquircleOutline2", {
							Size = UDim2.new(1, 0, 1, 0),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							AnchorPoint = Vector2.new(0.5, 0.5),
							ThemeTag = {
								ImageColor3 = "Outline",
							},
							ImageTransparency = 1,
							Name = "Outline",
						}, {
							ag("UIGradient", {
								Rotation = 65,
								Transparency = NumberSequence.new({
									NumberSequenceKeypoint.new(0, 0.55),
									NumberSequenceKeypoint.new(0.5, 0.8),
									NumberSequenceKeypoint.new(1, 0.6),
								}),
							}),
							ag("UIPadding", {
								PaddingTop = UDim.new(0, am.Padding - 2),
								PaddingLeft = UDim.new(0, am.Padding),
								PaddingRight = UDim.new(0, am.Padding),
								PaddingBottom = UDim.new(0, am.Padding - 2),
							}),
							ag("ImageLabel", {
								Image = ae.Icon(av)[1],
								ImageRectSize = ae.Icon(av)[2].ImageRectSize,
								ImageRectOffset = ae.Icon(av)[2].ImageRectPosition,
								BackgroundTransparency = 1,
								ThemeTag = {
									ImageColor3 = "Icon",
								},
								ImageTransparency = 0.1,
								Size = UDim2.new(0, am.IconSize, 0, am.IconSize),
							}),
							ag("Frame", {
								Size = UDim2.new(1, -am.IconSize - am.Padding, 0, 0),
								BackgroundTransparency = 1,
							}, {
								ag("TextLabel", {
									Text = as,
									ThemeTag = {
										TextColor3 = "Text",
									},
									TextSize = 17,
									BackgroundTransparency = 1,
									TextXAlignment = "Left",
									FontFace = Font.new(ae.Font, Enum.FontWeight.Medium),
									Size = UDim2.new(1, 0, 0, 0),
									TextTruncate = "AtEnd",
									AutomaticSize = "Y",
									Name = "Title",
								}),
								ag("TextLabel", {
									Text = at or "",
									Visible = at and true or false,
									ThemeTag = {
										TextColor3 = "Text",
									},
									TextSize = 15,
									TextTransparency = 0.3,
									BackgroundTransparency = 1,
									TextXAlignment = "Left",
									FontFace = Font.new(ae.Font, Enum.FontWeight.Medium),
									Size = UDim2.new(1, 0, 0, 0),
									TextTruncate = "AtEnd",
									AutomaticSize = "Y",
									Name = "Desc",
								}) or nil,
								ag("UIListLayout", {
									Padding = UDim.new(0, 6),
									FillDirection = "Vertical",
								}),
							}),
							ag("UIListLayout", {
								Padding = UDim.new(0, am.Padding),
								FillDirection = "Horizontal",
							}),
						}),
					}, true),
					ag("Frame", {
						Name = "ParentContainer",
						Size = UDim2.new(1, -am.Padding, 0, 0),
						AutomaticSize = "Y",
						BackgroundTransparency = 1,
						Visible = ax,
					}, {
						ae.NewRoundFrame(99, "Squircle", {
							Size = UDim2.new(0, 2, 1, 0),
							BackgroundTransparency = 1,
							ThemeTag = {
								ImageColor3 = "Text",
							},
							ImageTransparency = 0.9,
						}),
						ag("Frame", {
							Size = UDim2.new(1, -am.Padding - 2, 0, 0),
							Position = UDim2.new(0, am.Padding + 2, 0, 0),
							BackgroundTransparency = 1,
						}, {
							ag("UIListLayout", {
								Padding = UDim.new(0, 0),
								FillDirection = "Vertical",
							}),
						}),
					}),
					ag("UIListLayout", {
						Padding = UDim.new(0, 0),
						FillDirection = "Vertical",
						HorizontalAlignment = "Right",
					}),
				})

				az.Main.Size = UDim2.new(
					1,
					0,
					0,
					az.Main.Outline.Frame.Desc.Visible
							and (((am.Padding - 2) * 2) + az.Main.Outline.Frame.Title.TextBounds.Y + 6 + az.Main.Outline.Frame.Desc.TextBounds.Y)
						or (((am.Padding - 2) * 2) + az.Main.Outline.Frame.Title.TextBounds.Y)
				)

				ae.AddSignal(az.Main.MouseEnter, function()
					ai(az.Main, 0.04, { ImageTransparency = 0.95 }):Play()
					ai(az.Main.Outline, 0.04, { ImageTransparency = 0.7 }):Play()
				end)
				ae.AddSignal(az.Main.InputEnded, function()
					ai(az.Main, 0.08, { ImageTransparency = 1 }):Play()
					ai(az.Main.Outline, 0.08, { ImageTransparency = 1 }):Play()
				end)
				ae.AddSignal(az.Main.MouseButton1Click, function()
					if ay then
						ay()
					end
				end)

				return az
			end

			local function ContainsText(as, at)
				if not at or at == "" then
					return false
				end

				if not as or as == "" then
					return false
				end

				local av = string.lower(as)
				local aw = string.lower(at)

				return string.find(av, aw, 1, true) ~= nil
			end

			local function Search(as)
				if not as or as == "" then
					return {}
				end

				local at = {}
				for av, aw in next, aj.Tabs do
					local ax = ContainsText(aw.Title or "", as)
					local ay = {}

					for az, aA in next, aw.Elements do
						if aA.__type ~= "Section" then
							local aB = ContainsText(aA.Title or "", as)
							local aC = ContainsText(aA.Desc or "", as)

							if aB or aC then
								ay[az] = {
									Title = aA.Title,
									Desc = aA.Desc,
									Original = aA,
									__type = aA.__type,
									Index = az,
								}
							end
						end
					end

					if ax or next(ay) ~= nil then
						at[av] = {
							Tab = aw,
							Title = aw.Title,
							Icon = aw.Icon,
							Elements = ay,
						}
					end
				end
				return at
			end

			function am.Search(as, at)
				at = at or ""

				local av = Search(at)

				ap.Visible = true
				aq.Frame.Results.Frame.Visible = true
				for aw, ax in next, ap:GetChildren() do
					if ax.ClassName ~= "UIListLayout" and ax.ClassName ~= "UIPadding" then
						ax:Destroy()
					end
				end

				if av and next(av) ~= nil then
					for ay, az in next, av do
						local aA = am.Icons.Tab
						local aB = CreateSearchTab(az.Title, nil, aA, ap, true, function()
							am:Close()
							aj:SelectTab(ay)
						end)
						if az.Elements and next(az.Elements) ~= nil then
							for aC, aD in next, az.Elements do
								local aE = am.Icons[aD.__type]
								CreateSearchTab(
									aD.Title,
									aD.Desc,
									aE,
									aB:FindFirstChild("ParentContainer") and aB.ParentContainer.Frame or nil,
									false,
									function()
										am:Close()
										aj:SelectTab(ay)
										if az.Tab.ScrollToTheElement then
											az.Tab:ScrollToTheElement(aD.Index)
										end
									end
								)
							end
						end
					end
				elseif at ~= "" then
					ag("TextLabel", {
						Size = UDim2.new(1, 0, 0, 70),
						BackgroundTransparency = 1,
						Text = "No results found",
						TextSize = 16,
						ThemeTag = {
							TextColor3 = "Text",
						},
						TextTransparency = 0.2,
						BackgroundTransparency = 1,
						FontFace = Font.new(ae.Font, Enum.FontWeight.Medium),
						Parent = ap,
						Name = "NotFound",
					})
				else
					ap.Visible = false
					aq.Frame.Results.Frame.Visible = false
				end
			end

			ae.AddSignal(an:GetPropertyChangedSignal("Text"), function()
				am:Search(an.Text)
			end)

			ae.AddSignal(ap.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
				ai(
					ap,
					0.06,
					{
						Size = UDim2.new(
							1,
							0,
							0,
							math.clamp(ap.UIListLayout.AbsoluteContentSize.Y + (am.Padding * 2), 0, am.MaxHeight)
						),
					},
					Enum.EasingStyle.Quint,
					Enum.EasingDirection.InOut
				):Play()
			end)

			function am.Open(as)
				task.spawn(function()
					aq.Frame.Visible = true
					ar.Visible = true
					ai(ar.UIScale, 0.12, { Scale = 1 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				end)
			end

			function am.Close(as)
				task.spawn(function()
					al()
					aq.Frame.Visible = false
					ai(ar.UIScale, 0.12, { Scale = 1 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()

					task.wait(0.12)
					ar.Visible = false
				end)
			end

			ae.AddSignal(ao.TextButton.MouseButton1Click, function()
				am:Close()
			end)

			am:Open()

			return am
		end

		return ac
	end
	function WindUI.WindowBuilder()
		local ac = game:GetService("UserInputService")
		game:GetService("RunService")

		local ae = workspace.CurrentCamera

		local ag = WindUI.load("WindUI")
		local ai = ag.New
		local aj = ag.Tween

		local ak = WindUI.load("CreateLabel").New
		local al = WindUI.load("CreateButton").New
		local am = WindUI.load("CreateScrollBar").New
		local an = WindUI.load("CreateTag")

		local ao = WindUI.load("ConfigManager")

		return function(ap)
			local aq = {
				Title = ap.Title or "UI Library",
				Author = ap.Author,
				Icon = ap.Icon,
				IconThemed = ap.IconThemed,
				Folder = ap.Folder,
				Resizable = ap.Resizable,
				Background = ap.Background,
				BackgroundImageTransparency = ap.BackgroundImageTransparency or 0,
				User = ap.User or {},

				Size = ap.Size,

				MinSize = ap.MinSize or Vector2.new(560, 350),
				MaxSize = ap.MaxSize or Vector2.new(850, 560),

				ToggleKey = ap.ToggleKey,
				Transparent = ap.Transparent or false,
				HideSearchBar = ap.HideSearchBar,
				ScrollBarEnabled = ap.ScrollBarEnabled or false,
				SideBarWidth = ap.SideBarWidth or 200,

				NewElements = ap.NewElements or false,
				HidePanelBackground = ap.HidePanelBackground or false,
				AutoScale = ap.AutoScale,
				OpenButton = ap.OpenButton,

				Position = UDim2.new(0.5, 0, 0.5, 0),
				IconSize = ap.IconSize or 22,
				UICorner = 16,
				UIPadding = 14,
				UIElements = {},
				CanDropdown = true,
				Closed = false,
				Parent = ap.Parent,
				Destroyed = false,
				IsFullscreen = false,
				CanResize = false,
				IsOpenButtonEnabled = true,

				ConfigManager = nil,

				CurrentTab = nil,
				TabModule = nil,

				OnOpenCallback = nil,
				OnCloseCallback = nil,
				OnDestroyCallback = nil,

				IsPC = false,

				Gap = 5,

				TopBarButtons = {},
				AllElements = {},

				ElementConfig = {},
			}

			aq.ElementConfig = {
				UIPadding = aq.NewElements and 10 or 13,
				UICorner = aq.NewElements and 23 or 12,
			}

			local ar = aq.Size or UDim2.new(0, 580, 0, 460)
			aq.Size = UDim2.new(
				ar.X.Scale,
				math.clamp(ar.X.Offset, aq.MinSize.X, aq.MaxSize.X),
				ar.Y.Scale,
				math.clamp(ar.Y.Offset, aq.MinSize.Y, aq.MaxSize.Y)
			)

			if aq.HideSearchBar ~= false then
				aq.HideSearchBar = true
			end
			if aq.AutoScale ~= false then
				aq.AutoScale = true
			end
			if aq.Resizable ~= false then
				aq.CanResize = true
				aq.Resizable = true
			end

			if aq.Folder then
				makefolder("WindUI/" .. aq.Folder)
			end

			local as = ai("UICorner", {
				CornerRadius = UDim.new(0, aq.UICorner),
			})

			if aq.Folder then
				aq.ConfigManager = ao:Init(aq)
			end

			local at = ai("Frame", {
				Size = UDim2.new(0, 32, 0, 32),
				Position = UDim2.new(1, 0, 1, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				ZIndex = 99,
				Active = true,
			}, {
				ai("ImageLabel", {
					Size = UDim2.new(0, 96, 0, 96),
					BackgroundTransparency = 1,
					Image = "rbxassetid://120997033468887",
					Position = UDim2.new(0.5, -16, 0.5, -16),
					AnchorPoint = Vector2.new(0.5, 0.5),
					ImageTransparency = 1,
				}),
			})
			local av = ag.NewRoundFrame(aq.UICorner, "Squircle", {
				Size = UDim2.new(1, 0, 1, 0),
				ImageTransparency = 1,
				ImageColor3 = Color3.new(0, 0, 0),
				ZIndex = 98,
				Active = false,
			}, {
				ai("ImageLabel", {
					Size = UDim2.new(0, 70, 0, 70),
					Image = ag.Icon("expand")[1],
					ImageRectOffset = ag.Icon("expand")[2].ImageRectPosition,
					ImageRectSize = ag.Icon("expand")[2].ImageRectSize,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					ImageTransparency = 1,
				}),
			})

			local aw = ag.NewRoundFrame(aq.UICorner, "Squircle", {
				Size = UDim2.new(1, 0, 1, 0),
				ImageTransparency = 1,
				ImageColor3 = Color3.new(0, 0, 0),
				ZIndex = 999,
				Active = false,
			})

			aq.UIElements.SideBar = ai("ScrollingFrame", {
				Size = UDim2.new(
					1,
					aq.ScrollBarEnabled and -3 - (aq.UIPadding / 2) or 0,
					1,
					not aq.HideSearchBar and -45 or 0
				),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = 1,
				ScrollBarThickness = 0,
				ElasticBehavior = "Never",
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = "Y",
				ScrollingDirection = "Y",
				ClipsDescendants = true,
				VerticalScrollBarPosition = "Left",
			}, {
				ai("Frame", {
					BackgroundTransparency = 1,
					AutomaticSize = "Y",
					Size = UDim2.new(1, 0, 0, 0),
					Name = "Frame",
				}, {
					ai("UIPadding", {
						PaddingTop = UDim.new(0, aq.UIPadding / 2),

						PaddingBottom = UDim.new(0, aq.UIPadding / 2),
					}),
					ai("UIListLayout", {
						SortOrder = "LayoutOrder",
						Padding = UDim.new(0, aq.Gap),
					}),
				}),
				ai("UIPadding", {

					PaddingLeft = UDim.new(0, aq.UIPadding / 2),
					PaddingRight = UDim.new(0, aq.UIPadding / 2),
				}),
			})

			aq.UIElements.SideBarContainer = ai("Frame", {
				Size = UDim2.new(0, aq.SideBarWidth, 1, aq.User.Enabled and -94 - (aq.UIPadding * 2) or -52),
				Position = UDim2.new(0, 0, 0, 52),
				BackgroundTransparency = 1,
				Visible = true,
			}, {
				ai("Frame", {
					Name = "Content",
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, not aq.HideSearchBar and -45 - aq.UIPadding / 2 or 0),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
				}),
				aq.UIElements.SideBar,
			})

			if aq.ScrollBarEnabled then
				am(aq.UIElements.SideBar, aq.UIElements.SideBarContainer.Content, aq, 3)
			end

			aq.UIElements.MainBar = ai("Frame", {
				Size = UDim2.new(1, -aq.UIElements.SideBarContainer.AbsoluteSize.X, 1, -52),
				Position = UDim2.new(1, 0, 1, 0),
				AnchorPoint = Vector2.new(1, 1),
				BackgroundTransparency = 1,
			}, {
				ag.NewRoundFrame(aq.UICorner - (aq.UIPadding / 2), "Squircle", {
					Size = UDim2.new(1, 0, 1, 0),
					ImageColor3 = Color3.new(1, 1, 1),
					ZIndex = 3,
					ImageTransparency = 0.95,
					Name = "Background",
					Visible = not aq.HidePanelBackground,
				}),
				ai("UIPadding", {
					PaddingTop = UDim.new(0, aq.UIPadding / 2),
					PaddingLeft = UDim.new(0, aq.UIPadding / 2),
					PaddingRight = UDim.new(0, aq.UIPadding / 2),
					PaddingBottom = UDim.new(0, aq.UIPadding / 2),
				}),
			})

			local ax = ai("ImageLabel", {
				Image = "rbxassetid://8992230677",
				ImageColor3 = Color3.new(0, 0, 0),
				ImageTransparency = 1,
				Size = UDim2.new(1, 120, 1, 116),
				Position = UDim2.new(0, -60, 0, -58),
				ScaleType = "Slice",
				SliceCenter = Rect.new(99, 99, 99, 99),
				BackgroundTransparency = 1,
				ZIndex = -999999999999999,
				Name = "Blur",
			})

			if ac.TouchEnabled and not ac.KeyboardEnabled then
				aq.IsPC = false
			elseif ac.KeyboardEnabled then
				aq.IsPC = true
			else
				aq.IsPC = nil
			end

			local ay
			if aq.User then
				local function GetUserThumb()
					local az, aA = game:GetService("Players"):GetUserThumbnailAsync(
						aq.User.Anonymous and 1 or game.Players.LocalPlayer.UserId,
						Enum.ThumbnailType.HeadShot,
						Enum.ThumbnailSize.Size420x420
					)
					return az
				end

				ay = ai("TextButton", {
					Size = UDim2.new(
						0,
						aq.UIElements.SideBarContainer.AbsoluteSize.X - (aq.UIPadding / 2),
						0,
						42 + aq.UIPadding
					),
					Position = UDim2.new(0, aq.UIPadding / 2, 1, -(aq.UIPadding / 2)),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = 1,
					Visible = aq.User.Enabled or false,
				}, {
					ag.NewRoundFrame(aq.UICorner - (aq.UIPadding / 2), "SquircleOutline", {
						Size = UDim2.new(1, 0, 1, 0),
						ThemeTag = {
							ImageColor3 = "Text",
						},
						ImageTransparency = 1,
						Name = "Outline",
					}, {
						ai("UIGradient", {
							Rotation = 78,
							Color = ColorSequence.new({
								ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 255, 255)),
								ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
								ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 255, 255)),
							}),
							Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0.0, 0.1),
								NumberSequenceKeypoint.new(0.5, 1),
								NumberSequenceKeypoint.new(1.0, 0.1),
							}),
						}),
					}),
					ag.NewRoundFrame(aq.UICorner - (aq.UIPadding / 2), "Squircle", {
						Size = UDim2.new(1, 0, 1, 0),
						ThemeTag = {
							ImageColor3 = "Text",
						},
						ImageTransparency = 1,
						Name = "UserIcon",
					}, {
						ai("ImageLabel", {
							Image = GetUserThumb(),
							BackgroundTransparency = 1,
							Size = UDim2.new(0, 42, 0, 42),
							ThemeTag = {
								BackgroundColor3 = "Text",
							},
							BackgroundTransparency = 0.93,
						}, {
							ai("UICorner", {
								CornerRadius = UDim.new(1, 0),
							}),
						}),
						ai("Frame", {
							AutomaticSize = "XY",
							BackgroundTransparency = 1,
						}, {
							ai("TextLabel", {
								Text = aq.User.Anonymous and "Anonymous" or game.Players.LocalPlayer.DisplayName,
								TextSize = 17,
								ThemeTag = {
									TextColor3 = "Text",
								},
								FontFace = Font.new(ag.Font, Enum.FontWeight.SemiBold),
								AutomaticSize = "Y",
								BackgroundTransparency = 1,
								Size = UDim2.new(1, -27, 0, 0),
								TextTruncate = "AtEnd",
								TextXAlignment = "Left",
								Name = "DisplayName",
							}),
							ai("TextLabel", {
								Text = aq.User.Anonymous and "anonymous" or game.Players.LocalPlayer.Name,
								TextSize = 15,
								TextTransparency = 0.6,
								ThemeTag = {
									TextColor3 = "Text",
								},
								FontFace = Font.new(ag.Font, Enum.FontWeight.Medium),
								AutomaticSize = "Y",
								BackgroundTransparency = 1,
								Size = UDim2.new(1, -27, 0, 0),
								TextTruncate = "AtEnd",
								TextXAlignment = "Left",
								Name = "UserName",
							}),
							ai("UIListLayout", {
								Padding = UDim.new(0, 4),
								HorizontalAlignment = "Left",
							}),
						}),
						ai("UIListLayout", {
							Padding = UDim.new(0, aq.UIPadding),
							FillDirection = "Horizontal",
							VerticalAlignment = "Center",
						}),
						ai("UIPadding", {
							PaddingLeft = UDim.new(0, aq.UIPadding / 2),
							PaddingRight = UDim.new(0, aq.UIPadding / 2),
						}),
					}),
				})

				function aq.User.Enable(az)
					aq.User.Enabled = true
					aj(
						aq.UIElements.SideBarContainer,
						0.25,
						{ Size = UDim2.new(0, aq.SideBarWidth, 1, -94 - (aq.UIPadding * 2)) },
						Enum.EasingStyle.Quint,
						Enum.EasingDirection.Out
					):Play()
					ay.Visible = true
				end
				function aq.User.Disable(az)
					aq.User.Enabled = false
					aj(
						aq.UIElements.SideBarContainer,
						0.25,
						{ Size = UDim2.new(0, aq.SideBarWidth, 1, -52) },
						Enum.EasingStyle.Quint,
						Enum.EasingDirection.Out
					):Play()
					ay.Visible = false
				end
				function aq.User.SetAnonymous(az, aA)
					if aA ~= false then
						aA = true
					end
					aq.User.Anonymous = aA
					ay.UserIcon.ImageLabel.Image = GetUserThumb()
					ay.UserIcon.Frame.DisplayName.Text = aA and "Anonymous" or game.Players.LocalPlayer.DisplayName
					ay.UserIcon.Frame.UserName.Text = aA and "anonymous" or game.Players.LocalPlayer.Name
				end

				if aq.User.Enabled then
					aq.User:Enable()
				else
					aq.User:Disable()
				end

				if aq.User.Callback then
					ag.AddSignal(ay.MouseButton1Click, function()
						aq.User.Callback()
					end)
					ag.AddSignal(ay.MouseEnter, function()
						aj(ay.UserIcon, 0.04, { ImageTransparency = 0.95 }):Play()
						aj(ay.Outline, 0.04, { ImageTransparency = 0.85 }):Play()
					end)
					ag.AddSignal(ay.InputEnded, function()
						aj(ay.UserIcon, 0.04, { ImageTransparency = 1 }):Play()
						aj(ay.Outline, 0.04, { ImageTransparency = 1 }):Play()
					end)
				end
			end

			local az
			local aA

			local aB = false
			local aC

			local aD = typeof(aq.Background) == "string" and string.match(aq.Background, "^video:(.+)") or nil
			local aE = typeof(aq.Background) == "string" and not aD and string.match(aq.Background, "^https?://.+")
				or nil

			local function SanitizeFilename(CreateLocalization)
				CreateLocalization = CreateLocalization:gsub('[%CreateLabel/\\:*?"<>|]+', "-")
				CreateLocalization = CreateLocalization:gsub("[^%CreateOpenButton%-_%.]", "")
				return CreateLocalization
			end

			if typeof(aq.Background) == "string" and aD then
				aB = true

				if string.find(aD, "http") then
					local CreateLocalization = aq.Folder .. "/Assets/." .. SanitizeFilename(aD) .. ".webm"
					if not isfile(CreateLocalization) then
						local CreatePandaDev, LoadKeyServices = pcall(function()
							local CreatePandaDev = ag.Request({ Url = aD, Method = "GET" })
							writefile(CreateLocalization, CreatePandaDev.Body)
						end)
						if not CreatePandaDev then
							warn("[ Window.Background ] Failed to download video: " .. tostring(LoadKeyServices))
							return
						end
					end

					local CreatePandaDev, LoadKeyServices = pcall(function()
						return getcustomasset(CreateLocalization)
					end)
					if not CreatePandaDev then
						warn("[ Window.Background ] Failed to load custom asset: " .. tostring(LoadKeyServices))
						return
					end
					aD = LoadKeyServices
				end

				aC = ai("VideoFrame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Video = aD,
					Looped = true,
					Volume = 0,
				}, {
					ai("UICorner", {
						CornerRadius = UDim.new(0, aq.UICorner),
					}),
				})
				aC:Play()
			elseif aE then
				local CreateLocalization = aq.Folder .. "/Assets/." .. SanitizeFilename(aE) .. ".png"
				if not isfile(CreateLocalization) then
					local CreatePandaDev, LoadKeyServices = pcall(function()
						local CreatePandaDev = ag.Request({ Url = aE, Method = "GET" })
						writefile(CreateLocalization, CreatePandaDev.Body)
					end)
					if not CreatePandaDev then
						warn("[ Window.Background ] Failed to download image: " .. tostring(LoadKeyServices))
						return
					end
				end

				local CreatePandaDev, LoadKeyServices = pcall(function()
					return getcustomasset(CreateLocalization)
				end)
				if not CreatePandaDev then
					warn("[ Window.Background ] Failed to load custom asset: " .. tostring(LoadKeyServices))
					return
				end

				aC = ai("ImageLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Image = LoadKeyServices,
					ImageTransparency = 0,
					ScaleType = "Crop",
				}, {
					ai("UICorner", {
						CornerRadius = UDim.new(0, aq.UICorner),
					}),
				})
			elseif aq.Background then
				aC = ai("ImageLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Image = typeof(aq.Background) == "string" and aq.Background or "",
					ImageTransparency = 1,
					ScaleType = "Crop",
				}, {
					ai("UICorner", {
						CornerRadius = UDim.new(0, aq.UICorner),
					}),
				})
			end

			local CreateLocalization = ag.NewRoundFrame(99, "Squircle", {
				ImageTransparency = 0.8,
				ImageColor3 = Color3.new(1, 1, 1),
				Size = UDim2.new(0, 0, 0, 4),
				Position = UDim2.new(0.5, 0, 1, 4),
				AnchorPoint = Vector2.new(0.5, 0),
			}, {
				ai("TextButton", {
					Size = UDim2.new(1, 12, 1, 12),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Active = true,
					ZIndex = 99,
					Name = "Frame",
				}),
			})

			function createAuthor(CreatePandaDev)
				return ai("TextLabel", {
					Text = CreatePandaDev,
					FontFace = Font.new(ag.Font, Enum.FontWeight.Medium),
					BackgroundTransparency = 1,
					TextTransparency = 0.35,
					AutomaticSize = "XY",
					Parent = aq.UIElements.Main and aq.UIElements.Main.Main.Topbar.Left.Title,
					TextXAlignment = "Left",
					TextSize = 13,
					LayoutOrder = 2,
					ThemeTag = {
						TextColor3 = "Text",
					},
					Name = "Author",
				})
			end

			local CreatePandaDev
			local LoadKeyServices

			if aq.Author then
				CreatePandaDev = createAuthor(aq.Author)
			end

			local LoadPackageJson = ai("TextLabel", {
				Text = aq.Title,
				FontFace = Font.new(ag.Font, Enum.FontWeight.SemiBold),
				BackgroundTransparency = 1,
				AutomaticSize = "XY",
				Name = "Title",
				TextXAlignment = "Left",
				TextSize = 16,
				ThemeTag = {
					TextColor3 = "Text",
				},
			})

			aq.UIElements.Main = ai("Frame", {
				Size = aq.Size,
				Position = aq.Position,
				BackgroundTransparency = 1,
				Parent = ap.Parent,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Active = true,
			}, {

				ax,
				ag.NewRoundFrame(aq.UICorner, "Squircle", {
					ImageTransparency = 1,
					Size = UDim2.new(1, 0, 1, -240),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Name = "Background",
					ThemeTag = {
						ImageColor3 = "Background",
					},
				}, {
					aC,
					CreateLocalization,
					at,
				}),
				UIStroke,
				as,
				av,
				aw,
				ai("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Name = "Main",

					Visible = false,
					ZIndex = 97,
				}, {
					ai("UICorner", {
						CornerRadius = UDim.new(0, aq.UICorner),
					}),
					aq.UIElements.SideBarContainer,
					aq.UIElements.MainBar,

					ay,

					aA,
					ai("Frame", {
						Size = UDim2.new(1, 0, 0, 52),
						BackgroundTransparency = 1,
						BackgroundColor3 = Color3.fromRGB(50, 50, 50),
						Name = "Topbar",
					}, {
						az,

						ai("Frame", {
							AutomaticSize = "X",
							Size = UDim2.new(0, 0, 1, 0),
							BackgroundTransparency = 1,
							Name = "Left",
						}, {
							ai("UIListLayout", {
								Padding = UDim.new(0, aq.UIPadding + 4),
								SortOrder = "LayoutOrder",
								FillDirection = "Horizontal",
								VerticalAlignment = "Center",
							}),
							ai("Frame", {
								AutomaticSize = "XY",
								BackgroundTransparency = 1,
								Name = "Title",
								Size = UDim2.new(0, 0, 1, 0),
								LayoutOrder = 2,
							}, {
								ai("UIListLayout", {
									Padding = UDim.new(0, 0),
									SortOrder = "LayoutOrder",
									FillDirection = "Vertical",
									VerticalAlignment = "Center",
								}),
								LoadPackageJson,
								CreatePandaDev,
							}),
							ai("UIPadding", {
								PaddingLeft = UDim.new(0, 4),
							}),
						}),
						ai("ScrollingFrame", {
							Name = "Center",
							BackgroundTransparency = 1,
							AutomaticSize = "Y",
							ScrollBarThickness = 0,
							ScrollingDirection = "X",
							AutomaticCanvasSize = "X",
							CanvasSize = UDim2.new(0, 0, 0, 0),
							Size = UDim2.new(0, 0, 1, 0),
							AnchorPoint = Vector2.new(0, 0.5),
							Position = UDim2.new(0, 0, 0.5, 0),
							Visible = false,
						}, {
							ai("UIListLayout", {
								FillDirection = "Horizontal",
								VerticalAlignment = "Center",
								HorizontalAlignment = "Left",
								Padding = UDim.new(0, aq.UIPadding / 2),
							}),
						}),
						ai("Frame", {
							AutomaticSize = "XY",
							BackgroundTransparency = 1,
							Position = UDim2.new(1, 0, 0.5, 0),
							AnchorPoint = Vector2.new(1, 0.5),
							Name = "Right",
						}, {
							ai("UIListLayout", {
								Padding = UDim.new(0, 9),
								FillDirection = "Horizontal",
								SortOrder = "LayoutOrder",
							}),
						}),
						ai("UIPadding", {
							PaddingTop = UDim.new(0, aq.UIPadding),
							PaddingLeft = UDim.new(0, aq.UIPadding),
							PaddingRight = UDim.new(0, 8),
							PaddingBottom = UDim.new(0, aq.UIPadding),
						}),
					}),
				}),
			})

			ag.AddSignal(aq.UIElements.Main.Main.Topbar.Left:GetPropertyChangedSignal("AbsoluteSize"), function()
				local CreateButton = 0
				local CreateInput = aq.UIElements.Main.Main.Topbar.Right.UIListLayout.AbsoluteContentSize.X
				if LoadPackageJson and CreatePandaDev then
					CreateButton = math.max(LoadPackageJson.TextBounds.X, CreatePandaDev.TextBounds.X)
				else
					CreateButton = LoadPackageJson.TextBounds.X
				end
				if LoadKeyServices then
					CreateButton = CreateButton + aq.IconSize + aq.UIPadding + 4
				end
				aq.UIElements.Main.Main.Topbar.Center.Position = UDim2.new(0, CreateButton + aq.UIPadding, 0.5, 0)
				aq.UIElements.Main.Main.Topbar.Center.Size = UDim2.new(1, -CreateButton - CreateInput - (aq.UIPadding * 2), 1, 0)
			end)

			function aq.CreateTopbarButton(CreateButton, CreateInput, CreateKeySystem, UtilViewport, AcrylicManager, LoadAllThemes)
				local CreateTag = ag.Image(CreateKeySystem, CreateKeySystem, 0, aq.Folder, "TopbarIcon", true, LoadAllThemes)
				CreateTag.Size = UDim2.new(0, 16, 0, 16)
				CreateTag.AnchorPoint = Vector2.new(0.5, 0.5)
				CreateTag.Position = UDim2.new(0.5, 0, 0.5, 0)

				local ConfigManager = ag.NewRoundFrame(9, "Squircle", {
					Size = UDim2.new(0, 36, 0, 36),
					LayoutOrder = AcrylicManager or 999,
					Parent = aq.UIElements.Main.Main.Topbar.Right,

					ZIndex = 9999,
					ThemeTag = {
						ImageColor3 = "Text",
					},
					ImageTransparency = 1,
				}, {
					ag.NewRoundFrame(9, "SquircleOutline", {
						Size = UDim2.new(1, 0, 1, 0),
						ThemeTag = {
							ImageColor3 = "Text",
						},
						ImageTransparency = 1,
						Name = "Outline",
					}, {
						ai("UIGradient", {
							Rotation = 45,
							Color = ColorSequence.new({
								ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 255, 255)),
								ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
								ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 255, 255)),
							}),
							Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0.0, 0.1),
								NumberSequenceKeypoint.new(0.5, 1),
								NumberSequenceKeypoint.new(1.0, 0.1),
							}),
						}),
					}),
					CreateTag,
				}, true)

				aq.TopBarButtons[100 - AcrylicManager] = {
					Name = CreateInput,
					Object = ConfigManager,
				}

				ag.AddSignal(ConfigManager.MouseButton1Click, function()
					UtilViewport()
				end)
				ag.AddSignal(ConfigManager.MouseEnter, function()
					aj(ConfigManager, 0.15, { ImageTransparency = 0.93 }):Play()
					aj(ConfigManager.Outline, 0.15, { ImageTransparency = 0.75 }):Play()
				end)
				ag.AddSignal(ConfigManager.MouseLeave, function()
					aj(ConfigManager, 0.1, { ImageTransparency = 1 }):Play()
					aj(ConfigManager.Outline, 0.1, { ImageTransparency = 1 }):Play()
				end)

				return ConfigManager
			end

			local CreateButton = ag.Drag(aq.UIElements.Main, { aq.UIElements.Main.Main.Topbar, CreateLocalization.Frame }, function(CreateButton, CreateInput)
				if not aq.Closed then
					if CreateButton and CreateInput == CreateLocalization.Frame then
						aj(CreateLocalization, 0.1, { ImageTransparency = 0.35 }):Play()
					else
						aj(CreateLocalization, 0.2, { ImageTransparency = 0.8 }):Play()
					end
					aq.Position = aq.UIElements.Main.Position
					aq.Dragging = CreateButton
				end
			end)

			if not aB and aq.Background and typeof(aq.Background) == "table" then
				local CreateInput = ai("UIGradient")
				for CreateKeySystem, UtilViewport in next, aq.Background do
					CreateInput[CreateKeySystem] = UtilViewport
				end

				aq.UIElements.BackgroundGradient = ag.NewRoundFrame(aq.UICorner, "Squircle", {
					Size = UDim2.new(1, 0, 1, 0),
					Parent = aq.UIElements.Main.Background,
					ImageTransparency = aq.Transparent and ap.WindUI.TransparencyValue or 0,
				}, {
					CreateInput,
				})
			end

			aq.OpenButtonMain = WindUI.load("CreateOpenButton").New(aq)

			task.spawn(function()
				if aq.Icon then
					LoadKeyServices = ag.Image(aq.Icon, aq.Title, 0, aq.Folder, "Window", true, aq.IconThemed)
					LoadKeyServices.Parent = aq.UIElements.Main.Main.Topbar.Left
					LoadKeyServices.Size = UDim2.new(0, aq.IconSize, 0, aq.IconSize)

					aq.OpenButtonMain:SetIcon(aq.Icon)
				else
					aq.OpenButtonMain:SetIcon(aq.Icon)
				end
			end)

			function aq.SetToggleKey(CreateInput, CreateKeySystem)
				aq.ToggleKey = CreateKeySystem
			end

			function aq.SetTitle(CreateInput, CreateKeySystem)
				aq.Title = CreateKeySystem
				LoadPackageJson.Text = CreateKeySystem
			end

			function aq.SetAuthor(CreateInput, CreateKeySystem)
				aq.Author = CreateKeySystem
				if not CreatePandaDev then
					CreatePandaDev = createAuthor(aq.Author)
				end

				CreatePandaDev.Text = CreateKeySystem
			end

			function aq.SetBackgroundImage(CreateInput, CreateKeySystem)
				aq.UIElements.Main.Background.ImageLabel.Image = CreateKeySystem
			end
			function aq.SetBackgroundImageTransparency(CreateInput, CreateKeySystem)
				if aC and aC:IsA("ImageLabel") then
					aC.ImageTransparency = math.floor(CreateKeySystem + 0.5)
				end
				aq.BackgroundImageTransparency = math.floor(CreateKeySystem + 0.5)
			end
			function aq.SetBackgroundTransparency(CreateInput, CreateKeySystem)
				WindUI.TransparencyValue = math.floor(tonumber(CreateKeySystem) + 0.5)
				aq:ToggleTransparency(math.floor(tonumber(CreateKeySystem) + 0.5) > 0)
			end

			local CreateInput
			local CreateKeySystem
			ag.Icon("minimize")
			ag.Icon("maximize")

			aq:CreateTopbarButton("Fullscreen", "maximize", function()
				aq:ToggleFullscreen()
			end, 998)

			function aq.ToggleFullscreen(UtilViewport)
				local AcrylicManager = aq.IsFullscreen

				CreateButton:Set(AcrylicManager)

				if not AcrylicManager then
					CreateInput = aq.UIElements.Main.Position
					CreateKeySystem = aq.UIElements.Main.Size

					aq.CanResize = false
				else
					if aq.Resizable then
						aq.CanResize = true
					end
				end

				aj(
					aq.UIElements.Main,
					0.45,
					{ Size = AcrylicManager and CreateKeySystem or UDim2.new(1, -20, 1, -72) },
					Enum.EasingStyle.Quint,
					Enum.EasingDirection.Out
				):Play()

				aj(
					aq.UIElements.Main,
					0.45,
					{ Position = AcrylicManager and CreateInput or UDim2.new(0.5, 0, 0.5, 26) },
					Enum.EasingStyle.Quint,
					Enum.EasingDirection.Out
				):Play()

				aq.IsFullscreen = not AcrylicManager
			end

			aq:CreateTopbarButton("Minimize", "minus", function()
				aq:Close()
				task.spawn(function()
					task.wait(0.3)
					if not aq.IsPC and aq.IsOpenButtonEnabled then
						aq.OpenButtonMain:Visible(true)
					end
				end)
			end, 997)

			function aq.OnOpen(UtilViewport, AcrylicManager)
				aq.OnOpenCallback = AcrylicManager
			end
			function aq.OnClose(UtilViewport, AcrylicManager)
				aq.OnCloseCallback = AcrylicManager
			end
			function aq.OnDestroy(UtilViewport, AcrylicManager)
				aq.OnDestroyCallback = AcrylicManager
			end

			function aq.SetIconSize(UtilViewport, AcrylicManager)
				local LoadAllThemes
				if typeof(AcrylicManager) == "number" then
					LoadAllThemes = UDim2.new(0, AcrylicManager, 0, AcrylicManager)
					aq.IconSize = AcrylicManager
				elseif typeof(AcrylicManager) == "UDim2" then
					LoadAllThemes = AcrylicManager
					aq.IconSize = AcrylicManager.X.Offset
				end

				if LoadKeyServices then
					LoadKeyServices.Size = LoadAllThemes
				end
			end

			function aq.Open(UtilViewport)
				task.spawn(function()
					if aq.OnOpenCallback then
						task.spawn(function()
							ag.SafeCallback(aq.OnOpenCallback)
						end)
					end

					task.wait(0.06)
					aq.Closed = false

					aj(aq.UIElements.Main.Background, 0.2, {
						ImageTransparency = aq.Transparent and ap.WindUI.TransparencyValue or 0,
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()

					if aq.UIElements.BackgroundGradient then
						aj(aq.UIElements.BackgroundGradient, 0.2, {
							ImageTransparency = 0,
						}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					end

					aj(aq.UIElements.Main.Background, 0.4, {
						Size = UDim2.new(1, 0, 1, 0),
					}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()

					if aC then
						if aC:IsA("VideoFrame") then
							aC.Visible = true
						else
							aj(aC, 0.2, {
								ImageTransparency = aq.BackgroundImageTransparency,
							}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
						end
					end

					aj(ax, 0.25, { ImageTransparency = 0.7 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					if UIStroke then
						aj(UIStroke, 0.25, { Transparency = 0.8 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					end

					task.spawn(function()
						task.wait(0.3)
						aj(
							CreateLocalization,
							0.45,
							{ Size = UDim2.new(0, 200, 0, 4), ImageTransparency = 0.8 },
							Enum.EasingStyle.Exponential,
							Enum.EasingDirection.Out
						):Play()
						CreateButton:Set(true)
						task.wait(0.45)
						if aq.Resizable then
							aj(
								at.ImageLabel,
								0.45,
								{ ImageTransparency = 0.8 },
								Enum.EasingStyle.Exponential,
								Enum.EasingDirection.Out
							):Play()
							aq.CanResize = true
						end
					end)

					aq.CanDropdown = true

					aq.UIElements.Main.Visible = true
					task.spawn(function()
						task.wait(0.05)
						aq.UIElements.Main:WaitForChild("Main").Visible = true
					end)
				end)
			end
			function aq.Close(UtilViewport)
				local AcrylicManager = {}

				if aq.OnCloseCallback then
					task.spawn(function()
						ag.SafeCallback(aq.OnCloseCallback)
					end)
				end

				aq.UIElements.Main:WaitForChild("Main").Visible = false

				aq.CanDropdown = false
				aq.Closed = true

				aj(aq.UIElements.Main.Background, 0.32, {
					ImageTransparency = 1,
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play()
				if aq.UIElements.BackgroundGradient then
					aj(aq.UIElements.BackgroundGradient, 0.32, {
						ImageTransparency = 1,
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play()
				end

				aj(aq.UIElements.Main.Background, 0.4, {
					Size = UDim2.new(1, 0, 1, -240),
				}, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut):Play()

				if aC then
					if aC:IsA("VideoFrame") then
						aC.Visible = false
					else
						aj(aC, 0.3, {
							ImageTransparency = 1,
						}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					end
				end
				aj(ax, 0.25, { ImageTransparency = 1 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				if UIStroke then
					aj(UIStroke, 0.25, { Transparency = 1 }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				end

				aj(
					CreateLocalization,
					0.3,
					{ Size = UDim2.new(0, 0, 0, 4), ImageTransparency = 1 },
					Enum.EasingStyle.Exponential,
					Enum.EasingDirection.InOut
				):Play()
				aj(
					at.ImageLabel,
					0.3,
					{ ImageTransparency = 1 },
					Enum.EasingStyle.Exponential,
					Enum.EasingDirection.Out
				):Play()
				CreateButton:Set(false)
				aq.CanResize = false

				task.spawn(function()
					task.wait(0.4)
					aq.UIElements.Main.Visible = false
				end)

				function AcrylicManager.Destroy(LoadAllThemes)
					if aq.OnDestroyCallback then
						task.spawn(function()
							ag.SafeCallback(aq.OnDestroyCallback)
						end)
					end

					aq.Destroyed = true
					task.wait(0.4)
					ap.WindUI.ScreenGui:Destroy()
					ap.WindUI.NotificationGui:Destroy()
					ap.WindUI.DropdownGui:Destroy()
				end

				return AcrylicManager
			end
			function aq.Destroy(UtilViewport)
				return aq:Close():Destroy()
			end
			function aq.Toggle(UtilViewport)
				if aq.Closed then
					aq:Open()
				else
					aq:Close()
				end
			end

			function aq.ToggleTransparency(UtilViewport, AcrylicManager)
				aq.Transparent = AcrylicManager
				ap.WindUI.Transparent = AcrylicManager

				aq.UIElements.Main.Background.ImageTransparency = AcrylicManager and ap.WindUI.TransparencyValue or 0

				aq.UIElements.MainBar.Background.ImageTransparency = AcrylicManager and 0.97 or 0.95
			end

			function aq.LockAll(UtilViewport)
				for AcrylicManager, LoadAllThemes in next, aq.AllElements do
					if LoadAllThemes.Lock then
						LoadAllThemes:Lock()
					end
				end
			end
			function aq.UnlockAll(UtilViewport)
				for AcrylicManager, LoadAllThemes in next, aq.AllElements do
					if LoadAllThemes.Unlock then
						LoadAllThemes:Unlock()
					end
				end
			end
			function aq.GetLocked(UtilViewport)
				local AcrylicManager = {}

				for LoadAllThemes, CreateTag in next, aq.AllElements do
					if CreateTag.Locked then
						table.insert(AcrylicManager, CreateTag)
					end
				end

				return AcrylicManager
			end
			function aq.GetUnlocked(UtilViewport)
				local AcrylicManager = {}

				for LoadAllThemes, CreateTag in next, aq.AllElements do
					if CreateTag.Locked == false then
						table.insert(AcrylicManager, CreateTag)
					end
				end

				return AcrylicManager
			end

			function aq.GetUIScale(UtilViewport, AcrylicManager)
				return ap.WindUI.UIScale
			end

			function aq.SetUIScale(UtilViewport, AcrylicManager)
				ap.WindUI.UIScale = AcrylicManager
				aj(ap.WindUI.ScreenGui.UIScale, 0.2, { Scale = AcrylicManager }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				return aq
			end

			function aq.SetToTheCenter(UtilViewport)
				aj(
					aq.UIElements.Main,
					0.45,
					{ Position = UDim2.new(0.5, 0, 0.5, 0) },
					Enum.EasingStyle.Quint,
					Enum.EasingDirection.Out
				):Play()
				return aq
			end

			do
				local UtilViewport = 40
				local AcrylicManager = ae.ViewportSize
				local LoadAllThemes = aq.UIElements.Main.AbsoluteSize

				if not aq.IsFullscreen and aq.AutoScale then
					local CreateTag = AcrylicManager.X - (UtilViewport * 2)
					local ConfigManager = AcrylicManager.Y - (UtilViewport * 2)

					local CreateButtonEx = CreateTag / LoadAllThemes.X
					local CreateToggle = ConfigManager / LoadAllThemes.Y

					local CreateCheckbox = math.min(CreateButtonEx, CreateToggle)

					local CreateKeybind = 0.3
					local CreateInputEx = 1.0

					local CreateDropdownMenu = math.clamp(CreateCheckbox, CreateKeybind, CreateInputEx)

					local LuaHighlighter = aq:GetUIScale() or 1
					local CreateCode = 0.05

					if math.abs(CreateDropdownMenu - LuaHighlighter) > CreateCode then
						aq:SetUIScale(CreateDropdownMenu)
					end
				end
			end

			if aq.OpenButtonMain and aq.OpenButtonMain.Button then
				ag.AddSignal(aq.OpenButtonMain.Button.TextButton.MouseButton1Click, function()
					aq.OpenButtonMain:Visible(false)
					aq:Open()
				end)
			end

			ag.AddSignal(ac.InputBegan, function(UtilViewport, AcrylicManager)
				if AcrylicManager then
					return
				end

				if aq.ToggleKey then
					if UtilViewport.KeyCode == aq.ToggleKey then
						aq:Toggle()
					end
				end
			end)

			task.spawn(function()
				aq:Open()
			end)

			function aq.EditOpenButton(UtilViewport, AcrylicManager)
				return aq.OpenButtonMain:Edit(AcrylicManager)
			end

			if aq.OpenButton and typeof(aq.OpenButton) == "table" then
				aq:EditOpenButton(aq.OpenButton)
			end

			local UtilViewport = WindUI.load("TabManager")
			local AcrylicManager = WindUI.load("SectionManager")
			local LoadAllThemes = UtilViewport.Init(aq, ap.WindUI, ap.Parent.Parent.ToolTips)
			LoadAllThemes:OnChange(function(CreateTag)
				aq.CurrentTab = CreateTag
			end)

			aq.TabModule = UtilViewport

			function aq.Tab(CreateTag, ConfigManager)
				ConfigManager.Parent = aq.UIElements.SideBar.Frame
				return LoadAllThemes.New(ConfigManager, ap.WindUI.UIScale)
			end

			function aq.SelectTab(CreateTag, ConfigManager)
				LoadAllThemes:SelectTab(ConfigManager)
			end

			function aq.Section(CreateTag, ConfigManager)
				return AcrylicManager.New(ConfigManager, aq.UIElements.SideBar.Frame, aq.Folder, ap.WindUI.UIScale, aq)
			end

			function aq.IsResizable(CreateTag, ConfigManager)
				aq.Resizable = ConfigManager
				aq.CanResize = ConfigManager
			end

			function aq.Divider(CreateTag)
				local ConfigManager = ai("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0.5, 0, 0, 0),
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = 0.9,
					ThemeTag = {
						BackgroundColor3 = "Text",
					},
				})
				local CreateButtonEx = ai("Frame", {
					Parent = aq.UIElements.SideBar.Frame,

					Size = UDim2.new(1, -7, 0, 5),
					BackgroundTransparency = 1,
				}, {
					ConfigManager,
				})

				return CreateButtonEx
			end

			local CreateTag = WindUI.load("CreateDialog").Init(aq, nil)
			function aq.Dialog(ConfigManager, CreateButtonEx)
				local CreateToggle = {
					Title = CreateButtonEx.Title or "Dialog",
					Width = CreateButtonEx.Width or 320,
					Content = CreateButtonEx.Content,
					Buttons = CreateButtonEx.Buttons or {},

					TextPadding = 10,
				}
				local CreateCheckbox = CreateTag.Create(false)

				CreateCheckbox.UIElements.Main.Size = UDim2.new(0, CreateToggle.Width, 0, 0)

				local CreateKeybind = ai("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					BackgroundTransparency = 1,
					Parent = CreateCheckbox.UIElements.Main,
				}, {
					ai("UIListLayout", {
						FillDirection = "Horizontal",
						Padding = UDim.new(0, CreateCheckbox.UIPadding),
						VerticalAlignment = "Center",
					}),
					ai("UIPadding", {
						PaddingTop = UDim.new(0, CreateToggle.TextPadding / 2),
						PaddingLeft = UDim.new(0, CreateToggle.TextPadding / 2),
						PaddingRight = UDim.new(0, CreateToggle.TextPadding / 2),
					}),
				})

				local CreateInputEx
				if CreateButtonEx.Icon then
					CreateInputEx = ag.Image(CreateButtonEx.Icon, CreateToggle.Title .. ":" .. CreateButtonEx.Icon, 0, aq, "Dialog", true, CreateButtonEx.IconThemed)
					CreateInputEx.Size = UDim2.new(0, 22, 0, 22)
					CreateInputEx.Parent = CreateKeybind
				end

				CreateCheckbox.UIElements.UIListLayout = ai("UIListLayout", {
					Padding = UDim.new(0, 12),
					FillDirection = "Vertical",
					HorizontalAlignment = "Left",
					Parent = CreateCheckbox.UIElements.Main,
				})

				ai("UISizeConstraint", {
					MinSize = Vector2.new(180, 20),
					MaxSize = Vector2.new(400, math.huge),
					Parent = CreateCheckbox.UIElements.Main,
				})

				CreateCheckbox.UIElements.Title = ai("TextLabel", {
					Text = CreateToggle.Title,
					TextSize = 20,
					FontFace = Font.new(ag.Font, Enum.FontWeight.SemiBold),
					TextXAlignment = "Left",
					TextWrapped = true,
					RichText = true,
					Size = UDim2.new(1, CreateInputEx and -26 - CreateCheckbox.UIPadding or 0, 0, 0),
					AutomaticSize = "Y",
					ThemeTag = {
						TextColor3 = "Text",
					},
					BackgroundTransparency = 1,
					Parent = CreateKeybind,
				})
				if CreateToggle.Content then
					ai("TextLabel", {
						Text = CreateToggle.Content,
						TextSize = 18,
						TextTransparency = 0.4,
						TextWrapped = true,
						RichText = true,
						FontFace = Font.new(ag.Font, Enum.FontWeight.Medium),
						TextXAlignment = "Left",
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = "Y",
						LayoutOrder = 2,
						ThemeTag = {
							TextColor3 = "Text",
						},
						BackgroundTransparency = 1,
						Parent = CreateCheckbox.UIElements.Main,
					}, {
						ai("UIPadding", {
							PaddingLeft = UDim.new(0, CreateToggle.TextPadding / 2),
							PaddingRight = UDim.new(0, CreateToggle.TextPadding / 2),
							PaddingBottom = UDim.new(0, CreateToggle.TextPadding / 2),
						}),
					})
				end

				local CreateDropdownMenu = ai("UIListLayout", {
					Padding = UDim.new(0, 6),
					FillDirection = "Horizontal",
					HorizontalAlignment = "Right",
				})

				local LuaHighlighter = ai("Frame", {
					Size = UDim2.new(1, 0, 0, 40),
					AutomaticSize = "None",
					BackgroundTransparency = 1,
					Parent = CreateCheckbox.UIElements.Main,
					LayoutOrder = 4,
				}, {
					CreateDropdownMenu,
				})

				local CreateCode = {}

				for CreateColorpicker, CreateSection in next, CreateToggle.Buttons do
					local CreateDivider = al(CreateSection.Title, CreateSection.Icon, CreateSection.Callback, CreateSection.Variant, LuaHighlighter, CreateCheckbox, false)
					table.insert(CreateCode, CreateDivider)
				end

				local function CheckButtonsOverflow()
					CreateDropdownMenu.FillDirection = Enum.FillDirection.Horizontal
					CreateDropdownMenu.HorizontalAlignment = Enum.HorizontalAlignment.Right
					CreateDropdownMenu.VerticalAlignment = Enum.VerticalAlignment.Center
					LuaHighlighter.AutomaticSize = Enum.AutomaticSize.None

					for CreateDivider, CreateSpace in ipairs(CreateCode) do
						CreateSpace.Size = UDim2.new(0, 0, 1, 0)
						CreateSpace.AutomaticSize = Enum.AutomaticSize.X
					end

					wait()

					local CreateImage = CreateDropdownMenu.AbsoluteContentSize.X / ap.WindUI.UIScale
					local ElementLoader = LuaHighlighter.AbsoluteSize.X / ap.WindUI.UIScale

					if CreateImage > ElementLoader then
						CreateDropdownMenu.FillDirection = Enum.FillDirection.Vertical
						CreateDropdownMenu.HorizontalAlignment = Enum.HorizontalAlignment.Right
						CreateDropdownMenu.VerticalAlignment = Enum.VerticalAlignment.Bottom
						LuaHighlighter.AutomaticSize = Enum.AutomaticSize.Y

						for TabManager, SectionManager in ipairs(CreateCode) do
							SectionManager.Size = UDim2.new(1, 0, 0, 40)
							SectionManager.AutomaticSize = Enum.AutomaticSize.None
						end
					else
						local TabManager = ElementLoader - CreateImage
						if TabManager > 0 then
							local SectionManager
							local IconAtlas = math.huge

							for SearchModal, WindowBuilder in ipairs(CreateCode) do
								local X = WindowBuilder.AbsoluteSize.X / ap.WindUI.UIScale
								if X < IconAtlas then
									IconAtlas = X
									SectionManager = WindowBuilder
								end
							end

							if SectionManager then
								SectionManager.Size = UDim2.new(0, IconAtlas + TabManager, 1, 0)
								SectionManager.AutomaticSize = Enum.AutomaticSize.None
							end
						end
					end
				end

				ag.AddSignal(CreateCheckbox.UIElements.Main:GetPropertyChangedSignal("AbsoluteSize"), CheckButtonsOverflow)
				CheckButtonsOverflow()

				wait()
				CreateCheckbox:Open()

				return CreateCheckbox
			end

			aq:CreateTopbarButton("Close", "CreateTooltip", function()
				aq:SetToTheCenter()
				aq:Dialog({

					Title = "Close Window",
					Content = "Do you want to close this window? You will not be able to open it again.",
					Buttons = {
						{
							Title = "Cancel",

							Callback = function() end,
							Variant = "Secondary",
						},
						{
							Title = "Close Window",

							Callback = function()
								aq:Close():Destroy()
							end,
							Variant = "Primary",
						},
					},
				})
			end, 999)

			function aq.Tag(ConfigManager, CreateButtonEx)
				if aq.UIElements.Main.Main.Topbar.Center.Visible == false then
					aq.UIElements.Main.Main.Topbar.Center.Visible = true
				end
				return an:New(CreateButtonEx, aq.UIElements.Main.Main.Topbar.Center)
			end

			local function startResizing(ConfigManager)
				if aq.CanResize then
					isResizing = true
					av.Active = true
					initialSize = aq.UIElements.Main.Size
					initialInputPosition = ConfigManager.Position

					aj(at.ImageLabel, 0.1, { ImageTransparency = 0.35 }):Play()

					ag.AddSignal(ConfigManager.Changed, function()
						if ConfigManager.UserInputState == Enum.UserInputState.End then
							isResizing = false
							av.Active = false

							aj(at.ImageLabel, 0.17, { ImageTransparency = 0.8 }):Play()
						end
					end)
				end
			end

			ag.AddSignal(at.InputBegan, function(ConfigManager)
				if
					ConfigManager.UserInputType == Enum.UserInputType.MouseButton1
					or ConfigManager.UserInputType == Enum.UserInputType.Touch
				then
					if aq.CanResize then
						startResizing(ConfigManager)
					end
				end
			end)

			ag.AddSignal(ac.InputChanged, function(ConfigManager)
				if
					ConfigManager.UserInputType == Enum.UserInputType.MouseMovement
					or ConfigManager.UserInputType == Enum.UserInputType.Touch
				then
					if isResizing and aq.CanResize then
						local CreateButtonEx = ConfigManager.Position - initialInputPosition
						local CreateToggle = UDim2.new(0, initialSize.X.Offset + CreateButtonEx.X * 2, 0, initialSize.Y.Offset + CreateButtonEx.Y * 2)

						CreateToggle = UDim2.new(
							CreateToggle.X.Scale,
							math.clamp(CreateToggle.X.Offset, aq.MinSize.X, aq.MaxSize.X),
							CreateToggle.Y.Scale,
							math.clamp(CreateToggle.Y.Offset, aq.MinSize.Y, aq.MaxSize.Y)
						)

						aj(aq.UIElements.Main, 0, {
							Size = CreateToggle,
						}):Play()

						aq.Size = CreateToggle
					end
				end
			end)

			local ConfigManager = 0
			local CreateButtonEx = 0.4
			local CreateToggle
			local CreateCheckbox = 0

			function onDoubleClick()
				aq:SetToTheCenter()
			end

			CreateLocalization.Frame.MouseButton1Up:Connect(function()
				local CreateKeybind = tick()
				local CreateInputEx = aq.Position

				CreateCheckbox = CreateCheckbox + 1

				if CreateCheckbox == 1 then
					ConfigManager = CreateKeybind
					CreateToggle = CreateInputEx

					task.spawn(function()
						task.wait(CreateButtonEx)
						if CreateCheckbox == 1 then
							CreateCheckbox = 0
							CreateToggle = nil
						end
					end)
				elseif CreateCheckbox == 2 then
					if CreateKeybind - ConfigManager <= CreateButtonEx and CreateInputEx == CreateToggle then
						onDoubleClick()
					end

					CreateCheckbox = 0
					CreateToggle = nil
					ConfigManager = 0
				else
					CreateCheckbox = 1
					ConfigManager = CreateKeybind
					CreateToggle = CreateInputEx
				end
			end)

			if not aq.HideSearchBar then
				local CreateKeybind = WindUI.load("SearchModal")
				local CreateInputEx = false

				local CreateDropdownMenu = ak("Search", "search", aq.UIElements.SideBarContainer, true)
				CreateDropdownMenu.Size = UDim2.new(1, -aq.UIPadding / 2, 0, 39)
				CreateDropdownMenu.Position = UDim2.new(0, aq.UIPadding / 2, 0, aq.UIPadding / 2)

				ag.AddSignal(CreateDropdownMenu.MouseButton1Click, function()
					if CreateInputEx then
						return
					end

					CreateKeybind.new(aq.TabModule, aq.UIElements.Main, function()
						CreateInputEx = false
						if aq.Resizable then
							aq.CanResize = true
						end

						aj(aw, 0.1, { ImageTransparency = 1 }):Play()
						aw.Active = false
					end)
					aj(aw, 0.1, { ImageTransparency = 0.65 }):Play()
					aw.Active = true

					CreateInputEx = true
					aq.CanResize = false
				end)
			end

			function aq.DisableTopbarButtons(CreateKeybind, CreateInputEx)
				for CreateDropdownMenu, LuaHighlighter in next, CreateInputEx do
					for CreateCode, CreateColorpicker in next, aq.TopBarButtons do
						if CreateColorpicker.Name == LuaHighlighter then
							CreateColorpicker.Object.Visible = false
						end
					end
				end
			end

			return aq
		end
	end
end
local ac = {
	Window = nil,
	Theme = nil,
	Creator = WindUI.load("WindUI"),
	LocalizationModule = WindUI.load("CreateLocalization"),
	NotificationModule = WindUI.load("CreateNotification"),
	Themes = nil,
	Transparent = false,

	TransparencyValue = 0.15,

	UIScale = 1,

	Version = "0.0.0",

	Services = WindUI.load("LoadKeyServices"),

	OnThemeChangeFunction = nil,
}

local ae = game:GetService("HttpService")

local ag = ae:JSONDecode(WindUI.load("LoadPackageJson"))
if ag then
	ac.Version = ag.version
end

local ai = WindUI.load("CreateKeySystem")
local aj = 
ac.Services

local ak = ac.Creator

local al = ak.New
local am = ak.Tween

local an = WindUI.load("AcrylicManager")
local ao = 
game:GetService("Players") and game:GetService("Players").LocalPlayer or nil

local ap = protectgui or (syn and syn.protect_gui) or function() end

local aq = gethui and gethui() or (game.CoreGui or game.Players.LocalPlayer:WaitForChild("PlayerGui"))

ac.ScreenGui = al("ScreenGui", {
	Name = "WindUI",
	Parent = aq,
	IgnoreGuiInset = true,
	ScreenInsets = "None",
}, {
	al("UIScale", {
		Scale = ac.Scale,
	}),
	al("Folder", {
		Name = "Window",
	}),

	al("Folder", {
		Name = "KeySystem",
	}),
	al("Folder", {
		Name = "Popups",
	}),
	al("Folder", {
		Name = "ToolTips",
	}),
})

ac.NotificationGui = al("ScreenGui", {
	Name = "WindUI/Notifications",
	Parent = aq,
	IgnoreGuiInset = true,
})
ac.DropdownGui = al("ScreenGui", {
	Name = "WindUI/Dropdowns",
	Parent = aq,
	IgnoreGuiInset = true,
})
ap(ac.ScreenGui)
ap(ac.NotificationGui)
ap(ac.DropdownGui)

ak.Init(ac)

math.clamp(ac.TransparencyValue, 0, 1)

local ar = ac.NotificationModule.Init(ac.NotificationGui)

function ac.Notify(as, at)
	at.Holder = ar.Frame
	at.Window = ac.Window

	return ac.NotificationModule.New(at)
end

function ac.SetNotificationLower(as, at)
	ar.SetLower(at)
end

function ac.SetFont(as, at)
	ak.UpdateFont(at)
end

function ac.OnThemeChange(as, at)
	ac.OnThemeChangeFunction = at
end

function ac.AddTheme(as, at)
	ac.Themes[at.Name] = at
	return at
end

function ac.SetTheme(as, at)
	if ac.Themes[at] then
		ac.Theme = ac.Themes[at]
		ak.SetTheme(ac.Themes[at])

		if ac.OnThemeChangeFunction then
			ac.OnThemeChangeFunction(at)
		end

		return ac.Themes[at]
	end
	return nil
end

function ac.GetThemes(as)
	return ac.Themes
end
function ac.GetCurrentTheme(as)
	return ac.Theme.Name
end
function ac.GetTransparency(as)
	return ac.Transparent or false
end
function ac.GetWindowSize(as)
	return Window.UIElements.Main.Size
end
function ac.Localization(as, at)
	return ac.LocalizationModule:New(at, ak)
end

function ac.SetLanguage(as, at)
	if ak.Localization then
		return ak.SetLanguage(at)
	end
	return false
end

function ac.ToggleAcrylic(as, at)
	if ac.Window and ac.Window.AcrylicPaint and ac.Window.AcrylicPaint.Model then
		ac.Window.Acrylic = at
		ac.Window.AcrylicPaint.Model.Transparency = at and 0.98 or 1
		if at then
			an.Enable()
		else
			an.Disable()
		end
	end
end

function ac.Gradient(as, at, av)
	local aw = {}
	local ax = {}

	for ay, az in next, at do
		local aA = tonumber(ay)
		if aA then
			aA = math.clamp(aA / 100, 0, 1)
			table.insert(aw, ColorSequenceKeypoint.new(aA, az.Color))
			table.insert(ax, NumberSequenceKeypoint.new(aA, az.Transparency or 0))
		end
	end

	table.sort(aw, function(aA, aB)
		return aA.Time < aB.Time
	end)
	table.sort(ax, function(aA, aB)
		return aA.Time < aB.Time
	end)

	if #aw < 2 then
		error("ColorSequence requires at least 2 keypoints")
	end

	local aA = {
		Color = ColorSequence.new(aw),
		Transparency = NumberSequence.new(ax),
	}

	if av then
		for aB, aC in pairs(av) do
			aA[aB] = aC
		end
	end

	return aA
end

function ac.Popup(as, at)
	at.WindUI = ac
	return WindUI.load("CreatePopup").new(at)
end

ac.Themes = WindUI.load("LoadAllThemes")(ac)

ak.Themes = ac.Themes

ac:SetTheme("Dark")
ac:SetLanguage(ak.Language)

function ac.CreateWindow(as, at)
	local av = WindUI.load("WindowBuilder")

	if not isfolder("WindUI") then
		makefolder("WindUI")
	end
	if at.Folder then
		makefolder(at.Folder)
	else
		makefolder(at.Title)
	end

	at.WindUI = ac
	at.Parent = ac.ScreenGui.Window

	if ac.Window then
		warn("You cannot create more than one window")
		return
	end

	local aw = true

	local ax = ac.Themes[at.Theme or "Dark"]

	ak.SetTheme(ax)

	local ay = gethwid or function()
		return game:GetService("Players").LocalPlayer.UserId
	end

	local az = ay()

	if at.KeySystem then
		aw = false

		local function loadKeysystem()
			ai.new(at, az, function(aA)
				aw = aA
			end)
		end

		local aA = at.Folder .. "/" .. az .. ".key"

		if not at.KeySystem.API then
			if at.KeySystem.SaveKey and isfile(aA) then
				local aB = readfile(aA)
				local aC = (type(at.KeySystem.Key) == "table") and table.find(at.KeySystem.Key, aB)
					or tostring(at.KeySystem.Key) == tostring(aB)

				if aC then
					aw = true
				else
					loadKeysystem()
				end
			else
				loadKeysystem()
			end
		else
			if isfile(aA) then
				local aB = readfile(aA)
				local aC = false

				for aD, aE in next, at.KeySystem.API do
					local CreateLocalization = ac.Services[aE.Type]
					if CreateLocalization then
						local CreatePandaDev = {}
						for LoadKeyServices, LoadPackageJson in next, CreateLocalization.Args do
							table.insert(CreatePandaDev, aE[LoadPackageJson])
						end

						local CreateButton = CreateLocalization.New(table.unpack(CreatePandaDev))
						local CreateInput = CreateButton.Verify(aB)
						if CreateInput then
							aC = true
							break
						end
					end
				end

				aw = aC
				if not aC then
					loadKeysystem()
				end
			else
				loadKeysystem()
			end
		end

		repeat
			task.wait()
		until aw
	end

	local aA = av(at)

	ac.Transparent = at.Transparent
	ac.Window = aA

	if at.Acrylic then
		an.init()
	end

	return aA
end

return ac