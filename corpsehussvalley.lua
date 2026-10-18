local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "MaintenanceUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 340, 0, 180)
frame.Position = UDim2.new(0.5, -170, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0, 35)
title.Position = UDim2.new(0, 10, 0, 10)
title.BackgroundTransparency = 1
title.Text = "MAINTENANCE"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.Parent = frame

local message = Instance.new("TextLabel")
message.Size = UDim2.new(1, -30, 0, 55)
message.Position = UDim2.new(0, 15, 0, 48)
message.BackgroundTransparency = 1
message.Text = "The script is in maintenance.\nIt will be back in a day.\nJoin our Discord for the latest info."
message.TextColor3 = Color3.fromRGB(190, 190, 190)
message.Font = Enum.Font.Gotham
message.TextSize = 13
message.TextWrapped = true
message.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 180, 0, 35)
button.Position = UDim2.new(0.5, -90, 1, -48)
button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
button.Text = "Discord Link"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.GothamBold
button.TextSize = 14
button.Parent = frame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 7)
buttonCorner.Parent = button

button.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://discord.gg/KaTSNVxxpU")
    else
        pcall(function()
            StarterGui:SetCore("SendNotification", {
                Title = "Discord",
                Text = "Clipboard copying is not supported here.",
                Duration = 4
            })
        end)
    end
end)
