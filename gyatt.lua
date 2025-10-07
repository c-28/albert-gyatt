local lpchar = game.Players.LocalPlayer.Character
local gyat1 = Instance.new("Part")
local gyat2 = Instance.new("Part")
local bhehbhbhbhgrbhgr = Instance.new("Weld")
local iuewffewhbivbvh = Instance.new("Weld")

local gyatsizereal = Vector3.new(2,2,2)
local balltexture = "http://www.roblox.com/asset/?id=17259184437"
local shirttexture = "http://www.roblox.com/asset/?id=4892939358"
local panttexture = "http://www.roblox.com/asset/?id=6241932098"
local skincolor = Color3.fromRGB(55,139,62)

for _, sigmagyatohio in pairs(lpchar:GetChildren()) do
    if sigmagyatohio:IsA("Shirt") or sigmagyatohio:IsA("Pants") or sigmagyatohio:IsA("ShirtGraphic") or sigmagyatohio:IsA("Accessory") 
    then 
        sigmagyatohio:Destroy()
    end
end -- need this or it will not be good😡😡😡😡😡😡😡😡😡😡😡😡

for _, sigmagyatohioo in pairs({"Head","UpperTorso","LowerTorso","LeftUpperArm","LeftLowerArm","LeftHand","RightUpperArm","RightLowerArm","RightHand","LeftUpperLeg","LeftLowerLeg","LeftFoot","RightUpperLeg","RightLowerLeg","RightFoot"})do
    lpchar[sigmagyatohioo].Color = skincolor
end

Instance.new("Shirt",lpchar).ShirtTemplate = shirttexture
Instance.new("Pants",lpchar).PantsTemplate = panttexture

gyat1.Shape = Enum.PartType.Ball
gyat2.Shape = Enum.PartType.Ball
gyat1.Size = gyatsizereal
gyat2.Size = gyatsizereal
gyat1.Material = Enum.Material.Plastic
gyat2.Material = Enum.Material.Plastic
gyat1.Anchored = false
gyat2.Anchored = false
gyat1.CanCollide = false
gyat2.CanCollide = false
gyat2.Parent = lpchar
gyat1.Parent = lpchar

for _, sigmagyatohiooo in pairs(Enum.NormalId:GetEnumItems()) do
    local vjkvbsjeebvskjebvskjbvebvbvkhs = Instance.new("Texture")
    local uherguhuherguehrguehrguerhg = Instance.new("Texture")
    vjkvbsjeebvskjebvskjbvebvbvkhs.Face = sigmagyatohiooo vjkvbsjeebvskjebvskjbvebvbvkhs.Parent = gyat1
    uherguhuherguehrguehrguerhg.Face = sigmagyatohiooo uherguhuherguehrguehrguerhg.Parent = gyat2
    vjkvbsjeebvskjebvskjbvebvbvkhs.Texture = balltexture
    uherguhuherguehrguehrguerhg.Texture = balltexture
end

bhehbhbhbhgrbhgr.Part0 = lpchar.LowerTorso
bhehbhbhbhgrbhgr.Part1 = gyat1
iuewffewhbivbvh.Part0 = lpchar.LowerTorso
iuewffewhbivbvh.Part1 = gyat2
bhehbhbhbhgrbhgr.Parent = gyat1
iuewffewhbivbvh.Parent = gyat2

bhehbhbhbhgrbhgr.C0 = CFrame.new(-0.8,-0.5,1) -- left cheek position
iuewffewhbivbvh.C0 = CFrame.new(0.8,-0.5,1) -- right cheek position
