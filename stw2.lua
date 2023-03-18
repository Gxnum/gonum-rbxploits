--[[ Old Shadow The World / Old Shadow Dio --by a guy named gonum
{TO EXECUTE THIS SCRIPT, YOU NEED SHADOW THE WORLD (STW)}
{IF YOU WANT TO CHANGE STANDS, SCRIPTS THEN REJOIN}
EXECUTE THIS SCRIPT ONLY ONCE
--]]

local mystand = nil
for i,v in pairs(game:GetService("Lighting"):GetChildren())do
for i,v2 in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren())do
if v:IsA("LocalScript") and v2:IsA("LocalScript") then
if v.Name == v2.Name then
mystand = v2.Name
end
end
end
end

--Events
local replicatedstorage = game:GetService("ReplicatedStorage")
local damageevent = replicatedstorage.Damage
local damageevent2 = replicatedstorage.BurnDamage
local blockevent = replicatedstorage.Block
local blockevent2 = replicatedstorage.SuperArmor
local donutevent = replicatedstorage.FOTPSDamageTeleport
local timestopevent = replicatedstorage.Timestop
local transparencyevent = replicatedstorage.Transparency
local strongpunchevent = replicatedstorage.PlayerStrongPunch
local strongpunchevent2 = replicatedstorage.PlayerStrongPunch2
local jumpevent = replicatedstorage.Jump
local jumpevent2 = replicatedstorage.Jump2
local dodgeevent = replicatedstorage.Dodge
local anchorevent = replicatedstorage.Anchor
local trailevent = replicatedstorage.Trail
local starfingerevent = replicatedstorage.StarFinger
local iggyevent = replicatedstorage.Iggy
local jumpevent = replicatedstorage.Jump
local velocityevent = replicatedstorage.Velocity
local poseevent = replicatedstorage.Menacing
local knockevent = replicatedstorage.Knock
local knockclientevent = replicatedstorage.KnockClient
local knockedevent = replicatedstorage.Knocked
local getupevent = replicatedstorage.GetUp
local berserkclientevent = replicatedstorage.BerserkClient
local tauntevent = replicatedstorage.Taunt
local yellevent = replicatedstorage.Yell
local berserkevent = replicatedstorage.Berserk
local vampiredashevent = replicatedstorage.VampireDash
local dg = 0
local outlineevent = replicatedstorage.HamonOutline
local slashevent = replicatedstorage.HamonSword
local stwevent = replicatedstorage.STWKnife
local laser = replicatedstorage.SpaceRipperStingyEyes
local rtzevent = replicatedstorage.STWRTZ


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


--standevent:FireServer()

--Values
local walk = 18
local jump = 50
local activu = false
	human.WalkSpeed = walk
	human.JumpPower = jump 

local oid = chr["Humanoid"]
local head = chr["Head"]
local ntorso = chr["Torso"]
local rightarm = chr["Right Arm"]
local leftarm = chr["Left Arm"]
local rightleg = chr["Right Leg"]
local leftleg = chr["Left Leg"]
local rot = chr["HumanoidRootPart"]

function makemotor(parent, p0, p1, c0, c1)
  local wel = Instance.new("Motor6D")
  wel.Part0 = p0
  wel.Part1 = p1
  if c0 ~= nil then
    wel.C0 = c0
  end
  if c1 ~= nil then
    wel.C1 = c1
  end
  wel.Parent = parent
  return wel
end

local stand = chr:WaitForChild("Stand")
local disabled = Instance.new("BoolValue",chr)
disabled.Value = false

--Animation
local anim0 = Instance.new("Animation")
anim0.AnimationId = "rbxassetid://2876963877"

local anim1 = Instance.new("Animation")
anim1.AnimationId = "rbxassetid://2876963057"

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://3893397364"

local anim3 = Instance.new("Animation")
anim3.AnimationId = "rbxassetid://3893841692"

local anim4 = Instance.new("Animation")
anim4.AnimationId = "rbxassetid://3445785160"

local anim5 = Instance.new("Animation")
anim5.AnimationId = "rbxassetid://3674055951"

local anim6 = Instance.new("Animation")
anim6.AnimationId = "rbxassetid://3923101279"

local anim7 = Instance.new("Animation")
anim7.AnimationId = "rbxassetid://3894577205"

local anim8 = Instance.new("Animation")
anim8.AnimationId = "rbxassetid://2876963877"

local leftpunchp = human:LoadAnimation(anim0)
local rightpunchp = human:LoadAnimation(anim1)
local uppercutp = human:LoadAnimation(anim2)
local combop = human:LoadAnimation(anim3)
local knifep = human:LoadAnimation(anim4)
local laserp = human:LoadAnimation(anim5)
local rtzp = human:LoadAnimation(anim6)
local tsknifep = human:LoadAnimation(anim7)
local leftpunchp = human:LoadAnimation(anim8)

local summonsfx
if ntorso:FindFirstChild"Swing" then
	summonsfx = ntorso.Swing
	summonsfx.SoundId = "rbxassetid://3552355246"
else
	summonsfx = Instance.new("Sound",chr)
	summonsfx.SoundId = "rbxassetid://3552355246"
	summonsfx.Volume = 2.5
end

local punchsfx
if ntorso:FindFirstChild"Swing" then
	punchsfx = ntorso.Swing
	punchsfx.SoundId = "rbxassetid://200632136"
else
	punchsfx = Instance.new("Sound",chr)
	punchsfx.SoundId = "rbxassetid://200632136"
	punchsfx.Volume = 2.5
end

local lasersfx
if ntorso:FindFirstChild"Swing" then
	lasersfx = ntorso.Swing
	lasersfx.SoundId = "rbxassetid://287142895"
else
	lasersfx = Instance.new("Sound",chr)
	lasersfx.SoundId = "rbxassetid://287142895"
	lasersfx.Volume = 2.5
end

local fleshbudssfx
if ntorso:FindFirstChild"Swing" then
	fleshbudssfx = ntorso.Swing
	fleshbudssfx.SoundId = "rbxassetid://4815052770"
else
	fleshbudssfx = Instance.new("Sound",chr)
	fleshbudssfx.SoundId = "rbxassetid://4815052770"
	fleshbudssfx.Volume = 2.5
end

function summon()
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand Left Arm"), 0)
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand Head"), 0)
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand Torso"), 0)
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand Right Arm"), 0)
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand Larm"), 0)
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand RArm"), 0)
    transparencyevent:FireServer(chr.Stand.MeshPart, 0)
    transparencyevent:FireServer(chr.Stand.MeshPart, 0)
    transparencyevent:FireServer(chr.Stand.MeshPart, 0)
    transparencyevent:FireServer(chr.Stand.MeshPart, 0)
    transparencyevent:FireServer(chr.Stand.MeshPart, 0)
    transparencyevent:FireServer(chr.Stand.Straps, 0)
    transparencyevent:FireServer(chr.Stand.Union, 0)
    transparencyevent:FireServer(chr.Stand.Union, 0)
    transparencyevent:FireServer(chr.Stand.Union, 0)
    transparencyevent:FireServer(chr.Stand.Union, 0)
    transparencyevent:FireServer(chr.Stand.Union, 0)
end
function unsummon()
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand Left Arm"), 1)
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand Head"), 1)
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand Torso"), 1)
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand Right Arm"), 1)
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand Larm"), 1)
    transparencyevent:FireServer(chr.Stand:FindFirstChild("Stand RArm"), 1)
    transparencyevent:FireServer(chr.Stand.MeshPart, 1)
    transparencyevent:FireServer(chr.Stand.MeshPart, 1)
    transparencyevent:FireServer(chr.Stand.MeshPart, 1)
    transparencyevent:FireServer(chr.Stand.MeshPart, 1)
    transparencyevent:FireServer(chr.Stand.MeshPart, 1)
    transparencyevent:FireServer(chr.Stand.Straps, 1)
    transparencyevent:FireServer(chr.Stand.Union, 1)
    transparencyevent:FireServer(chr.Stand.Union, 1)
    transparencyevent:FireServer(chr.Stand.Union, 1)
    transparencyevent:FireServer(chr.Stand.Union, 1)
    transparencyevent:FireServer(chr.Stand.Union, 1)
end

--Moveset

local knifecd = false
function knife()
    if activu == true then return end
    if knifecd == true then return end
    if game.Lighting.TS.Value == false then
        activu = true
        knifecd = true
        game:GetService("ReplicatedStorage").Untimestop:FireServer()
        knifep:Play(0.1, 1, 1)
        wait(.5)
        stwevent:FireServer()
        punchsfx:Play()
        wait(.5)
        activu = false
        wait(1)
        knifecd = false
    else
        activu = true
        knifecd = true
        summon()
        tsknifep:Play(0.1, 1, 1)
        wait(.5)
        for _ = 1, 8 do
            stwevent:FireServer()
            game:GetService("ReplicatedStorage").Untimestop:FireServer()
        end
        punchsfx:Play()
        wait(.5)
        activu = false
        unsummon()
        wait(1)
        knifecd = false
    end
end

local lasercd = false
function laser()
    if activu == true then return end
    if lasercd == true then return end
    activu = true
    lasercd = true
    laserp:Play(0.1, 1, 1)
    wait(.6)
	lasersfx:Play()
	game:GetService("ReplicatedStorage").SpaceRipperStingyEyes:FireServer()
	wait(.3)
	activu = false
	game:GetService("ReplicatedStorage").Untimestop:FireServer()
	wait(7.5)
	lasercd = false
end

local ez = nil
local fleshbudscd = false
function fleshbuds()
	if activu == true then return end
	if fleshbudscd == true then return end
	activu = true
	fleshbudscd = true
	ez = "nodmg"
	game:GetService("ReplicatedStorage").STWRTZ:FireServer(true)
	game:GetService("ReplicatedStorage").FleshBud:FireServer()
	game:GetService("ReplicatedStorage").FleshBud:FireServer()
	wait(.4)
	human.WalkSpeed = 5
	human.JumpPower = 0
	wait(2)
	game:GetService("ReplicatedStorage").STWRTZ:FireServer(false)
	activu = false
	game:GetService("ReplicatedStorage").Untimestop:FireServer()
	human.WalkSpeed = walk
	human.JumpPower = jump
	wait(9)
	fleshbudscd = false
end

local rtzcd = false
function rtz()
	if rtzcd == false then
		rtzp:Play(0.1, 1, 1)
		human.JumpPower = 0
		human.WalkSpeed = 0
		game:GetService("ReplicatedStorage").STWRTZ:FireServer(true)
		rtzcd = true
		wait(5)
		rtz()
		return
	end
	if rtzcd == true then
		rtzp:Stop(0.1)
		game:GetService("ReplicatedStorage").STWRTZ:FireServer(false)
		human.JumpPower = jump
		human.WalkSpeed = walk
		game:GetService("ReplicatedStorage").Untimestop:FireServer()
		wait(12)
		rtzcd = false
	end
end

mouse.KeyDown:connect(function(key)
if ntorso.Anchored == true then return end
if disabled.Value == true then return end
    if key == "q" then
        knife()
    end
    if key == "t" then
        laser()
    end
    if key == "y" then
        fleshbuds()
    end
    if key == "h" then
        rtz()
    end
end)

function hito(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
  for _, guy in pairs(workspace.Entities:GetChildren()) do
	if partoz.Anchored == true then return end
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
        berserkevent:FireServer(humz)
        local db = Instance.new("StringValue")
        db.Name = "alabo"
        db.Parent = horp
        delay(debtim, function()
          db:Destroy()
        end)
      end
    end

	if guy:FindFirstChild("Stand") and guy["Stand"]:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy["Stand"]:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
		do 
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        local humz = chr.Humanoid
        damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
        berserkevent:FireServer(humz)
        local db = Instance.new("StringValue")
        db.Name = "alabo"
        db.Parent = horp
        delay(debtim, function()
          db:Destroy()
        end)
      end
    end

  end
end
function hito2(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
  for _, guy in pairs(workspace.Entities:GetChildren()) do
	if partoz.Anchored == true then return end
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        for a =1,1 do
        damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
        end
        knockevent:FireServer(humz)
        berserkevent:FireServer(humz)
		local db = Instance.new("StringValue")
        db.Name = "alabo"
        db.Parent = horp
        delay(debtim, function()
          db:Destroy()
        end)
      end
    end

	if guy:FindFirstChild("Stand") and guy["Stand"]:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy["Stand"]:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
		do 
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
		knockevent:FireServer(humz)        
        berserkevent:FireServer(humz)
		local db = Instance.new("StringValue")
        db.Name = "alabo"
        db.Parent = horp
        delay(debtim, function()
          db:Destroy()
        end)
      end
    end

  end
end
function hito3(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
  for _, guy in pairs(workspace.Entities:GetChildren()) do
	if partoz.Anchored == true then return end
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        for a =1,1 do
        damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
        end
        knockevent:FireServer(humz)
        berserkevent:FireServer(humz)
		local db = Instance.new("StringValue")
        db.Name = "alabo"
        db.Parent = horp
        delay(debtim, function()
          db:Destroy()
        end)
      end
    end

	if guy:FindFirstChild("Stand") and guy["Stand"]:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy["Stand"]:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
		do 
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
		knockevent:FireServer(humz)        
        berserkevent:FireServer(humz)
		local db = Instance.new("StringValue")
        db.Name = "alabo"
        db.Parent = horp
        delay(debtim, function()
          db:Destroy()
        end)
      end
    end

  end
end
knockclientevent.OnClientEvent:connect(function(enemyplr)
	if chr.Block.Value == false then return end
	getupevent:FireServer()
	human:SetStateEnabled(3, false)
	wait(1.25)
	if human.Health >= 1 then
	getupevent:FireServer()
	human:SetStateEnabled(3, true)
	end
end)