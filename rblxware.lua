--Made by Temmy

local TemmysRBLXwarescript = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UICorner = Instance.new("UICorner")
local GetItem = Instance.new("TextButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Frame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local INFO = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UICorner_6 = Instance.new("UICorner")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")

--Properties:

TemmysRBLXwarescript.Name = "Temmy's RBLXware script"
TemmysRBLXwarescript.Parent = game.CoreGui
TemmysRBLXwarescript.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = TemmysRBLXwarescript
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Position = UDim2.new(0.0775547475, 0, 0.0933333337, 0)
MainFrame.Size = UDim2.new(0, 293, 0, 225)
MainFrame.Active = true
MainFrame.Draggable = true

ScrollingFrame.Parent = MainFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.284058034, 0, 0.13333334, 0)
ScrollingFrame.Size = UDim2.new(0, 209, 0, 194)
ScrollingFrame.CanvasPosition = Vector2.new(0, 2.31958771)

UICorner.Parent = ScrollingFrame

GetItem.Name = "GetItem"
GetItem.Parent = ScrollingFrame
GetItem.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
GetItem.Position = UDim2.new(0.0813397095, 0, 0.0421239436, 0)
GetItem.Size = UDim2.new(0, 74, 0, 33)
GetItem.Font = Enum.Font.SourceSans
GetItem.Text = "Get Item"
GetItem.TextColor3 = Color3.fromRGB(255, 255, 255)
GetItem.TextSize = 14.000
GetItem.TextWrapped = true
GetItem.MouseButton1Down:connect(function()
	local plr = game.Players.LocalPlayer

	local hum = plr.Character.HumanoidRootPart
		
	plr:MoveTo(game.Workspace.HalloweenBossMap2018.Obby.PadMiddle.WinPart)
end)

UIAspectRatioConstraint.Parent = GetItem
UIAspectRatioConstraint.AspectRatio = 2.242

UIAspectRatioConstraint_2.Parent = ScrollingFrame
UIAspectRatioConstraint_2.AspectRatio = 1.077

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
TextLabel.Position = UDim2.new(0.00246942043, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 292, 0, 30)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "Temmy's RBLXWARE script"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_2.Parent = TextLabel

UIAspectRatioConstraint_3.Parent = TextLabel
UIAspectRatioConstraint_3.AspectRatio = 9.733

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 14

Frame.Parent = MainFrame
Frame.BackgroundColor3 = Color3.fromRGB(6, 6, 6)
Frame.Position = UDim2.new(-0.000943545194, 0, 0.131111115, 0)
Frame.Size = UDim2.new(0, 83, 0, 195)

UICorner_3.Parent = Frame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
TextButton.BorderColor3 = Color3.fromRGB(15, 15, 15)
TextButton.Position = UDim2.new(0.036144577, 0, 0.0923076943, 0)
TextButton.Size = UDim2.new(0, 76, 0, 28)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "INFO"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
	TextButton.INFO.Visible = true
end)

UICorner_4.Parent = TextButton

INFO.Name = "INFO"
INFO.Parent = TextButton
INFO.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
INFO.Position = UDim2.new(4.15789461, 0, -0.642857134, 0)
INFO.Selectable = true
INFO.Size = UDim2.new(0, 163, 0, 154)
INFO.Visible = false
INFO.Draggable = true

UICorner_5.Parent = INFO

TextLabel_2.Parent = INFO
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Size = UDim2.new(0, 163, 0, 38)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "INFO"
TextLabel_2.TextColor3 = Color3.fromRGB(180, 180, 180)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = INFO
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0, 0, 0.298701286, 0)
TextLabel_3.Size = UDim2.new(0, 162, 0, 108)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "This script only works for the RBLXware 2021 Halloween event. If it is after the event, the script will no longer work."
TextLabel_3.TextColor3 = Color3.fromRGB(190, 190, 190)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

UIAspectRatioConstraint_4.Parent = INFO
UIAspectRatioConstraint_4.AspectRatio = 1.058

UIAspectRatioConstraint_5.Parent = TextButton
UIAspectRatioConstraint_5.AspectRatio = 2.714

UITextSizeConstraint_2.Parent = TextButton
UITextSizeConstraint_2.MaxTextSize = 14

UIAspectRatioConstraint_6.Parent = Frame
UIAspectRatioConstraint_6.AspectRatio = 0.426

UICorner_6.Parent = MainFrame

UIAspectRatioConstraint_7.Parent = MainFrame
UIAspectRatioConstraint_7.AspectRatio = 1.302
