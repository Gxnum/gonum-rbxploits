local plr = game:GetService("Players").LocalPlayer
repeat

until plr.Character and plr.Character.Humanoid
local chr = plr.Character
local human = chr.Humanoid
local hrp = chr.HumanoidRootPart
mouse = plr:GetMouse()


game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50

mouse.Button1Down:connect(function()
    for _ = 1, 5 do
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
	    game:GetService("ReplicatedStorage").SpaceRipperStingyEyes:FireServer()
    end
end)