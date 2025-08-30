-- StarterGui/WeaponMenu/LocalScript
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GiveWeaponEvent = ReplicatedStorage:WaitForChild("GiveWeaponEvent")

-- Tạo GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "WeaponMenu"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local weapons = {
    "NhuLaiThanChuong",
    "ThanhLongQuyen",
    "GiangLongChuong"
}

for i, weaponName in ipairs(weapons) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.2 + (i * 0.15), 0)
    button.Text = "Lấy " .. weaponName
    button.Parent = ScreenGui

    button.MouseButtonClick:Connect(function()
        GiveWeaponEvent:FireServer(weaponName)
    end)
end
