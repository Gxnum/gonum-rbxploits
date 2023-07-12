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
    if key == "f" then
        optp()
    end
end)