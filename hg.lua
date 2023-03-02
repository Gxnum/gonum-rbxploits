function hg()
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
    for _ = 1, 18 do
        game:GetService("ReplicatedStorage").TwentyMeterSplash:FireServer()
    end
end
function suffer(Target)
    pcall(function()
    local tn = Target.Name
    local th = Target.Humanoid
    local thrp = Target.HumanoidRootPart
    local tween = ts:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(4), {CFrame = thrp.CFrame*CFrame.new(0,0,5)})
	game:GetService("ReplicatedStorage").Anchor:FireServer(thrp, true)
	game:GetService("ReplicatedStorage").HamonSword:FireServer(th, 1,math.huge,Vector3.new(-500,100,0))
    end)
end
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(key)
if game:GetService("Players").LocalPlayer.Character["Torso"].Anchored == true then return end
    if key == "t" then
        hg()
    end
end) 
game:GetService("ReplicatedStorage").Knocked:Connect(function(key)
    if key == "r" then
        if game:GetService("Players").LocalPlayer:GetMouse().Target and game:GetService("Players").LocalPlayer:GetMouse().Target.Parent then
            local Character = nil
            if game:GetService("Players").LocalPlayer:GetMouse().Target.Parent:IsA("Model") and game:GetService("Players").LocalPlayer:GetMouse().Target.Parent.Name == "Stand" then
                Character = game:GetService("Players").LocalPlayer:GetMouse().Target.Parent.Parent
            elseif game:GetService("Players").LocalPlayer:GetMouse().Target.Parent:FindFirstChildOfClass("Humanoid") then
                Character = game:GetService("Players").LocalPlayer:GetMouse().Target.Parent
            end
            if Character then
                suffer(Character)
            end
        end
    end
end)