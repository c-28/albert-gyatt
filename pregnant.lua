local localplayerc = game.Players.LocalPlayer.Character
local pregnant = Instance.new("Part")
local weld = Instance.new("Weld")

local babysize = Vector3.new(2,2,2)

pregnant.Shape = Enum.PartType.Ball
pregnant.Size = babysize
pregnant.Material = Enum.Material.Plastic
pregnant.Color = localplayerc.Head.Color
pregnant.Anchored = false
pregnant.CanCollide = false
pregnant.Parent = localplayerc
weld.Part0 = localplayerc.LowerTorso
weld.Part1 = pregnant
weld.Parent = pregnant
weld.C0 = CFrame.new(0,0.3,-0.9)
