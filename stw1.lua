--[[ Old Shadow The World / Old Shadow Dio --by a guy named gonum
{TO EXECUTE THIS SCRIPT, YOU NEED SHADOW THE WORLD (STW)}
{IF YOU WANT TO CHANGE STANDS, SCRIPTS THEN REJOIN}

Passives:

Stun-Free = No move can remove your ability to use your moves, not even stuns and impales
Death Energy = Everytime you die, your hitbox remains on the ground, copying your every move
Conqueror's Hamon = Low-minded people will feel confused due to your aura and presence
Stand Allergy = Any Stand attack that is hit on the opponent's stand will be reflected to the stw user
Pillarmen = Pillarmen deal 25% more damage against you
Conqueror's Hamon = Low-minded people will feel confused due to your aura and presence
Admin Bounty = Admins of this game overpower you, seek shelter
bro this cring kid = HACKER!!!!!!!! REPORT!!!!!!!11 IMAGGIN SO BAD

H = Maximum Breath > The user focuses and breathes carefully for 5.5 seconds 
while thrusting their sword to the ground, 
producing Hamon energy and making it flow through their veins for 45.5 seconds,
while simultaniously buffing their strength.

M1 = Stand Jab > 11 damage, 0.5 second cooldown
Q = Knife Throw > 12.5 damage, 2 second cooldown
F + Q = Knife Wall > 12.5 damage per hit (8x), 25 second cooldown
E = Shadow Uppercut > 30 damage, 2.5 second cooldown
R = The World 21 > 20 damage per hit (4x), 5 second cooldown
T = Space Ripper Stingy Eyes > 25 damage per hit (2x), 8.5 secondscooldown
Y = Fleshbuds > idk damage, 9 second cooldown
F = The World's Unknown Ability > Brings time to halt for 10 seconds until a move is used, 25 second cooldown
G = Menacing Pose > Strikes a menacing pose to belittle the opponent
H = Are you... watching me?! > Once in this state; the user is invincible for 5 seconds, 12 second cooldown
F + Z = WIP
X = Ultimate Defense > 75% damage reduction, 3 second cooldown
C = Roll > 50 Velocity, 3 second cooldown
V = Time Skip > 35 Studs, 5 second cooldown
B = Liver Punch > 30 damage, 10 second cooldown
]]


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

game.Players.LocalPlayer.Character[mystand]:Destroy()

--Events
local replicatedstorage = game:GetService("ReplicatedStorage")
local damageevent = replicatedstorage.Damage
local damageevent2 = replicatedstorage.BurnDamage
local blockevent = replicatedstorage.Block
local blockevent2 = replicatedstorage.SuperArmor
local donutevent = replicatedstorage.FOTPSDamageTeleport
local timestopevent = replicatedstorage.Timestop
local transparencyevent = replicatedstorage.Transparency
local strongpunchevent = replicatedstorage.StrongPunch
local strongpunchevent1 = replicatedstorage.PlayerStrongPunch
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
anim6.AnimationId = "rbxassetid://2876961881"

local anim7 = Instance.new("Animation")
anim7.AnimationId = "rbxassetid://3675049044"

local anim8 = Instance.new("Animation")
anim8.AnimationId = "rbxassetid://4733905305"

local anim9 = Instance.new("Animation")
anim9.AnimationId = "rbxassetid://3923101279"

local anim10 = Instance.new("Animation")
anim10.AnimationId = "rbxassetid://3894577205"

local leftpunchp = human:LoadAnimation(anim0)
local rightpunchp = human:LoadAnimation(anim1)
local uppercutp = human:LoadAnimation(anim2)
local combop = human:LoadAnimation(anim3)
local knifep = human:LoadAnimation(anim4)
local laserp = human:LoadAnimation(anim5)
local blockp = human:LoadAnimation(anim6)
local bloodp = human:LoadAnimation(anim7)
local dodgep = human:LoadAnimation(anim8)
local rtzp = human:LoadAnimation(anim9)
local tsknifep = human:LoadAnimation(anim10)

local summonsfx
if ntorso:FindFirstChild"Swing" then
	summonsfx = ntorso.Swing
	summonsfx.SoundId = "rbxassetid://3552355246"
else
	summonsfx = Instance.new("Sound",chr)
	summonsfx.SoundId = "rbxassetid://3552355246"
	summonsfx.Volume = 2.5
	summonsfx.PlaybackSpeed = 1.5
end

local punchsfx
if ntorso:FindFirstChild"Swing" then
	punchsfx = ntorso.Swing
	punchsfx.SoundId = "rbxassetid://200632136"
else
	punchsfx = Instance.new("Sound",chr)
	punchsfx.SoundId = "rbxassetid://200632136"
	punchsfx.Volume = 3
	punchsfx.MaxDistance = 10000
end

local bloodsfx
if ntorso:FindFirstChild"Swing" then
	bloodsfx = ntorso.Swing
	bloodsfx.SoundId = "rbxassetid://3683536012"
else
	bloodsfx = Instance.new("Sound",chr)
	bloodsfx.SoundId = "rbxassetid://3683536012"
	bloodsfx.Volume = 3
end

local dodgesfx
if ntorso:FindFirstChild"Dodge" then
	dodgesfx = ntorso.Dodge
	dodgesfx.SoundId = "rbxassetid://1145251796"
else
	dodgesfx = Instance.new("Sound",chr)
	dodgesfx.SoundId = "rbxassetid://1145251796"
	dodgesfx.Volume = 5
end

local tpsfx
if ntorso:FindFirstChild"Dodge" then
	tpsfx = ntorso.Dodge
	tpsfx.SoundId = "rbxassetid://3077287610"
else
	tpsfx = Instance.new("Sound",chr)
	tpsfx.SoundId = "rbxassetid://3077287610"
	tpsfx.Volume = 3
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

local tauntcd = false
function taunt()
	if tauntcd == true then return end
	tauntcd = true
	local randomline = math.random(1, 2)
	if randomline == 1 then
tauntevent:FireServer(head, "rbxassetid://4577516140", 4, 5.2, 0)
	elseif randomline == 2 then
tauntevent:FireServer(head, "rbxassetid://4577531054", 4, 5.2, 0)
	end
	wait(4)
	tauntcd = false
end

local leftorright = false
function punch()
    if activu == true then return end
	if leftorright == false then
		leftorright = true
		activu = true
		game:GetService("ReplicatedStorage").Untimestop:FireServer()
		summon()
		summonsfx:Play()
		punchsfx:Play()
		rightpunchp:Play(0.1, 1, 1.35)
		trailevent:FireServer(chr.Stand:FindFirstChild("Stand Right Arm").Trail, true)
		wait(.25)
		unsummon()
		trailevent:FireServer(chr.Stand:FindFirstChild("Stand Right Arm").Trail, false)
		coroutine.resume(coroutine.create(function()
		for _ = 1, 15 do
		    wait(.03)
		    hito(chr.Stand:FindFirstChild("Stand Right Arm"), chr.Stand:FindFirstChild("Stand Right Arm").CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2.5, 11, 0.5, 0.25, hrp.CFrame.lookVector * 10, "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 255, 255),"rbxassetid://260430079",  math.random(9, 11) / 10, math.random(9, 11) / 10)
		end
		end))
		wait(.25)
		activu = false
	elseif leftorright == true then
		leftorright = false
		activu = true
		game:GetService("ReplicatedStorage").Untimestop:FireServer()
		summon()
		summonsfx:Play()
		punchsfx:Play()
		leftpunchp:Play(0.1, 1, 1.35)
		trailevent:FireServer(chr.Stand:FindFirstChild("Stand Left Arm").Trail, true)
		wait(.25)
		unsummon()
		trailevent:FireServer(chr.Stand:FindFirstChild("Stand Left Arm").Trail, false)
		coroutine.resume(coroutine.create(function()
		for _ = 1, 15 do
		    wait(.03)
		    hito(chr.Stand:FindFirstChild("Stand Left Arm"), chr.Stand:FindFirstChild("Stand Left Arm").CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2.5, 11, 0.5, 0.25, hrp.CFrame.lookVector * 10, "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 255, 255),"rbxassetid://260430079",  math.random(9, 11) / 10, math.random(9, 11) / 10)
		end
		end))
		wait(.25)
		activu = false
	end
end

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
        --stwevent:FireServer()
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
            --stwevent:FireServer()
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

local uppercutcd = false
function uppercut()
    if activu == true then return end
    if uppercutcd == true then return end
    activu = true
    uppercutcd = true
    summon()
    summonsfx:Play()
    uppercutp:Play(0.1, 1, 1)
    trailevent:FireServer(chr.Stand:FindFirstChild("Stand Right Arm").Trail, true)
    coroutine.resume(coroutine.create(function()
    for _ = 1, 15 do
        hito2(chr.Stand:FindFirstChild("Stand Right Arm"), chr.Stand:FindFirstChild("Stand Right Arm").CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3, 30, 0.75, 0.25, hrp.CFrame.lookVector * 50, "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 255, 255),"rbxassetid://260430079",  math.random(9, 11) / 10, math.random(9, 11) / 10)
        wait(.03)
    end
    end))
    wait(.75)
    game:GetService("ReplicatedStorage").Untimestop:FireServer()
    uppercutp:Stop()
    unsummon()
    trailevent:FireServer(chr.Stand:FindFirstChild("Stand Right Arm").Trail, false)
    activu = false
    wait(2.5)
    uppercutcd = false
end


local combocd = false
function combo()
    if activu == true then return end
    if combocd == true then return end
    activu = true
    combocd = true
    summon()
    summonsfx:Play()
    combop:Play(0.1, 1, 1)
    trailevent:FireServer(chr.Stand:FindFirstChild("Stand Left Arm").Trail, true)
    trailevent:FireServer(chr.Stand:FindFirstChild("Stand Right Arm").Trail, true)
    wait(.2)
	for _ = 1, 19 do
	    hito(chr.Stand:FindFirstChild("Stand Right Arm"), chr.Stand:FindFirstChild("Stand Right Arm").CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 20, 0.3, 0.25, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 20)
	    hito(chr.Stand:FindFirstChild("Stand Left Arm"), chr.Stand:FindFirstChild("Stand Left Arm").CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 20, 0.3, 0.25, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 20)
	    wait(.03)
	end
	game:GetService("ReplicatedStorage").Untimestop:FireServer()
    combop:Stop()
    unsummon()
    trailevent:FireServer(chr.Stand:FindFirstChild("Stand Left Arm").Trail, false)
    trailevent:FireServer(chr.Stand:FindFirstChild("Stand Right Arm").Trail, false)
    activu = false
    wait(5)
    combocd = false
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
	--game:GetService("ReplicatedStorage").SpaceRipperStingyEyes:FireServer()
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
	--game:GetService("ReplicatedStorage").STWRTZ:FireServer(true)
	--game:GetService("ReplicatedStorage").FleshBud:FireServer()
	--game:GetService("ReplicatedStorage").FleshBud:FireServer()
	wait(.4)
	human.WalkSpeed = 5
	human.JumpPower = 0
	wait(2)
	--game:GetService("ReplicatedStorage").STWRTZ:FireServer(false)
	activu = false
	game:GetService("ReplicatedStorage").Untimestop:FireServer()
	human.WalkSpeed = walk
	human.JumpPower = jump
	wait(9)
	fleshbudscd = false
end

local tscd = false
function ts()
    if activu == true then return end
    if tscd == true then return end
    tscd = true
    timestopevent:FireServer(9.9999, "ShadowDio")
    wait(25)
    tscd = false
end

local rtzcd = false
function rtz()
	if rtzcd == false then
		rtzp:Play(0.1, 1, 1)
		human.JumpPower = 0
		human.WalkSpeed = 0
		--game:GetService("ReplicatedStorage").STWRTZ:FireServer(true)
		rtzcd = true
		wait(5)
		rtz()
		return
	end
	if rtzcd == true then
		rtzp:Stop(0.1)
		--game:GetService("ReplicatedStorage").STWRTZ:FireServer(false)
		human.JumpPower = jump
		human.WalkSpeed = walk
		game:GetService("ReplicatedStorage").Untimestop:FireServer()
		wait(12)
		rtzcd = false
	end
end

local blockcd = false
function block()
	if activu == true then return end
    if blockcd == true then return end
    blockcd = true
	activu = true
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
	    if key == "x" then
	      bep = false
	    end
	end)
	summon()
	blockp:Play(0.1, 1,1)
	blockevent:FireServer(true)
	human.JumpPower = 0
        repeat
		wait()
	until bep == false
	blockevent:FireServer(false)
	blockp:Stop(0.1)
	unsummon()
	activu = false
	human.JumpPower = jump
    wait(3)
    blockcd = false
end

local dodgecd = false
function dodge()
if activu == true then return end
if dodgecd == true then return end
	activu = true
	dodgecd = true
	dodgep:Play()
	dodgeevent:FireServer()
	local boopyve = Instance.new("BodyVelocity")
    boopyve.MaxForce = Vector3.new(100000, 0, 100000)
    boopyve.P = math.huge
    boopyve.Velocity = hrp.CFrame.lookVector * 50
    boopyve.Parent = chr.HumanoidRootPart
	game.Debris:AddItem(boopyve, 0.25)
	wait(0.4)
	activu = false
	dodgep:Stop()
	wait(3)
	dodgecd = false
end

local tpcd = false
function tp()
	if activu == true then return end
	if tpcd == true then return end
	local location = mouse.Hit.p
	if (chr.HumanoidRootPart.Position - location).magnitude < 35 then
		tpcd = true
		tpsfx:Play()
		chr.HumanoidRootPart.CFrame = CFrame.new(location) + Vector3.new(0,2,0)
		wait(5)
		tpcd = false
	end
end

local bloodcd = false
function bloodsuck() --tank wanwood!! <3
	if activu == true then return end
	if bloodcd == true then return end
	bloodcd = true
	activu = true
	human.JumpPower = 0
	bloodp:Play(0.1, 1, 1)
	wait(.5)
	punchsfx:Play()
	bloodsfx:Play()
    for _ = 1, 10 do
        wait(.03)
        hito2(chr.Stand:FindFirstChild("Stand Right Arm"), chr.Stand:FindFirstChild("Stand Right Arm").CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,4.5, 30, 0.5, 0.25, hrp.CFrame.lookVector * 0, "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 0, 0),"rbxassetid://",  math.random(9, 11) / 10, math.random(9, 11) / 10)
    end
	wait(.65)
	game:GetService("ReplicatedStorage").Untimestop:FireServer()
	human.JumpPower = jump
	activu = false
	wait(10)
	bloodcd = false
end

mouse.Button1Down:connect(function()
if ntorso.Anchored == true then return end
if disabled.Value == true then return end
	punch()
end)
mouse.KeyDown:connect(function(key)
if ntorso.Anchored == true then return end
if disabled.Value == true then return end
    if key == "q" then
        knife() 
    end
    if key == "e" then
        uppercut() 
    end
    if key == "r" then
        combo()
    end
    if key == "t" then
        laser() 
    end
    if key == "y" then
        fleshbuds() 
    end
    if key == "f" then
        ts()
    end
    if key == "h" then
        rtz() 
    end
    if key == "x" then
        block() 
    end
    if key == "c" then
        dodge()
    end
    if key == "v" then
        tp()
    end
    if key == "b" then
        bloodsuck() 
    end
    if key == "n" then
        taunt() 
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