--Made By The Cringe Platinum#6760---
--SP REQ
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
local block = false
local antifling = true
local active = false
local speed = false
local punch1 = true
local punch2 = false

function assettest(Id)
    return "rbxassetid://"..Id
end

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
coroutine.resume(coroutine.create(function()
    while rser.Stepped:Wait() do
        for i,v in pairs(chr:GetChildren()) do
            if v:IsA("Part") then
                a:FireServer(v,false)
                v.Anchored = false
            end
        end
        if death == true then
            break
        end
        hum:SetStateEnabled(3, true)
        hum.PlatformStand = false
        chr.Ragdoll.Value = false
        chr.Disabled.Value = false
        hum.AutoRotate = true
        if antifling == true then
            for i,v in pairs(chr.HumanoidRootPart:GetChildren()) do
                if v:IsA("BodyVelocity") or v:IsA("BodyPosition") or v:IsA("BodyAngularVelocity") or v:IsA("BodyForce") or v:IsA("BodyGyro") or v:IsA("BodyThrust") then
                    v:Destroy()
                end
            end
        elseif antifling == false then
            print("bruh")
        end
    end
end))
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



plr.Character.Humanoid.WalkSpeed = 21
plr.Character.Humanoid.JumpPower = 50

chr.Animate.idle.Animation1.AnimationId = assettest(4792735067)

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

function punch()
    gun = Instance.new("Animation")
    gun.AnimationId = assettest(2876963877)
    ga = hum:LoadAnimation(gun)
    ga:Play()
    ga:AdjustSpeed(1)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Left Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Left Arm"].Size*10
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 3, 3, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://241837157", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://6308606116", 1, 2)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end	
    end)
end

function punch2()
    punch2 = true
    punch1 = false
    punch2 = Instance.new("Animation")
    punch2.AnimationId = assettest(2876963877)
    pun = hum:LoadAnimation(punch2)
    pun:Play()
    pun:AdjustSpeed(1)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Left Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Left Arm"].Size*10
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0.1, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://241837157", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://6308606116", 1, 2)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end	
    end)
end



function Sokind()
    Sokindanimation = Instance.new("Animation")
    Sokindanimation.AnimationId = assettest(2876963877)
    Sokindanim = plr.Character.Humanoid:LoadAnimation(Sokindanimation)
    Sokindanim:Play(0.1,1,1)
    Sokindanim:AdjustSpeed(1)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Left Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Left Arm"].Size*10
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(0.5)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0.1, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://241837157", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://9011193162", 1, 2)
                rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,false)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end	
    end)
end

function mousetp()
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.3)
    plr.Character:SetPrimaryPartCFrame(CFrame.new(mouse.Hit.p + Vector3.new(0, 3.5, 0)))
    wait(0.2)
    Damage12:FireServer(hum,hrp.CFrame,0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://5771441412", 1, 50)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
end

function Uppercut()
    Uppercutanimation = Instance.new("Animation")
    Uppercutanimation.AnimationId = assettest(5668494898)
    Uppercutanim = plr.Character.Humanoid:LoadAnimation(Uppercutanimation)
    Uppercutanim:Play(0.1,1,1)
    Uppercutanim:AdjustSpeed(0.8)
    wait(0.3)
    rs.PlayerStrongPunch2:FireServer(Vector3.new(1.5, 0.3, 1.5), Vector3.new(1.5, 0.3, 1.5), BrickColor.new("Lily white"))
    rs.PlayerStrongPunch2:FireServer(Vector3.new(1.5, 0.3, 1.5), Vector3.new(2, 0.3, 2), BrickColor.new("Lily white"))
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Left Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Left Arm"].Size*10
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
    wait(0.5)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0.1, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://241837157", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://5044897021", 1, 2)
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 10, 10, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
                rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,true)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end	
    end)
end



function bringall()
    bringallanimation = Instance.new("Animation")
    bringallanimation.AnimationId = assettest(4263686112)
    bringallanim = plr.Character.Humanoid:LoadAnimation(bringallanimation)
    bringallanim:Play(0.1,1,1)
    bringallanim:AdjustSpeed(1)
    wait(8)
    for i,v in pairs(game.Workspace.Entities:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
            for i,v in pairs(game.Workspace.Entities:GetChildren()) do
                rs.KQRGrab:FireServer(v.Humanoid, 4, 1.25, Vector3.new(0,0,0))
            end             
        end
    end 
end
	
function StrongPunch()
    StrongPunchanimation = Instance.new("Animation")
    StrongPunchanimation.AnimationId = assettest(5717217365)
    StrongPunchanim = plr.Character.Humanoid:LoadAnimation(StrongPunchanimation)
    StrongPunchanim:Play(0.1,1,1)
    StrongPunchanim:AdjustSpeed(0.6)
    rs.PlayerStrongPunch:FireServer(Vector3.new(1.5, 0.5, 1.5), Vector3.new(1.5, 0.5, 1.5), BrickColor.new("Lily white"))
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*6
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
               rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
               rs.Knock:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 1, 1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*1+Vector3.new(0,1,0), "rbxassetid://241837157", 1, Color3.new(1, 0, 0), "rbxassetid://4137216950", 0.8, 100)
               rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://5577919356", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://6308606116", 2, 1)
            end
		end
        wait(0.5)
        if hitbox1 then
        hitbox1:Destroy() 
        end
        wait(3)
        StrongPunchcooldown = false
    end)
end

function BodyDMG()
    Combo3animation = Instance.new("Animation")
    Combo3animation.AnimationId = assettest(5717217365)
    Combo3anim = plr.Character.Humanoid:LoadAnimation(Combo3animation)
    Combo3anim:Play(0.1,1,1)
    Combo3anim:AdjustSpeed(0.6)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Torso"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Torso"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Torso"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 3.2, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://5577919356", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://6832470734", 0.5, 2)
            end
		end
        wait(1)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end

function Combo2()
    Combo2animation = Instance.new("Animation")
    Combo2animation.AnimationId = assettest(2876984527)
    Combo2anim = plr.Character.Humanoid:LoadAnimation(Combo2animation)
    Combo2anim:Play(0.1,1,1)
    Combo2anim:AdjustSpeed(1.8)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*6
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
               rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
               rs.Knock:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 1, 1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*1+Vector3.new(0,1,0), "rbxassetid://241837157", 1, Color3.new(1, 0, 0), "rbxassetid://4137216950", 0.8, 100)
               rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 3.2, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://5577919356", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://6832470734", 1, 2)
            end
		end
        wait(0.5)
        if hitbox1 then
        hitbox1:Destroy() 
        end
    end)
end

local tauntcd = false
function taunt()
	if tauntcd == true then return end
	tauntcd = true
	local randomline = math.random(1, 2)
	if randomline == 1 then
		tauntevent:FireServer(head, "rbxassetid://4776190113", 0.75, 4.5, 0)
	elseif randomline == 2 then
		tauntevent:FireServer(head, "rbxassetid://4776200453", 1.25, 4.5, 0)
	end
	tauntcd = false
end

function Combo3()
    Combo3animation = Instance.new("Animation")
    Combo3animation.AnimationId = assettest(5717217365)
    Combo3anim = plr.Character.Humanoid:LoadAnimation(Combo3animation)
    Combo3anim:Play(0.1,1,1)
    Combo3anim:AdjustSpeed(0.6)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*6
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
               rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
               rs.Knock:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 1, 1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*1+Vector3.new(0,1,0), "rbxassetid://241837157", 1, Color3.new(1, 0, 0), "rbxassetid://4137216950", 0.8, 100)
               rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://5577919356", 5 ,Color3.new(1, 1, 1), "rbxassetid://504744048", 0.5, 1)
            end
		end
        wait(0.5)
        if hitbox1 then
        hitbox1:Destroy() 
        end
    end)
end

function Combo1()
    Comboanimation = Instance.new("Animation")
    Comboanimation.AnimationId = assettest(2876963877)
    Comboanim = plr.Character.Humanoid:LoadAnimation(Comboanimation)
    Comboanim:Play(0.1,1,1)
    Comboanim:AdjustSpeed(1)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*6
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
               rs.HamonSword:FireServer(hit.Parent.Humanoid, 1-320, math.huge, Vector3.new(-55, -55, 0))
               rs.Knock:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 1, 1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*1+Vector3.new(0,1,0), "rbxassetid://241837157", 1, Color3.new(1, 0, 0), "rbxassetid://4137216950", 0.8, 100)
               rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 5, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://5577919356", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://6832470734", 2, 2)
            end
		end
        wait(0.5)
        if hitbox1 then
        hitbox1:Destroy() 
        end
    end)
end


function HealUp()
    for i,v in pairs(game.Workspace.Entities:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < math.huge then
                game:GetService("ReplicatedStorage").SPOHRTZDMG:FireServer(v.Humanoid)
                game:GetService("ReplicatedStorage").SPOHRTZDMG:FireServer(v.Humanoid)
                game:GetService("ReplicatedStorage").SPOHRTZDMG:FireServer(v.Humanoid)
                game:GetService("ReplicatedStorage").SPOHRTZDMG:FireServer(v.Humanoid)
                game:GetService("ReplicatedStorage").SPOHRTZDMG:FireServer(v.Humanoid)
            end
        end
    end
end

function TrueOverite()
    Overiteanimation = Instance.new("Animation")
    Overiteanimation.AnimationId = assettest(2876986199)
    Overiteanim = plr.Character.Humanoid:LoadAnimation(Overiteanimation)
    Overiteanim:Play(0.1,1,1)
    Overiteanim:AdjustSpeed(1)
    wait(1.1)
    rs.PlayerStrongPunch:FireServer(Vector3.new(1, 0.3, 1), Vector3.new(1, 0.3, 1), BrickColor.new("Gold"))
    rs.PlayerStrongPunch:FireServer(Vector3.new(1.5, 0.3, 1.5), Vector3.new(1.5, 0.3, 1.5), BrickColor.new("Lily white"))
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Left Arm"].Size*6
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 65, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://241837157", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://8417230527 ", 1, 2)
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 65, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://241837157", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://8417230527 ", 1, 2)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 0.8, "", 1, 0)
                rs.ULFDamage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 0.1, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
                wait(0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 59, 0, Vector3.new(0, 0, 0), 2, "", 1, 0)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end



function Goddy()
    Goddyanimation = Instance.new("Animation")
    Goddyanimation.AnimationId = assettest(5682501972)
    Goddyanim = plr.Character.Humanoid:LoadAnimation(Goddyanimation)
    Goddyanim:Play(0.1,1,1)
    Goddyanim:AdjustSpeed(0.5)
    wait(0.8)
    rs.PlayerStrongPunch:FireServer(Vector3.new(1, 0.3, 1), Vector3.new(1, 0.3, 1), BrickColor.new("Lily white"))
    rs.PlayerStrongPunch:FireServer(Vector3.new(1.5, 0.3, 1.5), Vector3.new(1.5, 0.3, 1.5), BrickColor.new("Lily white"))
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Left Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Left Arm"].Size*6
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 65, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://241837157", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://314390675", 1, 2)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 0)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end

local timestopCD = false
function timestop2()
    if timestopCD == true then return end
    plr.Character.Humanoid.WalkSpeed = 0
	timestopCD = true
    timestopanimation = Instance.new("Animation")
    timestopanimation.AnimationId = assettest(5726508505)
    timestopanim = plr.Character.Humanoid:LoadAnimation(timestopanimation)
    timestopanim:Play()
    timestopanim:AdjustSpeed(1)
    wait(1)
    rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,true)
    wait(15)
    rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,false)
    plr.Character.Humanoid.WalkSpeed = 20
    wait(12)
    timestopCD = false
end

local timestopCD = false
function timestop()
    if timestopCD == true then return end
    plr.Character.Humanoid.WalkSpeed = 0
	timestopCD = true
    timestopanimation = Instance.new("Animation")
    timestopanimation.AnimationId = assettest(5726508505)
    timestopanim = plr.Character.Humanoid:LoadAnimation(timestopanimation)
    timestopanim:Play()
    timestopanim:AdjustSpeed(1)
    wait(1)
    rs.Timestop:FireServer(9.9, "jotaro")
    plr.Character.Humanoid.WalkSpeed = 20
    wait(12)
    timestopCD = false
end


function RETEZ()
    RETEZanimation = Instance.new("Animation")
    RETEZanimation.AnimationId = assettest(4792747530)
    RETEZanim = plr.Character.Humanoid:LoadAnimation(RETEZanimation)
    RETEZanim:Play(0.1,1,1)
    RETEZanim:AdjustSpeed()
    wait(1)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1) 
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["HumanoidRootPart"]
	hitbox1.Size = game.Players.LocalPlayer.Character["HumanoidRootPart"].Size*20
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,true)
                wait(10)
                rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,false)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end

function overspeedbuff()
    plr.Character.Humanoid.WalkSpeed = 0
    chr.Animate.walk.WalkAnim.AnimationId = assettest(2763930240)
    wait(0.1)
    plr.Character.Humanoid.WalkSpeed = 20
    plr.Character.Humanoid.JumpPower = 50
    local trail = game.Players.LocalPlayer.Character.Stand.StandLarm.Trail
    game.ReplicatedStorage.Trail:FireServer(trail, false)
    local Trail = game.Players.LocalPlayer.Character.Stand.StandRarm.Trail
    game.ReplicatedStorage.Trail:FireServer(Trail, false)
    speed = false
    rs.LTrail:FireServer(trail, false)
    rs.RTrail:FireServer(trail, false)
end

function speedbuff()
    local trail = game.Players.LocalPlayer.Character.Stand.StandLarm.Trail
    game.ReplicatedStorage.Trail:FireServer(trail, true)
    local Trail = game.Players.LocalPlayer.Character.Stand.StandRarm.Trail
    game.ReplicatedStorage.Trail:FireServer(Trail, true)
    speed = true
    plr.Character.Humanoid.WalkSpeed = 0
    wait(0.05)
    chr.Animate.walk.WalkAnim.AnimationId = assettest(57171408373)
    plr.Character.Humanoid.WalkSpeed = 70.5
    plr.Character.Humanoid.JumpPower = 50
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    wait(0.1)
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
    rs.VampireDash:FireServer(BrickColor.new("Lily white"))
end

function Laser()
    zoompunchanimation = Instance.new("Animation")
    zoompunchanimation.AnimationId = assettest(5682501972)
    zoompucnhanim = plr.Character.Humanoid:LoadAnimation(zoompunchanimation)
    zoompucnhanim:Play()
    zoompucnhanim:AdjustSpeed(0.6)
    wait(0.7)
    rs.PlayerStrongPunch:FireServer(Vector3.new(0.2, 20, 0.2), Vector3.new(0.5, 20, 0.5), BrickColor.new("Pastel Blue"))
    rs.PlayerStrongPunch:FireServer(Vector3.new(0.07, 20, 0.07), Vector3.new(0.3, 20, 0.3), BrickColor.new("Mint"))
    rs.PlayerStrongPunch:FireServer(Vector3.new(0.1, 1, 0.1), Vector3.new(0.8, 0.5, 0.8), BrickColor.new("Black"))
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
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 65, 0.1, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*280+Vector3.new(0,1,0),"rbxassetid://241837157", 0.2 ,Color3.new(1, 1, 1), "rbxassetid://336771379 ", 2, 2)
                rs.ULFDamage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 1, Vector3.new(0, 0, 0), 1, 0.1)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 0, Vector3.new(0, 0, 0), 0.1, "", 1, 20)
                wait(0.5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 0, Vector3.new(0, 0, 0), 0.1, "", 1, 20)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 0, Vector3.new(0, 0, 0), 0.1, "", 1, 20)
                wait(0.5)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 0, Vector3.new(0, 0, 0), 0.1, "", 1, 20)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 45, 0, Vector3.new(0, 0, 0), 0.1, "", 1, 20)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end

function rushdmg()
end

function Dash()
    rushdmg()
    ts:Create(cam, TweenInfo.new(t), {FieldOfView = 70}):Play()
    rushanimation = Instance.new("Animation")
    rushanimation.AnimationId = assettest(2)
    rushanim = plr.Character.Humanoid:LoadAnimation(rushanimation)
    rush = true
    local rushboost = Instance.new("BodyVelocity")
    rushboost.MaxForce = Vector3.new(10000000, 10000000, 10000000)
    rushboost.P = math.huge
    rushboost.Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 80
    rushboost.Parent = plr.Character.Torso
    rushanim:Play()
    rushanim:AdjustSpeed(3)
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

mouse.Button1Down:connect(function()
	punch()
end)


mouse.KeyDown:Connect(function(key)
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
                poseanimation.AnimationId = assettest(3893638675)
                poseanim = plr.Character.Humanoid:LoadAnimation(poseanimation)
                poseanim:Play()
                wait(2)
                poseanim:AdjustSpeed(0)
                plr.Character.Humanoid.WalkSpeed = 20
                plr.Character.Humanoid.JumpPower = 50
            end
            if poseval.Value == 2 then
               poweroff = true
               rs.Menacing:FireServer(false)
               poseanim:Stop()
               if powerup == false then
                   wait(2)
                    plr.Character.Humanoid.WalkSpeed = 20
                    plr.Character.Humanoid.JumpPower = 50
               end
            end
            wait(0.5)
            pose = false
        end
    end
    if key == "b" then
        if death == true then return end
        RETEZ()
        rs.RTZEffect:FireServer(true)
        wait(0.3)
        wait(0.1)
        rs.RTZ:FireServer(false)
    end
    if key == "0" then
        if death == true then return end
        bringall()
    end
    if key == "y" then
        if death == true then return end
        plr.Character.Humanoid.WalkSpeed = 10
        plr.Character.Humanoid.JumpPower = 50
        TrueOverite()
        wait(1.1)
        plr.Character.Humanoid.WalkSpeed = 20
        plr.Character.Humanoid.JumpPower = 50
    end
    if key == "9" then
        if death == true then return end
        HealUp()
    end
    if key == "v" then                  
        if death == true then return end
        mousetp()
    end
    if key == "4" then                  
        if death == true then return end
        Sokind()
    end
    if key == "r" then
        if death == true then return end
        StrongPunch()
    end
    if key == "t" then
        if death == true then return end
        Laser()
    end
    if key == "e" then
        if death == true then return end
        if Combocooldown == true then return end
        Combo2()
        wait(0.7)
        Combo1()
        wait(0.5)
        BodyDMG()
        wait(0.2)
        Dash()
    end
    if key == "h" then
        if death == true then return end
        Uppercut()
    end
    if key == "f" then
        if death == true then return end
        if l.TS.Value == true then
        rs.RTZ:FireServer(true)
        rs.RTZEffect:FireServer(true)
        wait(0.3)
        wait(0.1)
        rs.RTZ:FireServer(false)
        else
        timestop()
        end
    end
    if key == "z" then
        if death == true then return end
        speedbuff()
        wait(10)
        overspeedbuff()
    end
    if key == "4" then
        if death == true then return end
        Sokind()
    end
    if key == "j" then
        if death == true then return end
        if l.TS.Value == true then
        Goddy()
        end
    end
    if key == "5" then
        if death == true then return end
        rs.GetUp:FireServer()
    end
end)


ui.InputBegan:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.X then
        if death == true then return end
        block = true
        rs.Deflect:FireServer(true)
        Bruhasanimation = Instance.new("Animation")
        Bruhasanimation.AnimationId = assettest(5672944506)
        Bruhasanim = plr.Character.Humanoid:LoadAnimation(Bruhasanimation)
        Bruhasanim:Play(0.1, 1, 2.5)
        Bruhasanim:AdjustSpeed(1)
    end
end)

ui.InputEnded:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.X then
        block = false
        rs.Deflect:FireServer(false)
        Bruhasanim:Stop()
    end
end)


