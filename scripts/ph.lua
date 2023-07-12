local MainVariables = {
    Death = false,
    Active = false,
    AntiAnchor = true,
    AntiFling = true,
    AntiKnock = true,
    AntiEffect = true,
    AntiKick = nil,
    Player = game.Players.LocalPlayer,
    Mouse = nil,
	IdleConnection = nil
}
local Paints = {
    Color = "White",
    PaintDeb = false
}
local rs = game:GetService("ReplicatedStorage")
local plr = game:GetService("Players").LocalPlayer
local ui = game:GetService("UserInputService")
local rser = game:GetService("RunService")
local l = game:GetService("Lighting")
local ts = game:GetService("TweenService")
local sg = game:GetService("StarterGui")
local cam = game.Workspace.CurrentCamera
local chr = plr.Character
local hum = chr.Humanoid
local mouse = plr:GetMouse()
local hrp = chr.HumanoidRootPart
local h = chr["Head"]
local tor = chr["Torso"]
local ra = chr["Right Arm"]
local la = chr["Left Arm"]
local rl = chr["Right Leg"]
local ll = chr["Left Leg"]
local normal = true
local death = false
local deathevent = rs.Death
local vd = rs.VampireDash
local spe1 = rs.PlayerStrongPunch
local spe2 = rs.PlayerStrongPunch2
local sj = rs.Jump
local rj = rs.ReversedJump
local d1 = rs.Damage
local d2 = rs.Damage2
local d3 = rs.Damage3
local d11 = rs.Damage11
local d11s = rs.Damage11Sans
local d11e = rs.Damage11Enderman
local d12 = rs.Damage12
local d12s = rs.Damage12Sans
local d12e = rs.Damage12Enderman
local d31 = rs.Damage31
local bd = rs.BurnDamage
local ftpd = rs.FOTPSDamageTeleport
local hamonsword = rs.HamonSword
local ulfd = rs.ULFDamage
local a = rs.Anchor
local trans = rs.Transparency
local k = rs.Knock
local kc = rs.KnockClient
local kd = rs.Knocked
local gu = rs.GetUp
local d = rs.Deflect
local tv = rs.Trail
local rtz = rs.RTZ
local taunts = rs.Taunt
local deletestand = nil
local ub = ui.InputBegan
local ue = ui.InputEnded
local kd = mouse.KeyDown
local c1 = mouse.Button1Down
local c2 = mouse.Button2Down
local healmodevar = false
local cbt = false
local antifling = true
local uis = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local plr = game.Players.LocalPlayer
local chr = plr.Character
local HumanoidRootPart1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local getLighting = game:GetService("Lighting")
local PunchDeb = false
local LpHum = plr.Character.Humanoid
local mouse = plr:GetMouse()
local BarrageDeb = false
local HealBarrageDeb = false
local IntValue = Instance.new("IntValue")
local IntroDeb = false
local Int_Val_Mod = 0
local Invisible = false
local hum = chr.Humanoid
local humrt = chr.HumanoidRootPart
local rStorage = game:GetService("ReplicatedStorage")
local death = false
local deathevent = rStorage.Death
local deletestand = nil
local doppioslam = game.ReplicatedStorage.DoppioSlam
local strongpunchevent = rStorage.PlayerStrongPunch
local uis = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer
local PaintDeb = false
local mouse = plr:GetMouse()
local uis = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer
local PaintDeb = false
local mouse = plr:GetMouse()
local amogus = 1
local sussy = 1
local FOV = 900
local FOV2 = 70
local uistest = game:GetService("UserInputService")
local creamorbtest = false
local playertest = game.Players.LocalPlayer
local rstoragetest = game:GetService("ReplicatedStorage")
local mystand = nil
local movetest = false
local mousetest = playertest:GetMouse()
local humtest = playertest.Character.Humanoid
local chartest = playertest.Character
local vanillaiceisangrytest = 0
local dogdeval = 0
local creaminvistest = false
local customcreammodetest = false
local customcreammodelegittest = true
local rservicetest = game:GetService("RunService")
local Grab = false
local player = game.Players.LocalPlayer
local tService = game:GetService("TweenService")
local char = player.Character
local uis = game:GetService("UserInputService")
local human = char:FindFirstChild("Humanoid")
local mouse = player:GetMouse()
local Rainbow = false
local camspeed = 5
local amogusslide = false
local LocalPlayer = game:GetService("Players").LocalPlayer
local saitamaslide = false

local blackhole = false
uis.InputBegan:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.F then
		if death == true then return end
        blackhole = true
        repeat
		rs.Damage11Sans:FireServer(hrp.Parent.Humanoid, hrp.Parent.Head.CFrame, 0.0001, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://", 0.7, 20)
		game:GetService("ReplicatedStorage").Plaque:FireServer(Vector3.new(mouse.hit.p.X, mouse.hit.p.Y + 1, mouse.hit.p.Z))
		wait(.1)
		until blackhole == false
	end
end)
uis.InputEnded:Connect(function(Input, IsTyping)
    if IsTyping then return end
	if death == true then return end
    if Input.KeyCode == Enum.KeyCode.F then
        blackhole = false
    end    
end)
kd:Connect(function(key)
    if key == "v" then
        if death == true then return end
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.hit.p.X, mouse.hit.p.Y + 2, mouse.hit.p.Z)
        rs.Damage11:FireServer(hrp.Parent.Humanoid, hrp.Parent.Head.CFrame, 0.0001, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://2554263184", 1, 20)
    end
end)
