local plr = game:GetService("Players").LocalPlayer
repeat
	wait()
until plr.Character and plr.Character.Humanoid
local chr = plr.Character
local human = chr.Humanoid
local hrp = chr.HumanoidRootPart
mouse = plr:GetMouse()
cam = workspace.CurrentCamera
local ts = game:GetService("TweenService")
local ntorso = chr["Torso"]
local stand = chr:WaitForChild("Stand")
local disabled = Instance.new("BoolValue",chr)
disabled.Value = false

game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50

mouse.Button1Down:connect(function()
    for _ = 1, 12 do
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
	    game:GetService("ReplicatedStorage").EmperorRapidFire:FireServer("Strong", CFrame.new(game.Players.LocalPlayer:GetMouse().hit.p.X, game.Players.LocalPlayer:GetMouse().hit.p.Y + 1, game.Players.LocalPlayer:GetMouse().hit.p.Z))
    end
end)