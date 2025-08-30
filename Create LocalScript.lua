StarterGul/weaponMenu/LocalScript-lua

Script hiên thị menu cho người chơi và gửi yêu cầu lấy vũ khí

local ReplicatedStorage gane GelService("ReplitatedStorage">

Jotal Players game:Getservice("Players)

Local player Players. LocalPlayer

Incal playerGus player Wait For Child("PlayerGol

Tao ScreenGul

local screentul Instance.new("Screenbus)

screenGur Name "Weapontenu

screenGut Parent playersut

Tao Frame che menu

local frame Instance.new("Frane")

trane.Position Din?.naw0.5 125, 0.5, 100)

frano.5120 UD12.пом 0, 250, 0, 200)

Trane. BackgroundColor3 Color).fromRGB(35, 35, 35)

Frane. Backgroundir ansparency 0.2

frane.Parent screenGus

UT corner

local uiCorrier Instance.new("UICorner")

Corner CornerRadtusübt.new(0, 12)

ulCorner Parent frame

Tạo layout cho các mút

Local listLayout Instance new("UTListLayout")

ulListcayoot.Paoding UDie.new(0, 10)

titstiaynat HorizontalAlignment Frun. HorizontalAlignment Center

uilis(layout.FillDirection Enum FillDirection. Vertical

usListLayout. VerticalAlignment Enum. VerticalAlignment. Contor

ulisti ayout Parent frame

Kết nôi Renotebvent

local giveweaponEvent ReplicatedStorage: MaitForChild; "GiveweaponEvent")

Hãn tạo một vũ khi

Iosal function createButton(weaporikame)

local button Instance.new("TextButton"

001n2. non(0, 200, 0, 40) button. Size

hutton. Text "Lay

button, Font Entar. Font.SourceSans Bold

button, Textsize 20

button, BackgroundColor 3 Color3. fronRGB(70, 130, 180)

local corner Instance.nee("UTCorner")

corner CornerRadius UDsm.now(0, 2)

corner. Parent = button

button. Parent frane

Sutton, MouseButton1Click Connect (function()

Livealeapon Event FireSed (weaporName)

end

end

Các vũ khí trong Banu

local weapons

"Như Lai Thần Chưởng",

"Thanh Long Quyên",

"Giảng Long Trường"

for weapon Nane spoirs(weapons) do

createButton (weaponNane)

and

Spaces

No wrap

Lise Control Shift to toggle the tab key moving focus. Alternatively, une est then tab to rouve to the next