local MonstersBoomboxGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local dupe = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local loud = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local audioid = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local monstersboomboxgui = Instance.new("TextLabel")
local visualize = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

MonstersBoomboxGUI.Name = "MonstersBoomboxGUI"
MonstersBoomboxGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MonstersBoomboxGUI.ResetOnSpawn = false

Frame.Parent = MonstersBoomboxGUI
Frame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Frame.Position = UDim2.new(0.683016121, 0, 0.150569305, 0)
Frame.Size = UDim2.new(0, 245, 0, 232)

dupe.Name = "dupe"
dupe.Parent = Frame
dupe.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
dupe.Position = UDim2.new(0.179591835, 0, 0.155500785, 0)
dupe.Size = UDim2.new(0, 157, 0, 36)
dupe.Font = Enum.Font.SourceSansBold
dupe.Text = "Dupe"
dupe.TextColor3 = Color3.fromRGB(255, 255, 255)
dupe.TextScaled = true
dupe.TextSize = 14.000
dupe.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = dupe

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Frame

loud.Name = "loud"
loud.Parent = Frame
loud.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
loud.Position = UDim2.new(0.179591835, 0, 0.596510708, 0)
loud.Size = UDim2.new(0, 157, 0, 36)
loud.Font = Enum.Font.SourceSansBold
loud.Text = "Loud"
loud.TextColor3 = Color3.fromRGB(255, 255, 255)
loud.TextScaled = true
loud.TextSize = 14.000
loud.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = loud

audioid.Name = "audioid"
audioid.Parent = Frame
audioid.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
audioid.Position = UDim2.new(0.0897959173, 0, 0.432783812, 0)
audioid.Size = UDim2.new(0, 200, 0, 30)
audioid.ClearTextOnFocus = false
audioid.Font = Enum.Font.SourceSans
audioid.PlaceholderText = "Audio ID"
audioid.Text = ""
audioid.TextColor3 = Color3.fromRGB(255, 255, 255)
audioid.TextSize = 17.000
audioid.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = audioid

monstersboomboxgui.Name = "monstersboomboxgui"
monstersboomboxgui.Parent = Frame
monstersboomboxgui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
monstersboomboxgui.BackgroundTransparency = 1.000
monstersboomboxgui.Position = UDim2.new(0.0285714287, 0, 0, 0)
monstersboomboxgui.Size = UDim2.new(0, 230, 0, 29)
monstersboomboxgui.Font = Enum.Font.SourceSansBold
monstersboomboxgui.Text = "Monsters Boombox GUI"
monstersboomboxgui.TextColor3 = Color3.fromRGB(255, 255, 255)
monstersboomboxgui.TextScaled = true
monstersboomboxgui.TextSize = 14.000
monstersboomboxgui.TextWrapped = true

visualize.Name = "visualize"
visualize.Parent = Frame
visualize.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
visualize.Position = UDim2.new(0.179591835, 0, 0.786165893, 0)
visualize.Size = UDim2.new(0, 157, 0, 36)
visualize.Font = Enum.Font.SourceSansBold
visualize.Text = "(Coming Soon)"
visualize.TextColor3 = Color3.fromRGB(255, 255, 255)
visualize.TextScaled = true
visualize.TextSize = 14.000
visualize.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = visualize

local function GBAKCPK_fake_script() -- dupe.hoverscript 
	local script = Instance.new('LocalScript', dupe)

	script.Parent.MouseEnter:Connect(function()
		script.Parent.Parent.clicksound:Play()
		script.Parent.BackgroundColor3 = Color3.fromRGB(60, 152, 250)
		script.Parent:TweenSize(UDim2.new(0, 157,0, 41),"Out","Quart",.5,true) --
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		script.Parent:TweenSize(UDim2.new(0, 157,0, 36),"Out","Quart",.5,true)
	end)
end
coroutine.wrap(GBAKCPK_fake_script)()
local function CYNH_fake_script() -- dupe.clickscript 
	local script = Instance.new('LocalScript', dupe)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.clicksound:Play()	
		local toolamount = 5
		for i = 0,toolamount,1 do
			local LocalPlayer, runservice = game:GetService("Players").LocalPlayer, game:GetService("RunService")
			LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
			LocalPlayer.Character.Archivable = true
			local tempchar, lastchar, savepos, currentamount = LocalPlayer.Character:Clone(), nil, LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame, #LocalPlayer.Backpack:GetChildren()
			tempchar.Parent = workspace
			repeat
				for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
					if tool:IsA("Tool") then
						tool.Parent = LocalPlayer
					end
				end
				LocalPlayer.Character:ClearAllChildren()
				local char = Instance.new("Model", workspace)
				Instance.new("Humanoid", char)
				LocalPlayer.Character = char
				if lastchar ~= nil then
					lastchar:Destroy()
				end
				repeat runservice.Heartbeat:Wait() until LocalPlayer.Character ~= nil
				workspace.CurrentCamera.CameraSubject = tempchar:FindFirstChild("Humanoid")
				lastchar = char
			until #LocalPlayer:GetChildren() - 2 - currentamount >= toolamount and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil
			lastchar:Destroy()
			workspace.CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChild("Humanoid")
			for _, tool in pairs(LocalPlayer:GetChildren()) do
				if tool:IsA("Tool") then
					tool.Parent = LocalPlayer.Backpack
				end
			end
			LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = savepos
			tempchar:Destroy()
		end
	end)
end
coroutine.wrap(CYNH_fake_script)()
local function VBHNJC_fake_script() -- loud.hoverscript 
	local script = Instance.new('LocalScript', loud)

	script.Parent.MouseEnter:Connect(function()
		script.Parent.Parent.clicksound:Play()	
		script.Parent.BackgroundColor3 = Color3.fromRGB(60, 152, 250)
		script.Parent:TweenSize(UDim2.new(0, 157,0, 41),"Out","Quart",.5,true) --
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		script.Parent:TweenSize(UDim2.new(0, 157,0, 36),"Out","Quart",.5,true)
	end)
end
coroutine.wrap(VBHNJC_fake_script)()
local function XTXWN_fake_script() -- loud.clickscript 
	local script = Instance.new('LocalScript', loud)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.clicksound:Play()
		for _, boombox in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
			if boombox:IsA("Tool") then
				boombox.Parent = game:GetService("Players").LocalPlayer.Character
				local remote = boombox:WaitForChild('Remote')
				if remote then
					remote:FireServer("PlaySong", tonumber(script.Parent.Parent.audioid.Text))
				end
			end
		end
	end)
end
coroutine.wrap(XTXWN_fake_script)()
local function SRZU_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0.15
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(SRZU_fake_script)()
local function MFPL_fake_script() -- Frame.clicksoundadder 
	local script = Instance.new('LocalScript', Frame)

	local audio = Instance.new("Sound", script.Parent); 
	audio.Name = "clicksound"; 
	audio.SoundId = "rbxassetid://421058925"; 
end
coroutine.wrap(MFPL_fake_script)()
local function YNKZ_fake_script() -- visualize.hoverscript 
	local script = Instance.new('LocalScript', visualize)

	script.Parent.MouseEnter:Connect(function()
		script.Parent.Parent.clicksound:Play()	
		script.Parent.BackgroundColor3 = Color3.fromRGB(60, 152, 250)
		script.Parent:TweenSize(UDim2.new(0, 157,0, 41),"Out","Quart",.5,true) --
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		script.Parent:TweenSize(UDim2.new(0, 157,0, 36),"Out","Quart",.5,true)
	end)
end
coroutine.wrap(YNKZ_fake_script)()
local function XILJTU_fake_script() -- visualize.clickscript 
	local script = Instance.new('LocalScript', visualize)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.clicksound:Play()
		
	end)
end
coroutine.wrap(XILJTU_fake_script)()
