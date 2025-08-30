-- ServerScriptService/WeaponHandler.lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

-- RemoteEvent
local GiveWeaponEvent = Instance.new("RemoteEvent")
GiveWeaponEvent.Name = "GiveWeaponEvent"
GiveWeaponEvent.Parent = ReplicatedStorage

-- Lắng nghe khi Client gửi yêu cầu
GiveWeaponEvent.OnServerEvent:Connect(function(player, weaponName)
    local weaponsFolder = ServerStorage:FindFirstChild("Weapons")
    if not weaponsFolder then
        warn("⚠️ Chưa có folder 'Weapons' trong ServerStorage")
        return
    end

    local weapon = weaponsFolder:FindFirstChild(weaponName)
    if weapon then
        local clonedWeapon = weapon:Clone()
        clonedWeapon.Parent = player.Backpack
        print(player.Name .. " đã nhận vũ khí: " .. weaponName)
    else
        warn("⚠️ Không tìm thấy vũ khí: " .. weaponName)
    end
end)
