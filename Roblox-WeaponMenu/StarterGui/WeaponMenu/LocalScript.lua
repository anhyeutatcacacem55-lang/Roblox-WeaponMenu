-- StarterGui/WeaponMenu/LocalScript.lua
-- Script hiển thị menu cho người chơi và gửi yêu cầu lấy vũ khí

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "WeaponMenu"
screenGui.Parent = playerGui

-- Tạo Frame cho menu
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 200)
frame.Position = UDim2.new(0.5, -125, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BackgroundTransparency = 0.2
frame.Parent = screenGui

-- UI corner
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = frame

-- Tạo layout cho các nút
local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Padding = UDim.new(0, 10)
uiListLayout.FillDirection = Enum.FillDirection.Vertical
uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
uiListLayout.Parent = frame

-- Kết nối RemoteEvent
local giveWeaponEvent = ReplicatedStorage:WaitForChild("GiveWeaponEvent")

-- Hàm tạo nút vũ khí
local function createButton(weaponName)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 40)
    button.Text = "Lấy " .. weaponName
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 20
    button.BackgroundColor3 = Color3.fromRGB(70, 130, 180)

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = button

    button.Parent = frame

    button.MouseButton1Click:Connect(function()
        giveWeaponEvent:FireServer(weaponName)
    end)
end

-- Các vũ khí trong menu
local weapons = {
    "Như Lai Thần Chưởng",
    "Thanh Long Quyền",
    "Giáng Long Trưởng"
}

for _, weaponName in ipairs(weapons) do
    createButton(weaponName)
end
