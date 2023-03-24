--[[ Hamon Pluck / Hamon + Samurai Moveset --by a guy named gonum
{TO EXECUTE THIS SCRIPT, YOU NEED THE HAMON SPEC}
{EVERYTIME YOU USE HIROSIMA AND THEN RESET/DIE, YOU MUST REJOIN SERVER}

Passives:

Stun-Free = No move can remove your ability to use your moves, not even stuns and impales
Death Energy = Everytime you die, your hitbox remains on the ground, copying your every move
Conqueror's Hamon = Low-minded people will feel confused due to your aura and presence
Stand Allergy = Any Pluck attack that is hit on the stand will be reflected to the hamon user
Pillarmen = Pillarmen deal 25% more damage against you
Conqueror's Hamon = Low-minded people will feel confused due to your aura and presence
Admin Bounty = Admins of this game overpower you, seek shelter
bro this cring kid = HACKER!!!!!!!! REPORT!!!!!!!11 IMAGGIN SO BAD

H = Maximum Breath > The user focuses and breathes carefully for 5.5 seconds 
while thrusting their sword to the ground, 
producing Hamon energy and making it flow through their veins for 45.5 seconds,
while simultaniously buffing their strength, in which every seconds, hamon drains.

M1 = Pluck Slash > 12.5 - 15.5 damage, 0.2 second cooldown
Q = Homing Ripple Slashes > 2.5+ damage per hit (hits 10x), 25 second cooldown
E = Sunlight Pluck Overdive > 4+ damage per hit, 6 second cooldown
R = Scarlet Overdrive > 40+ damage, 10 second cooldown
T = Zoom Punch > 30+ damage, 8 second cooldown
Y = Pluck Lunge > 37.5+, 5 second cooldown
Y + C = Swaying Pluck Combo > Pluck Impale + Sway
F = Metal Overdrive > 40+ damage, 25 second cooldown
G = Ripple Sway > Speed = 30, Jump = 65, 22.5 second cooldown
Z = Hamon Infused Leap:SKY > Higher from ground, 7 second cooldown
Z + C = Hamon Infused Leap > Lower from ground, 7 second cooldown
X = Luck Defense > Block Incoming Attacks, 3 second cooldown
C = Sway > 100 Velocity, 1.3 second cooldown
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


local plr = game:GetService("Players").LocalPlayer
repeat
	wait()
until plr.Character and plr.Character.Humanoid
local chr = plr.Character
local human = chr.Humanoid
local hrp = chr.HumanoidRootPart
mouse = plr:GetMouse()
cam = workspace.CurrentCamera

chr.Animate.walk.WalkAnim.AnimationId = "rbxassetid://3451314103"

local ts = game:GetService("TweenService")


--standevent:FireServer()

--Values
local activu = false
	human.WalkSpeed = 20
	human.JumpPower = 50 

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
local anim0 = Instance.new("Animation") -- idle
anim0.AnimationId = "rbxassetid://3530904726"

local anim1 = Instance.new("Animation") -- dash
anim1.AnimationId = "rbxassetid://5482300918"

local anim7 = Instance.new("Animation") -- barrage
anim7.AnimationId = "rbxassetid://5171398455"

local anim4 = Instance.new("Animation") -- right punch
anim4.AnimationId = "rbxassetid://3451297020"

local anim5 = Instance.new("Animation") -- left punch
anim5.AnimationId = "rbxassetid://3451297718"

local anim3 = Instance.new("Animation") -- strong punch
anim3.AnimationId = "rbxassetid://3579946634"

local anim2 = Instance.new("Animation") -- block
anim2.AnimationId = "rbxassetid://3445910629"

local Pose1 = Instance.new("Animation") -- pose
Pose1.AnimationId = "rbxassetid://3860005709"

local Pose2 = Instance.new("Animation") -- pose
Pose2.AnimationId = "rbxassetid://3445972181"

local Charge1 = Instance.new("Animation") -- pose
Charge1.AnimationId = "rbxassetid://3893636185"

local Charge2 = Instance.new("Animation") -- pose
Charge2.AnimationId = "rbxassetid://3893638675"

local anim6 = Instance.new("Animation") -- third attack
anim6.AnimationId = "rbxassetid://3451299398"

local anim8 = Instance.new("Animation")
anim8.AnimationId = "rbxassetid://3451312098"

local anim9 = Instance.new("Animation")
anim9.AnimationId = "rbxassetid://5590359425"

local anim10 = Instance.new("Animation")
anim10.AnimationId = "rbxassetid://3445985341"

local anim11 = Instance.new("Animation") -- yell
anim11.AnimationId = "rbxassetid://5242641804"

local anim12 = Instance.new("Animation")
anim12.AnimationId = "rbxassetid://3445806846"

local anim13 = Instance.new("Animation")
anim13.AnimationId = "rbxassetid://3445806846"

local anim14 = Instance.new("Animation")
anim14.AnimationId = "rbxassetid://3445806846"

local anim15 = Instance.new("Animation")
anim15.AnimationId = "rbxassetid://3804938028"

local anim16 = Instance.new("Animation")
anim16.AnimationId = "rbxassetid://3451298675"

local anim17 = Instance.new("Animation")
anim17.AnimationId = "rbxassetid://3579947542"

local idleanim = human:LoadAnimation(anim0)
local barrageanim = human:LoadAnimation(anim7)
local strongpunchanim = human:LoadAnimation(anim3)
local rightpunchanim = human:LoadAnimation(anim4)
local leftpunchanim = human:LoadAnimation(anim5)
local rollanim = human:LoadAnimation(anim1)
local blockanim = human:LoadAnimation(anim2)
local pose1 = human:LoadAnimation(Pose1)
local pose2 = human:LoadAnimation(Pose2)
local charge1 = human:LoadAnimation(Charge1)
local charge2 = human:LoadAnimation(Charge2)
local yellanim = human:LoadAnimation(anim6)
local slashanim = human:LoadAnimation(anim8)
local drillanim2 = human:LoadAnimation(anim9)
local drillanim = human:LoadAnimation(anim10)
local shinybladeanim = human:LoadAnimation(anim11)
local anim = human:LoadAnimation(anim12)
local anim = human:LoadAnimation(anim13)
local anim = human:LoadAnimation(anim14)
local spinkickanim = human:LoadAnimation(anim15)
local ultanim = human:LoadAnimation(anim16)
local zoom = human:LoadAnimation(anim17)

pose1.Looped = true
pose1.Priority = "Idle"
pose2.Looped = true
pose2.Priority = "Idle"

function pluckinvis()
    transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
    transparencyevent:FireServer(stand.LuckandPluck.Blade, 1)
    transparencyevent:FireServer(stand.LuckandPluck.Handle, 1)
    transparencyevent:FireServer(stand.LuckandPluck.HandleGem, 1)
    transparencyevent:FireServer(stand.LuckandPluck.HandleTip, 1)
    transparencyevent:FireServer(stand.LuckandPluck.HandleTipGemDecor, 1)
    transparencyevent:FireServer(stand.LuckandPluck.HandleTipMiddle, 1)
    transparencyevent:FireServer(stand.LuckandPluck.Hilt, 1)
    transparencyevent:FireServer(stand.LuckandPluck.HiltDecor, 1)
    transparencyevent:FireServer(stand.LuckandPluck.HiltTop, 1)
    transparencyevent:FireServer(stand.LuckandPluck.PommelBottom, 1)
    transparencyevent:FireServer(stand.LuckandPluck.PommelConnector, 1)
    transparencyevent:FireServer(stand.LuckandPluck.PommelGem, 1)
    transparencyevent:FireServer(stand.LuckandPluck.PommelTop, 1)
end

function pluckvis()
    transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 0)
    transparencyevent:FireServer(stand.LuckandPluck.Blade, 0)
    transparencyevent:FireServer(stand.LuckandPluck.Handle, 0)
    transparencyevent:FireServer(stand.LuckandPluck.HandleGem, 0)
    transparencyevent:FireServer(stand.LuckandPluck.HandleTip, 0)
    transparencyevent:FireServer(stand.LuckandPluck.HandleTipGemDecor, 0)
    transparencyevent:FireServer(stand.LuckandPluck.HandleTipMiddle, 0)
    transparencyevent:FireServer(stand.LuckandPluck.Hilt, 0)
    transparencyevent:FireServer(stand.LuckandPluck.HiltDecor, 0)
    transparencyevent:FireServer(stand.LuckandPluck.HiltTop, 0)
    transparencyevent:FireServer(stand.LuckandPluck.PommelBottom, 0)
    transparencyevent:FireServer(stand.LuckandPluck.PommelConnector, 0)
    transparencyevent:FireServer(stand.LuckandPluck.PommelGem, 0)
    transparencyevent:FireServer(stand.LuckandPluck.PommelTop, 0)
end
--Sound
local dodgesfx

if ntorso:FindFirstChild"Dodge" then
	dodgesfx = ntorso.Dodge
	dodgesfx.SoundId = "rbxassetid://1145251796"
else
	dodgesfx = Instance.new("Sound",chr)
	dodgesfx.SoundId = "rbxassetid://1145251796"
	dodgesfx.Volume = 1
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
local heavypunchsfx
if ntorso:FindFirstChild"HeavyPunch" then
	heavypunchsfx = ntorso.HeavyPunch
	heavypunchsfx.SoundId = "rbxassetid://260430079"
else
	heavypunchsfx = Instance.new("Sound",chr)
	heavypunchsfx.SoundId = "rbxassetid://260430079"
	heavypunchsfx.Volume = 1
end

local rushsfx
if ntorso:FindFirstChild"Rush" then
	rushsfx = ntorso.Rush
	rushsfx.SoundId = "rbxassetid://130767866"
else
	rushsfx = Instance.new("Sound",chr)
	rushsfx.SoundId = "rbxassetid://130767866"
	rushsfx.Volume = 1
end

local yellsfx
if ntorso:FindFirstChild"Yell" then
	yellsfx = ntorso.Rush
	yellsfx.SoundId = "rbxassetid://4513955975"
else
	yellsfx = Instance.new("Sound",chr)
	yellsfx.SoundId = "rbxassetid://4513955975"
	yellsfx.Volume = 1
end

local awakensfx
if ntorso:FindFirstChild"Awaken" then
	awakensfx = ntorso.Rush
	awakensfx.SoundId = "rbxassetid://5848023227"
else
	awakensfx = Instance.new("Sound",chr)
	awakensfx.SoundId = "rbxassetid://5848023227"
	awakensfx.Volume = 15
end

local breathesfx
if ntorso:FindFirstChild"Breathe" then
	breathesfx = ntorso.Rush
	breathesfx.SoundId = "rbxassetid://2440691504"
else
	breathesfx = Instance.new("Sound",chr)
	breathesfx.SoundId = "rbxassetid://2440691504"
	breathesfx.Volume = 1
end

local chargesfx
if ntorso:FindFirstChild"Yell" then
	chargesfx = ntorso.Rush
	chargesfx.SoundId = "rbxassetid://2531000707"
else
	chargesfx = Instance.new("Sound",chr)
	chargesfx.SoundId = "rbxassetid://2531000707"
	chargesfx.Volume = 1.2
end

local jumpsfx
if ntorso:FindFirstChild"Yell" then
	jumpsfx = ntorso.Rush
	jumpsfx.SoundId = "rbxassetid://858508159"
else
	jumpsfx = Instance.new("Sound",chr)
	jumpsfx.SoundId = "rbxassetid://858508159"
	jumpsfx.Volume = 3
end

local dg = 0
local fov = 70
local buffed = false
local walk = 20
local jump = 50
local r = 0

local dodgecooldown = false
function dodge()
if activu == true then return end
if dodgecooldown == true then return end
	activu = true
	dodgecooldown = true
	rollanim:Play(0.1, 1,1)
	--dodgesfx:Play()
	dodgeevent:FireServer()
	local boopyve = Instance.new("BodyVelocity")
    boopyve.MaxForce = Vector3.new(100000, 0, 100000)
    boopyve.P = math.huge
    boopyve.Velocity = hrp.CFrame.lookVector * 100
    boopyve.Parent = chr.HumanoidRootPart
	game.Debris:AddItem(boopyve, 0.25)
	wait(0.4)
	activu = false
	rollanim:Stop()
	wait(1.3)
	dodgecooldown = false	
end	

local shinybladecooldown = false
function shinyblade()
	if activu == true then return end
	if shinybladecooldown == true then return end
    activu = true
    shinybladecooldown = true
	shinybladeanim:Play(0.1, 1, 1.5)
	walk = 0
	jump = 0
    human.WalkSpeed = walk
    human.JumpPower = jump
    fov = 100
    awakensfx:Play()
    wait(.325)
    ts:Create(cam, TweenInfo.new(2), {FieldOfView = fov}):Play()  
	wait(1)
    activu = false
    walk = 30
    jump = 65
    human.WalkSpeed = walk
    human.JumpPower = jump
    for _ = 1, 20 do
        vampiredashevent:FireServer(BrickColor.new(1009))
        dg = dg + 1
        wait(.5)
    end
    fov = 70
    ts:Create(cam, TweenInfo.new(2), {FieldOfView = fov}):Play()  
	wait()
    walk = 20
    jump = 50
    human.WalkSpeed = walk
    human.JumpPower = jump
	wait(22.5)
	shinybladecooldown = false
end

local standjumpcooldown = false
function standjump()
    if standjumpcooldown == true then return end
    if activu == true then return end
    if dodgecooldown == true then
        standjumpcooldown = true
        activu = true
        antifling = true
        wait(0.1)
	    local sjb = Instance.new("BodyPosition", hrp)
        sjb.maxForce = Vector3.new(100000, 100000, 100000)
        if r <= 10 then
            sjb.Position = hrp.CFrame*CFrame.new(0, 25, -60).p
        elseif r > 10 then 
            sjb.Position = hrp.CFrame*CFrame.new(0, 80, -40).p
        end
	    game.Debris:AddItem(sjb, .25)
	    jumpevent:FireServer(BrickColor.new(1009))
	    jumpsfx:Play()
        wait(.4)
        antifling = false
        activu = false
        wait(7)
        standjumpcooldown = false
    elseif dodgecooldown == false then
        standjumpcooldown = true
        activu = true
        antifling = true
        wait(0.1)
	    local sjb = Instance.new("BodyPosition", hrp)
        sjb.maxForce = Vector3.new(100000, 100000, 100000)
        if r <= 10 then
            sjb.Position = hrp.CFrame*CFrame.new(0, 40, -35).p
        elseif r > 10 then 
            sjb.Position = hrp.CFrame*CFrame.new(0, 60, -70).p
        end
	    game.Debris:AddItem(sjb, .25)
	    jumpevent:FireServer(BrickColor.new(1009))
	    jumpsfx:Play()
	    wait(.4)
        antifling = false
        activu = false
        wait(7)
        standjumpcooldown = false
    end
end
poseevent:FireServer(true)
local chargecooldown = false
function charge()
    if activu == true then return end
    if chargecooldown == true then return end
    if standjumpcooldown == false then
        activu = true
        chargecooldown = true
        standjumpcooldown = true
        yellanim:Play(0.1, 1, 1)
        human.WalkSpeed = 0
        human.JumpPower = 0
        breathesfx:Play()
        wait(2)
        chargesfx:Play()
        buffed = true
        blockevent:FireServer(true)
        jumpevent2:FireServer(BrickColor.new(1009))
        outlineevent:FireServer(true)
        transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 0)
        wait(3)
        activu = false
        standjumpcooldown = false
        human.WalkSpeed = walk
        human.JumpPower = jump
        blockevent:FireServer(false)
        r = 20
        coroutine.resume(coroutine.create(function()
		repeat
		    wait(.1)
		    r = r - 0.05
		until r <= 0
		r = 0
		buffed = false
		buff()
		transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
		chargecooldown = false
	end))
    end
end

function buff()
    if buffed == false then
        game:GetService("ReplicatedStorage").HamonOutline:FireServer(true)
        game:GetService("ReplicatedStorage").HamonOutline:FireServer(false)
    elseif buffed == true then
        game:GetService("ReplicatedStorage").HamonOutline:FireServer(false)
        game:GetService("ReplicatedStorage").HamonOutline:FireServer(true)
    end
end

local blocksfx = dodgesfx
local blockcooldown = false
function block()
	if activu == true then return end
    if blockcooldown == true then return end
    blockcooldown = true
	activu = true
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
	    if key == "x" then
	      bep = false
	    end
	end)
	blockanim:Play(0.1, 1,1)
	--game.ReplicatedStorage.Deflect:FireServer(true)
	blockevent:FireServer(true)
	--blocksfx:Play()
	human.JumpPower = 0
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 0)
        repeat
		wait()
	until bep == false
	--game.ReplicatedStorage.Deflect:FireServer(false)
	blockevent:FireServer(false)
	blockanim:Stop(0.1)
	human.JumpPower = jump
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	activu = false
    wait(3)
    blockcooldown = false
end
local posing = false
function posefunc()
if activu == false and posing == false then
	if appeared == false then
		return
	end
	if posing == false then do
	activu = true
    pose1:Play(0.1, 1, 1)
	spawn(function()
        wait()
        pose1:Stop()
        pose2:Play()
    end)
	human.WalkSpeed = 0
	human.JumpPower = 0
	wait()
	posing = true
	end
	end
	elseif posing == true then
	pose1:Stop(0.3)
	pose2:Stop(0.3)
	if disabled.Value == false then
	human.WalkSpeed = walk
	human.JumpPower = jump
	elseif disabled.Value == true then
	human.WalkSpeed = 4
	human.JumpPower = 10	
	end
	activu = false
	posing = false
	end
end

local tauntcd = false
function taunt()
	if tauntcd == true then return end
	tauntcd = true
	local randomline = math.random(1, 2)
	if randomline == 1 then -- only one taunt atm
tauntevent:FireServer(head, "rbxassetid://3581207647", 2, 6.95, 0)
	elseif randomline == 2 then
tauntevent:FireServer(head, "rbxassetid://3581207647", 2, 6.95, 0)
	end
	wait(7)
	tauntcd = false
end

local leftorright = false
function punch()
if activu == true then return end
	activu = true
	punchsfx:Play()
	human.JumpPower = 0
	if leftorright == false then
		leftorright = true
		rightpunchanim:Play(0.1, 1, 1.35)
	    trailevent:FireServer(stand.LuckandPluck.Blade.Trail, true)
	    transparencyevent:FireServer(stand.StandRarm, 0.825)
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 0.5)
		wait(.3)
		coroutine.resume(coroutine.create(function()
		for _ = 1, 10 do
		wait(.03)
		hito(stand.LuckandPluck.HamonBlade, stand.LuckandPluck.HamonBlade.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,7.5, 18.5 + r / 4, 0.5, 0.25, hrp.CFrame.lookVector * 10, "rbxassetid://", 0.075, Color3.fromRGB(245, 205, 48),"rbxassetid://566593606", math.random(9, 11) / 11, 5)
		end
		end))
	elseif leftorright == true then
		leftorright = false
		leftpunchanim:Play(0.1, 1, 1.35)
	    trailevent:FireServer(stand.LuckandPluck.Blade.Trail, true)
	    transparencyevent:FireServer(stand.StandRarm, 0.825)
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 0.5)
	    blockevent:FireServer(true)
		wait(.3)
		coroutine.resume(coroutine.create(function()
		for _ = 1, 10 do
		wait(.03)
		hito(stand.LuckandPluck.HamonBlade, stand.LuckandPluck.HamonBlade.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,7.5, 18.5 + r / 4, 0.5, 0.25, hrp.CFrame.lookVector * 10, "rbxassetid://", 0.075, Color3.fromRGB(245, 205, 48),"rbxassetid://566593606", math.random(9, 11) / 11, 5)
		end
		end))
	end
	wait(0.2)
	human.JumpPower = jump
	activu = false
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, false)
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, false)
	transparencyevent:FireServer(stand.StandRarm, 1)
	transparencyevent:FireServer(stand.StandRarm, 1)
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
end

local tpcooldown = false
function tp()
	if activu == true then return end
	if tpcooldown == true then return end
	local ho = mouse.Target.Parent:FindFirstChild("Humanoid")
	if mouse.Target and ho then
		local horp = mouse.Target.Parent:FindFirstChild("HumanoidRootPart")
		local magnitude = (horp.Position - hrp.Position).magnitude
		if 40 > magnitude then
            tpcooldown = true
            local char = mouse.Target.Parent
            buff()
            trailevent:FireServer(stand.LuckandPluck.Blade.Trail, true)
            barrageanim:Play(0.1, 1, 2)
            for _ = 1, 10 do
                slashevent:FireServer(ho, 2.5 + r / 10,.25,Vector3.new(0,-5,0))
                wait(.001)
            end
            trailevent:FireServer(stand.LuckandPluck.Blade.Trail, false)
            barrageanim:Stop(0.1)
            wait(25)
            tpcooldown = false
        end
	end
end 

local EHMMM = 0
local barragecooldown = false
function barrage()
    if activu == true then return end
	if barragecooldown == true then return end
	barragecooldown = true
    activu = true
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
	    if key == "e" then
	      bep = false
	    end
	end)
	transparencyevent:FireServer(stand.StandRarm, 0.625)
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 0.5)
	barrageanim:Play(0.1, 1, 1.5)
	human.JumpPower = 0
	human.WalkSpeed = 6
	repeat
		EHMMM = EHMMM + 0.5
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, true)
        punchsfx:Play()
		hito(stand.LuckandPluck.HamonBlade, stand.LuckandPluck.HamonBlade.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,6.75, 4 + r / 10, 0.1, 0.1, hrp.CFrame.lookVector * 1.25, "rbxassetid://", 0.125, Color3.fromRGB(245, 205, 48),"rbxassetid://566593606", math.random(9, 11) / 10, math.random(9, 11) / 7)
		hito(stand.LuckandPluck.HamonBlade, stand.LuckandPluck.HamonBlade.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,6.75, 4 + r / 10, 0.1, 0.1, hrp.CFrame.lookVector * 1.25, "rbxassetid://", 0.125, Color3.fromRGB(245, 205, 48),"rbxassetid://566593606", math.random(9, 11) / 10, math.random(9, 11) / 7)
		wait(.05)
	until bep == false or disabled.Value == true or EHMMM >= 30
	--rushsfx:Stop()
    activu = false
	barrageanim:Stop(0.1)
	human.WalkSpeed = walk
	human.JumpPower = jump
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, false)
	transparencyevent:FireServer(stand.StandRarm, 1)
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	EHMMM = 0
	wait(6) -- cooldown
	barragecooldown = false
end

local strongpunchcooldown = false
function strongpunch()
	if strongpunchcooldown == true then return end
	strongpunchcooldown = true
	transparencyevent:FireServer(stand.StandRarm, 0.25)
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 0)
	slashanim:Play(0.1, 1, 1)
	punchsfx:Play()
	human.JumpPower = 0
	wait(0.5)
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, true)
	punchsfx:Play()
	local boopyve = Instance.new("BodyVelocity")
    --boopyve.MaxForce = Vector3.new(100000, 100000, 100000)
    --boopyve.P = math.huge
    --boopyve.Velocity = hrp.CFrame.lookVector * 75
    --boopyve.Parent = chr.HumanoidRootPart
	--game.Debris:AddItem(boopyve, .3)
	coroutine.resume(coroutine.create(function()
	for _ = 1, 15 do
		wait(.03)
        hito2(rightarm, rightarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3, 37.5 + r, 0.5, 0.25, hrp.CFrame.lookVector * 100, "rbxassetid://", 0.0825, Color3.fromRGB(245, 205, 48),"rbxassetid://566593606", math.random(9, 11) / 10, math.random(9, 11) / 2)
	end
	end))
	wait(0.65)
	--trailevent:FireServer(stand.StandRarm.Trail, false)
	human.JumpPower = jump
	transparencyevent:FireServer(stand.StandRarm, 1)
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, false)
	wait(4)
	strongpunchcooldown = false
end

local ultcooldown = false
function ult()
	if activu == true then return end
	if ultcooldown == true then return end
	activu = true
	ultcooldown = true
	transparencyevent:FireServer(stand.StandRarm, 0.25)
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 0)
	ultanim:Play(.3, 1, 1)
	punchsfx:Play()
	human.WalkSpeed = 0
	human.JumpPower = 0
	blockevent:FireServer(true)
	buff()
	wait(1.1)
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, true)
	punchsfx:Play()
	local boopyve = Instance.new("BodyVelocity")
    boopyve.MaxForce = Vector3.new(100000, 100000, 100000)
    boopyve.P = math.huge
    boopyve.Velocity = hrp.CFrame.lookVector * 300
    boopyve.Parent = chr.HumanoidRootPart
	game.Debris:AddItem(boopyve, .2)
	coroutine.resume(coroutine.create(function()
	for _ = 1, 15 do
		wait() --prime
        hito2(rot, rot.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) , 5, 40 + r, 0.5, 0.25, hrp.CFrame.lookVector *  0 + Vector3.new(0,-10,0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255),"rbxassetid://", math.random(9, 11) / 10, math.random(9, 11) / 10)
        vampiredashevent:FireServer(BrickColor.new(1009))
        dg = dg +1
    end
	end))
	wait(0.65)
	--trailevent:FireServer(stand.StandRarm.Trail, false)
	human.WalkSpeed = walk
	human.JumpPower = jump
	transparencyevent:FireServer(stand.StandRarm, 1)
	--transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, false)
	activu = false
	wait(25)
	ultcooldown = false
end

local zoomcooldown = false
function zoompunch()
	if activu == true then return end
	if zoomcooldown == true then return end
	activu = true
	zoomcooldown = true
	idleanim:Stop(0.1)
	zoom:Play(0.1, 1, 1)
	pluckinvis()
	wait(.3)
	chargesfx:Play()
	transparencyevent:FireServer(stand.ZoomArm, 0)
	wait(.3)
	for _ = 1, 15 do
	    wait(.03)
	    hito(stand.ZoomArm, stand.ZoomArm.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(0.25, -0.25), math.random(0.25, -0.25), math.random(0.25, -0.25)) ,6, 30 + r, 1, 0.1, hrp.CFrame.lookVector * -50, "rbxassetid://", 0.075, Color3.fromRGB(245, 205, 48),"rbxassetid://566593606", math.random(9, 11) / 11, 5)
	end
	wait()
	pluckvis()
	if buffed == false then
	    transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	end
	transparencyevent:FireServer(stand.ZoomArm, 1)
	activu = false
	wait(7.1)
	zoomcooldown = false
end

local scarletoverdricecd = false
function scarletoverdrive()
	if activu == true then return end
	if scarletoverdricecd == true then return end
	activu = true
	scarletoverdricecd = true
	trailevent:FireServer(stand.StandLarm.RedTrail, true)
	transparencyevent:FireServer(stand.StandLarm, 0.5)
	strongpunchanim:Play(0.1, 1, 1)
	chargesfx:Play()
	wait(0.5)
    punchsfx:Play()
	coroutine.resume(coroutine.create(function()
	for _ = 1, 15 do
		wait(.03)
        hito2(leftarm, leftarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2.5, 40 + r, 0.75, 0.25, hrp.CFrame.lookVector * 60, "rbxassetid://241837157", 0.1, Color3.new(255, 0, 0),"541909983://386946017", math.random(9, 11) / 10, math.random(9, 11) / 2)
	end
	end))
	wait(0.65)
	trailevent:FireServer(stand.StandLarm.RedTrail, false)
	transparencyevent:FireServer(stand.StandLarm, 1)
	activu = false
	wait(9)
	scarletoverdricecd = false
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
        tp()
    end
	if key == "e" then
		barrage()
	end
	if key == "r" then
		scarletoverdrive()
	end
	if key == "t" then
		zoompunch()
	end
    if key == "y" then
		strongpunch()
	end
	if key == "f" then
		ult()
	end
    if key == "g" then
        shinyblade()
    end
    if key == "h" then
		charge()
	end
	if key == "x" then
		block()
	end
	if key == "z" then
		standjump()
	end
	if key == "c" then
		dodge()
	end
	if key == "p" then
		posefunc()
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

	for _, n in pairs(stand.LuckandPluck:GetChildren()) do
		if n ~= stand.LuckandPluck.HamonBlade then
			transparencyevent:FireServer(n, 0)
		end
	end