if not game:IsLoaded() then game.Loaded:Wait() end
--// locals

local player = game.Players.LocalPlayer
local lp = player.Character or player.CharacterAdded:Wait()

player.CharacterAdded:Connect(function(char)
    lp = char
end)
local pregnant, weld, leftcheek, rightcheek, leftweld, rightweld, twerking = nil

--// ui

local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/c-28/PregnantHub/refs/heads/main/fluent1.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "PregnantHUB",
    SubTitle = "update 4",
    TabWidth = 70,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightShift
})

local Tabs = {
    Changelogs = Window:AddTab({ Title = "Changelogs"}),
    Pregnancy = Window:AddTab({ Title = "Pregnancy"}),
    Asscheeks = Window:AddTab({ Title = "Asscheeks"}),
    Kaicenat = Window:AddTab({ Title = "Kaicenat"}),
    Twerking = Window:AddTab({ Title = "Twerking"}),
    Settings = Window:AddTab({ Title = "Settings"})
}

Tabs.Pregnancy:AddParagraph({Title = "Pregnancy",Content = "Pregnant features"})
Tabs.Asscheeks:AddParagraph({Title = "Asscheeks",Content = "Get big asscheeks in roblox"})
Tabs.Kaicenat:AddParagraph({Title = "Kai cenat",Content = "W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W W"})
Tabs.Twerking:AddParagraph({Title = "Twerking",Content = "Twerk"})

--// changelog

Tabs.Changelogs:AddParagraph({Title = "update 4",Content = "fixed it not working on respawn"})
Tabs.Changelogs:AddParagraph({Title = "update 3",Content = "ass cheeks move with your ass now and twerking"})
Tabs.Changelogs:AddParagraph({Title = "update 2",Content = "kai cenat pregnancy and asscheeks and bug fixes"})
Tabs.Changelogs:AddParagraph({Title = "update 1",Content = "release with pregnant and asscheeks"})

--// script


--// kai cenat

local kaicenat = Tabs.Kaicenat:AddToggle("kaicenat", {Title = "kai cenat", Default = false})

kaicenat:OnChanged(function()
    for _, aaa in pairs({pregnant, leftcheek, rightcheek}) do 
        if aaa then
            for _, child in pairs(aaa:GetChildren()) do
                if child:IsA("Decal") then child:Destroy()
                end
            end
            if kaicenat.Value then
                for _, bbb in pairs(Enum.NormalId:GetEnumItems()) do
                    local kaicenatdiddyblud = Instance.new("Decal")
                    kaicenatdiddyblud.Face = bbb
                    kaicenatdiddyblud.Texture = "rbxassetid://92158335976019"
                    kaicenatdiddyblud.Parent = aaa
                end
            end
        end
    end
end)

--// pregnancy
local pregnancy = Tabs.Pregnancy:AddToggle("pregnancy", {Title = "become pregnant", Default = false})
local babysize = Tabs.Pregnancy:AddSlider("babysize", {Title = "baby size", Default = 2, Min = 1, Max = 10, Rounding = 1})
local babycolor = Tabs.Pregnancy:AddColorpicker("babycolor", {Title = "pregant color", Default = Color3.fromRGB(255, 255, 255)})

pregnancy:OnChanged(function()
    if pregnancy.Value then
        pregnant = Instance.new("Part")
        weld = Instance.new("Weld")
        pregnant.Shape = Enum.PartType.Ball
        pregnant.Size = Vector3.new(babysize.Value, babysize.Value, babysize.Value)
        pregnant.Material = Enum.Material.Plastic
        pregnant.Color = babycolor.Value
        pregnant.Anchored = false
        pregnant.CanCollide = false
        pregnant.Parent = lp
        weld.Part0 = lp.LowerTorso
        weld.Part1 = pregnant
        weld.Parent = pregnant
        weld.C0 = CFrame.new(0,0.3,-0.9)
        if kaicenat and kaicenat.Value then
            for _, bbb in pairs(Enum.NormalId:GetEnumItems()) do
                local kaicenatdiddyblud = Instance.new("Decal")
                kaicenatdiddyblud.Face = bbb
                kaicenatdiddyblud.Texture = "rbxassetid://92158335976019"
                kaicenatdiddyblud.Parent = pregnant
            end
        end
    else
        if pregnant then 
            pregnant:Destroy() pregnant = nil weld = nil
        end
    end
end)

babysize:OnChanged(function(a)
    if pregnant then pregnant.Size = Vector3.new(a,a,a) end
end)

babycolor:OnChanged(function()
    if pregnant then pregnant.Color = babycolor.Value end
end)

--// asscheek
local asscheeks = Tabs.Asscheeks:AddToggle("asscheeks", {Title = "get bbl", Default = false})
local asscheekssize = Tabs.Asscheeks:AddSlider("asscheekssize", {Title = "bbl size", Default = 2, Min = 1, Max = 10, Rounding = 1})
local asscheekscolor = Tabs.Asscheeks:AddColorpicker("asscheekscolor", {Title = "bbl color", Default = Color3.fromRGB(255, 255, 255)})

asscheeks:OnChanged(function()
    if asscheeks.Value then
        leftcheek = Instance.new("Part")
        rightcheek = Instance.new("Part")
        leftweld = Instance.new("Weld")
        rightweld = Instance.new("Weld")
        leftcheek.Size = Vector3.new(asscheekssize.Value, asscheekssize.Value, asscheekssize.Value)
        rightcheek.Size = Vector3.new(asscheekssize.Value, asscheekssize.Value, asscheekssize.Value)
        leftcheek.Shape = Enum.PartType.Ball
        rightcheek.Shape = Enum.PartType.Ball
        leftcheek.CanCollide = false
        rightcheek.CanCollide = false
        leftcheek.Color = asscheekscolor.Value
        rightcheek.Color = asscheekscolor.Value
        if kaicenat and kaicenat.Value then
            for _, bbb in pairs(Enum.NormalId:GetEnumItems()) do
                local kaicenatdiddyblud = Instance.new("Decal")
                kaicenatdiddyblud.Face = bbb
                kaicenatdiddyblud.Texture = "rbxassetid://92158335976019"
                kaicenatdiddyblud.Parent = leftcheek
            end
            for _, bbb in pairs(Enum.NormalId:GetEnumItems()) do
                local kaicenatdiddyblud = Instance.new("Decal")
                kaicenatdiddyblud.Face = bbb
                kaicenatdiddyblud.Texture = "rbxassetid://92158335976019"
                kaicenatdiddyblud.Parent = rightcheek
            end
        end
        leftweld.Part0 = lp.LowerTorso
        leftweld.Part1 = leftcheek
        rightweld.Part0 = lp.LowerTorso
        rightweld.Part1 = rightcheek
        leftcheek.Parent = lp
        rightcheek.Parent = lp
        leftweld.Parent = leftcheek
        rightweld.Parent = rightcheek
        leftweld.C0 = CFrame.new(-0.8,-0.2,1)
        rightweld.C0 = CFrame.new(0.8,-0.2,1)
    else
        if leftcheek then 
            leftcheek:Destroy() leftcheek = nil leftweld = nil
        end
        if rightcheek then 
            rightcheek:Destroy() rightcheek = nil rightweld = nil
        end
    end
end)


asscheekssize:OnChanged(function(a)
    if leftcheek then leftcheek.Size = Vector3.new(a,a,a) end
    if rightcheek then rightcheek.Size = Vector3.new(a,a,a) end
end)
asscheekscolor:OnChanged(function()
    if leftcheek then leftcheek.Color = asscheekscolor.Value end
    if rightcheek then rightcheek.Color = asscheekscolor.Value end
end)

--// twerking

--// twerking

local twerk = Tabs.Twerking:AddToggle("twerk", {Title = "Twerk", Default = false})
local twerkspeed = Tabs.Twerking:AddSlider("twerkspeed", {Title = "Twerk Speed", Default = 1, Min = 0.1, Max = 5, Rounding = 1})

twerkspeed:OnChanged(function(a)
    if twerking then twerking:AdjustSpeed(a) end
end)

lp.Humanoid.Died:Connect(function()
    if twerking then twerking:Stop() twerking = nil end
end)

twerk:OnChanged(function()
    if twerk.Value then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://71970944840848"
        twerking = lp.Humanoid:LoadAnimation(animation)
        twerking.Looped = true
        twerking:AdjustSpeed(twerkspeed.Value)
        twerking:Play()
    else
        if twerking then twerking:Stop() twerking = nil end
    end
end)

--// respawn

player.CharacterAdded:Connect(function(a) 
    lp = a task.wait(2)
    if twerk and twerk.Value then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://71970944840848"
        twerking = lp.Humanoid:LoadAnimation(animation)
        twerking.Looped = true
        twerking:AdjustSpeed(twerkspeed.Value)
        twerking:Play()
    end
    if pregnancy and pregnancy.Value then
        pregnancy:SetValue(false) pregnancy:SetValue(true) -- idk if this is a good way to do it but it works
    end
    if asscheeks and asscheeks.Value then
        asscheeks:SetValue(false) asscheeks:SetValue(true)
    end
end)

--// addons
InterfaceManager:SetLibrary(Fluent)
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
Window:SelectTab(1)
Fluent:Notify({Title = "PREGNANT HUB",Content = "PREGNANCY AND ASSCHEEK LOADED",Duration = 6.7})
