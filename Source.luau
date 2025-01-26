-- // GUI TO LUA \\ --

-- // INSTANCES: 8 | SCRIPTS: 2 | MODULES: 0 \\ --

local UI = {}

-- // StarterGui.ScreenGui \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
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
UI["5"]["PlaceholderText"] = [[player will be autofilled lul (only acceptz usernames)]]
UI["5"]["Size"] = UDim2.new(0, 272, 0, 42)
UI["5"]["Position"] = UDim2.new(0.1092, 0, 0.39303, 0)
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["Text"] = [[]]

-- // StarterGui.ScreenGui.Troll.Virus.LocalScript \\ --
UI["6"] = Instance.new("LocalScript", UI["5"])


-- // StarterGui.ScreenGui.Troll.Lul \\ --
UI["7"] = Instance.new("TextButton", UI["2"])
UI["7"]["TextWrapped"] = true
UI["7"]["BorderSizePixel"] = 0
UI["7"]["TextSize"] = 14
UI["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["7"]["TextScaled"] = true
UI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["7"]["Size"] = UDim2.new(0, 200, 0, 50)
UI["7"]["Name"] = [[Lul]]
UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["7"]["Text"] = [[Virus 'em]]
UI["7"]["Position"] = UDim2.new(0.21264, 0, 0.69154, 0)

-- // StarterGui.ScreenGui.Troll.Lul.LocalScript \\ --
UI["8"] = Instance.new("LocalScript", UI["7"])


-- // StarterGui.ScreenGui.Troll.Virus.LocalScript \\ --
local function SCRIPT_6()
local scripet = UI["6"]
	local prent = scripet.Parent
	
	for i, v in game.Players:GetPlayers() do
		if prent.Text.match(v.Name, prent.Text) then
			scripet.Parent.FocusLost:Connect(function() 
				scripet.Parent.Text = v.Name
			end)
		end
	end
end
task.spawn(SCRIPT_6)
-- // StarterGui.ScreenGui.Troll.Lul.LocalScript \\ --
local function SCRIPT_8()
local scripet = UI["8"]
	scripet.Parent.MouseButton1Click:Connect(function() 
		local Target = scripet.Parent.Parent.Virus.Text
		local Char = game.Players.LocalPlayer.CharacterAdded:Wait() or game.Players.LocalPlayer.Character
		local Rem = Char:FindFirstChild("Virus"):FindFirstChild("UseSelf")
		Rem:FireServer(scripet.Parent.Parent.Virus.Text)
	end)
end
task.spawn(SCRIPT_8)

return UI["1"], require;
