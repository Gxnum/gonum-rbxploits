game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(key)
if game:GetService("Players").LocalPlayer.Character["Torso"].Anchored == true then return end
    if key == "n" then
        for i,v in pairs(game.Workspace.Entities:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < math.huge then
                game:GetService("ReplicatedStorage").SPOHRTZDMG:FireServer(v.Humanoid)
            end
        end
    end
end
end)

local args = {
    [1] = 9.9999,
    [2] = "ShadowDio"
}

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(key)
if game:GetService("Players").LocalPlayer.Character["Torso"].Anchored == true then return end
    if key == "g" then
        game:GetService("ReplicatedStorage").Timestop:FireServer(unpack(args))
    end
end) 

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(key)
if game:GetService("Players").LocalPlayer.Character["Torso"].Anchored == true then return end
    if key == "l" then
        game:GetService("ReplicatedStorage").RTZ:FireServer(true)
        game:GetService("ReplicatedStorage").RTZEffect:FireServer(true)
        game:GetService("ReplicatedStorage").Deflect:FireServer(true)
    end
end) 

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(key)
if game:GetService("Players").LocalPlayer.Character["Torso"].Anchored == true then return end
    if key == "k" then
        game:GetService("ReplicatedStorage").RTZ:FireServer(false)
        game:GetService("ReplicatedStorage").RTZEffect:FireServer(false)
        game:GetService("ReplicatedStorage").Deflect:FireServer(false)
    end
end) 

local disabled = Instance.new("BoolValue",game:GetService("Players").LocalPlayer.Character)
disabled.Value = false

function optp()
	local ho = game:GetService("Players").LocalPlayer:GetMouse().Target.Parent:FindFirstChild("Humanoid")
	if game:GetService("Players").LocalPlayer:GetMouse().Target and ho then
		local horp = game:GetService("Players").LocalPlayer:GetMouse().Target.Parent:FindFirstChild("HumanoidRootPart")
		local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		local magnitude = (horp.Position - hrp.Position).magnitude
		if 0 < magnitude then
            local char = game:GetService("Players").LocalPlayer:GetMouse().Target.Parent
            for _ = 1, 50 do
                game:GetService("ReplicatedStorage").HamonSword:FireServer(ho, 100, math.huge,Vector3.new(0,0,0))
                wait(.01)
            end
        end
	end
end

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(key)
if game:GetService("Players").LocalPlayer.Character["Torso"].Anchored == true then return end
if disabled.Value == true then return end
    if key == "p" then
        optp()
    end
end)


game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(key)
if game:GetService("Players").LocalPlayer.Character["Torso"].Anchored == true then return end
if disabled.Value == true then return end
    if key == "j" then
        game:GetService("ReplicatedStorage").SPOHRTZDMG:FireServer(game.Players.LocalPlayer.Character.Humanoid)
    end
end)
