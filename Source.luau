-- // GUI TO LUA \\ --

-- // INSTANCES: 8 | scrieptS: 2 | MODULES: 0 \\ --

local UI = {}

-- // StarterGui.ScreenGui \\ --
UI["1"] = Instance.new("ScreenGui", game.CoreGui)
UI["1"]["Enabled"] = true
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

-- // StarterGui.ScreenGui.Troll \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["2"]["Size"] = UDim2.new(0, 348, 0, 201)
UI["2"]["Position"] = UDim2.new(0.27077, 0, 0.31815, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["Name"] = [[Troll]]

-- // StarterGui.ScreenGui.Troll.TextLabel \\ --
UI["3"] = Instance.new("TextLabel", UI["2"])
UI["3"]["TextWrapped"] = true
UI["3"]["BorderSizePixel"] = 0
UI["3"]["TextScaled"] = true
UI["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["3"]["TextSize"] = 14
UI["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["3"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["3"]["BackgroundTransparency"] = 1
UI["3"]["Size"] = UDim2.new(0, 348, 0, 29)
UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["3"]["Text"] = [[FE Virus Anyone GUI]]

-- // StarterGui.ScreenGui.Troll.ImageLabel \\ --
UI["4"] = Instance.new("ImageLabel", UI["2"])
UI["4"]["ZIndex"] = 0
UI["4"]["BorderSizePixel"] = 0
UI["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["4"]["Image"] = [[rbxassetid://7120897383]]
UI["4"]["Size"] = UDim2.new(0, 348, 0, 172)
UI["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["Position"] = UDim2.new(0, 0, 0.14428, 0)

-- // StarterGui.ScreenGui.Troll.Virus \\ --
UI["5"] = Instance.new("TextBox", UI["2"])
UI["5"]["CursorPosition"] = -1
UI["5"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["BorderSizePixel"] = 0
UI["5"]["TextWrapped"] = true
UI["5"]["TextSize"] = 14
UI["5"]["Name"] = [[Virus]]
UI["5"]["TextScaled"] = true
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["5"]["PlaceholderText"] = [[]]
UI["5"]["Size"] = UDim2.new(0, 272, 0, 42)
UI["5"]["Position"] = UDim2.new(0.1092, 0, 0.39303, 0)
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["Text"] = [[]]

-- // StarterGui.ScreenGui.Troll.Lul \\ --
UI["6"] = Instance.new("TextButton", UI["2"])
UI["6"]["TextWrapped"] = true
UI["6"]["BorderSizePixel"] = 0
UI["6"]["TextSize"] = 14
UI["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["TextScaled"] = true
UI["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["6"]["Size"] = UDim2.new(0, 200, 0, 50)
UI["6"]["Name"] = [[Lul]]
UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["Text"] = [[Virus 'em]]
UI["6"]["Position"] = UDim2.new(0.21264, 0, 0.69154, 0)

-- // StarterGui.ScreenGui.Troll.Lul.Localscriept \\ --
UI["7"] = Instance.new("LocalScript", UI["6"])


-- // StarterGui.ScreenGui.Troll.Dragify \\ --
UI["8"] = Instance.new("LocalScript", UI["2"])
UI["8"]["Name"] = [[Dragify]]

-- // StarterGui.ScreenGui.Troll.Lul.Localscriept \\ --
local function scriept_7()
	local scriept = UI["7"]
	scriept.Parent.MouseButton1Click:Connect(function() 
		local Target = UI["5"].Text
		local Char = game.Players.LocalPlayer.CharacterAdded:Wait() or game.Players.LocalPlayer.Character
		local Rem = Char.Virus.UseSelf or game.Players.LocalPlayer.Backpack.Virus.UseSelf
		local GiveRem = game.ReplicatedStorage.Remotes.GiveVirus
		
		if game.Players.LocalPlayer.Backpack.FindFirstChild("Virus") or Char:FindFirstChild("Virus") then
			Rem:FireServer("game.Players."..UI["5"].Text)
		else
			GiveRem:FireServer()
			Rem:FireServer("game.Players."..UI["5"].Text)
		end
	end)
end
task.spawn(scriept_7)
-- // StarterGui.ScreenGui.Troll.Dragify \\ --
local function scriept_8()
local scriept = UI["8"]
	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 0.15
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
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
	dragify(UI["2"])
	
end
task.spawn(scriept_8)

return UI["1"], require;
