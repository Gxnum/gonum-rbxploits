local mouse = game:GetService("Players").LocalPlayer:GetMouse()
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(key)
if game:GetService("Players").LocalPlayer.Character["Torso"].Anchored == true then return end
    if key == "t" then
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
        local args1 = {
            [1] = "T",
            [2] = 0,
            [3] = false,
            [4] = "pBubble.Sight",
            [5] = 1000,
            [6] = 1000,
            [7] = false,
            [8] = 1000
        }
        game:GetService("ReplicatedStorage").SoftAndWetRemotes.SoftAndWet:FireServer(unpack(args1))
    end
    if key == "y" then
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
        local args2 = {
            [1] = "Y",
            [2] = 0,
            [3] = false,
            [4] = "pBubble.Water",
            [5] = 1000,
            [6] = 1000,
            [7] = false,
            [8] = 1000
        }
        game:GetService("ReplicatedStorage").SoftAndWetRemotes.SoftAndWet:FireServer(unpack(args2))
    end
    if key == "f" then
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
        local args3 = {
            [1] = "F",
            [2] = 0,
            [3] = false,
            [4] = "pBubble.Screws",
            [5] = 1000,
            [6] = 1000,
            [7] = false,
            [8] = 1000
        }
        game:GetService("ReplicatedStorage").SoftAndWetRemotes.SoftAndWet:FireServer(unpack(args3))
    end
    if key == "g" then
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
        local args4 = {
            [1] = "F",
            [2] = math.huge,
            [3] = false,
            [4] = "pBubble.Screws",
            [5] = 1000,
            [6] = 1000,
            [7] = false,
            [8] = 1000
        }
        game:GetService("ReplicatedStorage").SoftAndWetRemotes.SoftAndWet:FireServer(unpack(args4))
    end
    if key == "v" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.hit.p.X, mouse.hit.p.Y + 2, mouse.hit.p.Z)
    end
end) 