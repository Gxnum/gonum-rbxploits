--Made By The Cringe Platinum#6760---
--Ver 3.0
--[{Confing List--
--[{Passives: Line 59 --
--[{Movesets: Line 140 --
--[{Keybinds: Line 373 --
local rs = game:GetService("ReplicatedStorage")
local plr = game:GetService("Players").LocalPlayer
local ui = game:GetService("UserInputService")
local rser = game:GetService("RunService")
local l = game:GetService("Lighting")
local ts = game:GetService("TweenService")
local sg = game:GetService("StarterGui")
local cam = game.workspace.CurrentCamera
local chr = plr.Character
local hum = plr.Character.Humanoid
local hrp = plr.Character.HumanoidRootPart
local mouse = plr:GetMouse()
local h = chr["Head"]
local tor = chr["Torso"]
local ra = chr["Right Arm"]
local la = chr["Left Arm"]
local rl = chr["Right Leg"]
local ll = chr["Left Leg"]
local death = false
local deathevent = rs.Death
local hamonevent = rs.Hamon
local dmg = rs.Damage
local deletestand = nil
local t = 2
local pose = false
local poseval = Instance.new("IntValue")
local jirenmode = 0
local powerup = false
local poweroff = true
local barrage = false
local block = false
local num = 0
local cooldown1 = false
local mode2 = false

function godmode()
     rs.Block:FireServer(true)
     rs.BurnDamage:FireServer(hum, CFrame.new(0, -50, 0), -0 * math.huge, 0, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255), "rbxassetid://260430079", 0, 0)
     wait()
     rs.BurnDamage:FireServer(hum, CFrame.new(0, -50, 0), 0 * math.huge, 0, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255), "rbxassetid://260430079", 0, 0)
end
godmode()
function assettest(Id)
    return "rbxassetid://"..Id
end


rs.Jump2:FireServer(BrickColor.new(1009))


local parts = {
    "Handle",
    "HandleGem",
    "HandleTip",
    "HandleTipGemDecor",
    "HandleTipMiddle",
    "Hilt",
    "HiltDecor",
    "HiltTop",
    "PommelBottom",
    "PommelConnector",
    "PommelGem",
    "PommelTop"
}
local sword = game:GetService("Players").LocalPlayer.Character.Stand.LuckandPluck
for _, partName in pairs(parts) do
    local part = sword[partName]
    game:GetService("ReplicatedStorage").Transparency:FireServer(part, 0)
end

local plr = game:GetService("Players").LocalPlayer
game:GetService("ReplicatedStorage").Transparency:FireServer(plr.Character.Stand.LuckandPluck.Blade, 0)


--[{Passives--

--Hamon Durability + Limber--
game:GetService("ReplicatedStorage").SuperArmor:FireServer(true)
wait(1)
plr.Character.Humanoid.WalkSpeed = 20




print("Pluck Script Loaded")
wait(1)



for i,v in pairs(game:GetService("Lighting"):GetChildren())do
    for i,v2 in pairs(chr:GetChildren())do
        if v:IsA("LocalScript") and v2:IsA("LocalScript") then
            if v.Name == v2.Name then
                deletestand = v2.Name
            end
        end
    end
end
chr[deletestand]:Destroy()

function assettest(Id)
    return "rbxassetid://"..Id
end

hum.HealthChanged:connect(function()
    if hum.Health < 1 then
        rs.RTZ:FireServer(true)
        wait(1)
        hum:SetStateEnabled(3, false)
        hum:SetStateEnabled(15, false)
        deathevent:FireServer(false)
        poweroff = false
        powerup = false
        barrage = false
        pose = false
        wait(2)
	    death = true
    end
end)

--Outline--





chr.Animate.walk.WalkAnim.AnimationId = assettest(3451314103)

--[{Moves--

function strongpunch()
strongkickanimation = Instance.new("Animation")
    strongkickanimation.AnimationId = assettest(3579950038)
    strongkickanim = plr.Character.Humanoid:LoadAnimation(strongkickanimation)
    strongkickanim:Play(0.1,1,1)
    strongkickanim:AdjustSpeed(2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Torso"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0.1, 1, Vector3.new(50, 50, 50), 0.1, "", 1, 10)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end

function OPRoundabound()
    kickanimation = Instance.new("Animation")
    kickanimation.AnimationId = assettest(186934910)
    kickanim = plr.Character.Humanoid:LoadAnimation(kickanimation)
    kickanim:Play(0.1,1,1)
    kickanim:AdjustSpeed(1.2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.ULFDamage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 1, Vector3.new(0, 0, 0), 0.5, 0.1)
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 0, Vector3.new(0, 0, 0), 0.8, "", 1, 20)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 0, Vector3.new(0, 0, 0), 0.05, "", 1, 20)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end


function Pierce()
    rs.Transparency:FireServer(plr.Character.Stand.StandRarm, 0.5)
    rs.Jump2:FireServer(BrickColor.new(1009))
    zoompunchanimation = Instance.new("Animation")
    zoompunchanimation.AnimationId = assettest(3515770769)
    zoompucnhanim = plr.Character.Humanoid:LoadAnimation(zoompunchanimation)
    zoompucnhanim:Play()
    zoompucnhanim:AdjustSpeed(0.6)
    wait(0.7)
    rs.Transparency:FireServer(plr.Character.Stand.StandRarm, 1)
    rs.PlayerStrongPunch:FireServer(Vector3.new(0.2, 20, 0.2), Vector3.new(0.5, 20, 0.5), BrickColor.new("Light yellow"))
    rs.PlayerStrongPunch:FireServer(Vector3.new(0.07, 20, 0.07), Vector3.new(0.2, 20, 0.2), BrickColor.new("Gold"))
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-17.145,0)
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["HumanoidRootPart"]
	hitbox1.Size = Vector3.new(5,37.5,180)
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.ULFDamage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 1, Vector3.new(0, 0, 0), 1, 0.1)
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 0, Vector3.new(0, 0, 0), 1.1, "", 1, 20)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 0, Vector3.new(0, 0, 0), 0.3, "", 1, 20)
            end
		end
        wait(1.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end

function OPBarrage_Damage()
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 0
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage11:FireServer(hit.Parent.Humanoid, CFrame.new(0,0,0), 1, 2, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*5000+Vector3.new(99, 99, 0), 0.1, 0.2, 0)
            end
		end
        wait(0.5)
        if barrage == false then
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end
    end)
end

function cooldown()
end

function OPstrongpunch()
    kickanimation = Instance.new("Animation")
    kickanimation.AnimationId = assettest(3579950038)
    kickanim = plr.Character.Humanoid:LoadAnimation(kickanimation)
    kickanim:Play(0.1,1,1)
    kickanim:AdjustSpeed(1.2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(0.5)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
                rs.ULFDamage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 3, Vector3.new(0, 0, 0), 0.01, "", 1, 0.1)
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 3, Vector3.new(0, 0, 0), 0.01, "", 1, 0.1)
                wait(0.3)
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 3, Vector3.new(0, 0, 0), 0.01, "", 1, 0.1)
                wait(0.3)
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 3, Vector3.new(0, 0, 0), 0.01, "", 1, 20)
                wait(0.3)
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 3, Vector3.new(0, 0, 0), 0.01, "", 1, 20)
                wait(0.3)
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 3, Vector3.new(0, 0, 0), 0.01, "", 1, 20)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end


function Roundabound()
    kickanimation = Instance.new("Animation")
    kickanimation.AnimationId = assettest(186934910)
    kickanim = plr.Character.Humanoid:LoadAnimation(kickanimation)
    kickanim:Play(0.1,1,1)
    kickanim:AdjustSpeed(1.2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(0.5)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 4, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end



function dashstrike()
    upanim = Instance.new("Animation")
    upanim.AnimationId = assettest(3451298675)
    upa = hum:LoadAnimation(upanim)
    upa:Play()
    upa:AdjustSpeed(1.25)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Torso"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Torso"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Torso"].Size*8
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(1)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 1, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 20)
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 3, 1, Vector3.new(50, 50, 50), 0.1, "", 1, 10)
            end
		end
        wait(1)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end

function LightAttack()
Clickanimation = Instance.new("Animation")
    Clickanimation.AnimationId = assettest(3579948827)
    Clickanim = plr.Character.Humanoid:LoadAnimation(Clickanimation)
    Clickanim:Play(0.1,1,1)
    Clickanim:AdjustSpeed(1.2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(0.5)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 3, 3, Vector3.new(0, 0, 0), 0.01, "", 1, 20)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end


function Barrage_Damage()
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage11:FireServer(hit.Parent.Humanoid, CFrame.new(0,0,0), 2.5, 2, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*5000+Vector3.new(99, 99, 0), 0.1, 0.2, 0)
            end
		end
        wait(0.5)
        if barrage == false then
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end
    end)
end

function Combo2()
    strongpunchanimation = Instance.new("Animation")
    strongpunchanimation.AnimationId = assettest(3579946634)
    strongpunchanim = plr.Character.Humanoid:LoadAnimation(strongpunchanimation)
    strongpunchanim:Play(0.1,1,1)
    strongpunchanim:AdjustSpeed(1.2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(0.5)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 4, 0, Vector3.new(35.928714752197266, 0.0000031240651878761128, -48.05337905883789), 0.01, "", 1, 0)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end

function Combo1()
    strongpunchanimation = Instance.new("Animation")
    strongpunchanimation.AnimationId = assettest(3579948827)
    strongpunchanim = plr.Character.Humanoid:LoadAnimation(strongpunchanimation)
    strongpunchanim:Play(0.1,1,1)
    strongpunchanim:AdjustSpeed(1.2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(0.5)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 3, 1, Vector3.new(0, 0, 0), 0.01, "", 1, 1)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end



function Stun()
    strongpunchanimation = Instance.new("Animation")
    strongpunchanimation.AnimationId = assettest(3515770769)
    strongpunchanim = plr.Character.Humanoid:LoadAnimation(strongpunchanimation)
    strongpunchanim:Play(0.1,1,1)
    strongpunchanim:AdjustSpeed(1.2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(0.5)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0.1, 30, Vector3.new(0, 0, 0), 0.01, "", 1, 30)
                wait(30)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0.1, 30, Vector3.new(0, 0, 0), 0.01, "", 1, 30)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end


function SpitLol()
    strongpunchanimation = Instance.new("Animation")
    strongpunchanimation.AnimationId = assettest(3674055951)
    strongpunchanim = plr.Character.Humanoid:LoadAnimation(strongpunchanimation)
    strongpunchanim:Play(0.1,1,1)
    strongpunchanim:AdjustSpeed(0.6)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(0.5)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
                wait(5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
                wait(5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
                wait(5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
                wait(5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
                wait(5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
                wait(5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
                wait(5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
                wait(5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
                wait(5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end

function strongpunch()
    strongpunchanimation = Instance.new("Animation")
    strongpunchanimation.AnimationId = assettest(3579950038)
    strongpunchanim = plr.Character.Humanoid:LoadAnimation(strongpunchanimation)
    strongpunchanim:Play(0.1,1,1)
    strongpunchanim:AdjustSpeed(1.2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(0.5)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 4, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end

function block()
if block == true then
game:GetService("ReplicatedStorage").Block:FireServer(true)
else
game:GetService("ReplicatedStorage").Block:FireServer(false)
    end
end
    

function rushdmg()  
end

function mousetp()
    rs.VampireDash:FireServer(BrickColor.new("Gold"))
    wait(0.3)
    plr.Character:SetPrimaryPartCFrame(CFrame.new(mouse.Hit.p + Vector3.new(0, 3.5, 0)))
    wait(0.2)
    rs.VampireDash:FireServer(BrickColor.new("Gold"))
end

function TS()
   for i,v in pairs(game.Workspace.Entities:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 30 then
                rs.Damage11:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 4, 10, Vector3.new(0, 0, 0), 0.01, "", 1, 10)
            end
        end
    end
end

function dash()
    rushdmg()
    ts:Create(cam, TweenInfo.new(t), {FieldOfView = 900}):Play()
    rushanimation = Instance.new("Animation")
    rushanimation.AnimationId = assettest(3681187511)
    rushanim = plr.Character.Humanoid:LoadAnimation(rushanimation)
    rush = true
    local rushboost = Instance.new("BodyVelocity")
    rushboost.MaxForce = Vector3.new(100000, 100000, 100000)
    rushboost.P = math.huge
    rushboost.Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 130
    rushboost.Parent = plr.Character.Torso
    rushanim:Play()
    rushanim:AdjustSpeed(2)
    for i = 1,4 do
        rushdmg()
        wait()
    end
    wait(0.3)
    rushboost:Destroy()
    rushdmg()
    wait(0.1)
    rushdmg()
    ts:Create(cam, TweenInfo.new(t), {FieldOfView = 70}):Play()
end

function dashyat()
    rushdmg()
    ts:Create(cam, TweenInfo.new(t), {FieldOfView = 75}):Play()
    rushanimation = Instance.new("Animation")
    rushanimation.AnimationId = assettest(3681187511)
    rushanim = plr.Character.Humanoid:LoadAnimation(rushanimation)
    rush = true
    local rushboost = Instance.new("BodyVelocity")
    rushboost.MaxForce = Vector3.new(1000000, 1000000, 1000000)
    rushboost.P = math.huge
    rushboost.Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 80
    rushboost.Parent = plr.Character.Torso
    rushanim:Play()
    rushanim:AdjustSpeed(1.3)
    for i = 1,4 do
        rushdmg()
        wait()
    end
    wait(0.3)
    rushboost:Destroy()
    rushdmg()
    wait(0.1)
    rushdmg()
    ts:Create(cam, TweenInfo.new(t), {FieldOfView = 70}):Play()
end

mouse.KeyDown:Connect(function(key)
    if key == "[" then
        if death == true then return end
        if not pose then
            pose = true
            poseval.Value = poseval.Value + 1
            if poseval.Value == 3 then
               poseval.Value = 1 
            end
            if poseval.Value == 1 then
                poweroff = false
            	rs.Menacing:FireServer(true)
                poseanimation = Instance.new("Animation")
                poseanimation.AnimationId = assettest(429703734)
                poseanim = plr.Character.Humanoid:LoadAnimation(poseanimation)
                poseanim:Play()
                wait(2)
                poseanim:AdjustSpeed(1)
                plr.Character.Humanoid.WalkSpeed = 0
                plr.Character.Humanoid.JumpPower = 0
            end
            if poseval.Value == 2 then
                poweroff = true
               rs.Menacing:FireServer(false)
               poseanim:Stop()
               if powerup == false then
                    plr.Character.Humanoid.WalkSpeed = 20
                    plr.Character.Humanoid.JumpPower = 50
               end
               if powerup == true then
                    plr.Character.Humanoid.WalkSpeed = 30
                    plr.Character.Humanoid.JumpPower = 100
               end
            end
            wait(0.5)
            pose = false
        end
    end
    if key == "p" then
        if death == true then return end
        if not pose then
            pose = true
            poseval.Value = poseval.Value + 1
            if poseval.Value == 3 then
               poseval.Value = 1 
            end
            if poseval.Value == 1 then
                poweroff = false
            	rs.Menacing:FireServer(true)
                poseanimation = Instance.new("Animation")
                poseanimation.AnimationId = assettest(4504485574)
                poseanim = plr.Character.Humanoid:LoadAnimation(poseanimation)
                poseanim:Play()
                wait(2)
                poseanim:AdjustSpeed(1)
                plr.Character.Humanoid.WalkSpeed = 0
                plr.Character.Humanoid.JumpPower = 0
            end
            if poseval.Value == 2 then
                poweroff = true
               rs.Menacing:FireServer(false)
               poseanim:Stop()
               if powerup == false then
                    plr.Character.Humanoid.WalkSpeed = 20
                    plr.Character.Humanoid.JumpPower = 50
               end
               if powerup == true then
                    plr.Character.Humanoid.WalkSpeed = 30
                    plr.Character.Humanoid.JumpPower = 50
               end
            end
            wait(0.5)
            pose = false
        end
    end
    --Keybinds--

    if key == "v" then
        if death == true then return end
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, true)
        if powerup == true then
        plr.Character.Humanoid.WalkSpeed = 0
        plr.Character.Humanoid.JumpPower = 0
        Pierce()
        wait(1)
        plr.Character.Humanoid.WalkSpeed = 30
        plr.Character.Humanoid.JumpPower = 50
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, false)
        else
        Stun()
        wait(1)
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, false)
        end
    end
    if key == "j" then
        if death == true then return end
        if powerup == true then
        OPRoundabound()
        else
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, true)
        Roundabound()
        wait(1)
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, false)
        end
    end
    if key == "f" then
        if death == true then return end
        game:GetService("ReplicatedStorage").HamonOutline:FireServer(true)
        plr.Character.Humanoid.WalkSpeed = 0
        dashstrike()
        wait(1.2)
        plr.Character.Humanoid.WalkSpeed = 20
        dash()
        if powerup == true then
        game:GetService("ReplicatedStorage").HamonOutline:FireServer(true)
        else
        game:GetService("ReplicatedStorage").HamonOutline:FireServer(false)
        end
    end
    if key == "r" then
        if death == true then return end
        if powerup == true then
        OPstrongpunch()
        else
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, true)
        strongpunch()
        wait(1)
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, false)
        end
    end
    if key == "e" then
        if death == true then return end
        plr.Character.Humanoid.WalkSpeed = 8
        Combo1()
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, true)
        wait(0.5)
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, false)
        local energy = game:GetService("Players").LocalPlayer.Character.Stand.StandLarm.Energy
        rs.Trail:FireServer(energy, true)
        rs.Transparency:FireServer(
        game:GetService("Players").LocalPlayer.Character.Stand.StandLarm,
        0.3)
        wait(0.5)
        Combo2()
        wait(1)
        rs.Transparency:FireServer(
        game:GetService("Players").LocalPlayer.Character.Stand.StandLarm,
        1)
        local energy = game:GetService("Players").LocalPlayer.Character.Stand.StandLarm.Energy
        game:GetService("ReplicatedStorage").Trail:FireServer(energy, false)
        if powerup == true then
        plr.Character.Humanoid.WalkSpeed = 35
        else
        plr.Character.Humanoid.WalkSpeed = 20
        end
    end
    if key == "y" then
        if death == true then return end
        rs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Spits*", "All")
        SpitLol()
        wait(1.3)
        rs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You have been diagnosed with cancer stage 69 alongside hepatites Z, Get rekt lol you finna die", "All")
    end
    if key == "c" then
        if death == true then return end
        if powerup == true then
            mousetp()
            else
            dashyat()
        end
    end
    if key == "5" then
        if death == true then return end
        if powerup == true then
           TS()
        end
    end
    if key == "-" then
        if death == true then return end
        powerup = false 
        rs.HamonOutline:FireServer(false)
        rs.Trail:FireServer(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.HamonLight, false)
        rs.Transparency:FireServer(plr.Character.Stand.LuckandPluck.HamonBlade, 1)
        rs.Transparency:FireServer(plr.Character.Stand.LuckandPluck.Blade, 0)
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, false)
        plr.Character.Humanoid.WalkSpeed = 20
        plr.Character.Humanoid.JumpPower = 50
        chr.Animate.idle.Animation1.AnimationId = assettest(2763928810)
        rs.Deflect:FireServer(false)
        mode2 = false
    end
    if key == "=" then
        if death == true then return end   
        rs.DoppioSlam:FireServer()
        powerup = true  
        rs.HamonOutline:FireServer(true)
        rs.Trail:FireServer(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.HamonLight, true)
        rs.Transparency:FireServer(plr.Character.Stand.LuckandPluck.HamonBlade, 0)
        rs.Transparency:FireServer(plr.Character.Stand.LuckandPluck.Blade, 1)
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, true)
        plr.Character.Humanoid.WalkSpeed = 40
        plr.Character.Humanoid.JumpPower = 90
        chr.Animate.idle.Animation1.AnimationId = assettest(4504485574)
        rs.Deflect:FireServer(true)
        mode2 = false
    end
    if key == "q" then
        if death == true then return end
        powerup = false 
        rs.HamonOutline:FireServer(false)
        rs.Trail:FireServer(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.HamonLight, false)
        rs.Transparency:FireServer(plr.Character.Stand.LuckandPluck.Blade, 1)
        rs.Transparency:FireServer(plr.Character.Stand.LuckandPluck.HamonBlade, 0)
        rs.Trail:FireServer(plr.Character.Stand.LuckandPluck.Blade.Trail, true)
        plr.Character.Humanoid.WalkSpeed = 30
        plr.Character.Humanoid.JumpPower = 60
        chr.Animate.idle.Animation1.AnimationId = assettest(2763928810)
        mode2 = true
    end
end)




ui.InputBegan:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.X then
        if death == true then return end
        block = true
        game.ReplicatedStorage.Block:FireServer(true)
        barrageanimation = Instance.new("Animation")
        barrageanimation.AnimationId = assettest(3515781033)
        barrageanim = plr.Character.Humanoid:LoadAnimation(barrageanimation)
        barrageanim:Play(0.1, 1, 2.5)
        barrageanim:AdjustSpeed(8)
    end
end)

ui.InputEnded:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.X then
        block = false
        game.ReplicatedStorage.Block:FireServer(false)
        barrageanim:Stop()
    end
end)


coroutine.resume(coroutine.create(function()
while death ~= true and human.Parent == chr and noantifling == false do
    wait()
    if chr.HumanoidRootPart:FindFirstChildOfClass("BodyPosition") then
      chr.HumanoidRootPart:FindFirstChildOfClass("BodyPosition"):Destroy()
    end
    if chr.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity") then
        chr.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
    end
end
end))

