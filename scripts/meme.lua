--[Meme Boy / Shadow Dirty Deeds Done Dirt Cheap V2.4]--
--Made By The Plant Man#8610--
--[[Credits To
    bollsman123#0001 - whitelister,

    fiery#6040 - whitelister,

    kur_Dev#3557 - whitelister,

    sheesh#7033 - giga chad scripter,

    Beanzz#1405 - smort man

    no ping#4757 - bollsman alt cuz his main got banned

    Thickblock102#6969 - whitelister
]]--
--[[Requirements
    get whitelisted
    --XD U NEED TO GET WHITELISTED BY ONE OF THE WHITELISTERS TO USE IT SKID XD
    humanoid stand
    --a stand like sp hg or mr
]]-- 
--[[Passives
    cancel ts/te/ga/ta
    --cancels stuff with rtz
    anti fling
    --YO YO YO AAA
    anti hit
    --NANI
    anti anchor
    --works for some reason
]]--
--[[Taunt Keybind
    3 - taunt
    --testing
]]--
--[[Mode Keybinds
    press 5 once for cream mode
    press 5 twice for jiren mode
    press 6 for stand on mode
    press 7 for chill mode
    press 8 for sicko mode
    press k for bruh mode
]]--
--[[Normal Mode Keybinds
    left click - jab
    --stw jab but buffed
    1 - heal donut
    --donut but it heals
    2 - bring all
    --brings everyone to you and doing funni ka boom too
    q - normal donut
    --does infinite damage and banishes the opponent
    e - barrage
    --does 99 damage, stuns and anchors the opponent
    r - smack
    --does 99 damage, banishes, hits the opponent a bunch of times and anchors the opponent
    t - gun
    --shoots a bunch of times
    y - uppercut
    --does 99 damage and banishes the opponent
    u - kars spin
    --BEYBLADE BEYBLADE LET IT RIP!!!
    p - float pose
    --ascend to heaven
    f - time stop
    --ZA WARUDO
    g - domain expansion
    --go watch jjk
    h - long range punch
    --bassicly jiren projectile punch but with bigger hitbox
    j - holdable tp
    --gas gas gas
    l - scream
    --kills all and lags the server with discord mode on and permanent stars
    z - mouse tp
    --aim ur mouse and press z
    c - car
    --VROOM VROOM
    v - normal tp
    --just teleport
    b - invis projectile
    --ooooo ghost projectile
    n - dragonfist
    --bassicly uppercut go cry about it
]]--
--[[Stand Mode Keybinds
    left click - normal punch
    --punch
    right click - erasure
    --ZA HANDO
    e - kick barrage
    --bassicly normal barrage but the hitbox is the stand leg
    r - strong punch
    --the "normal" stand strong punch
    t - dixan
    --kc stuff idk
    y - unanchor
    --idk if it works
    u - anchor
    --OOH MA GOD
    f - stw combo
    --VWOOM VWOOM VWOOM
    g - stand uppercut
    --UPPERCUT TO THE MOON
    h - c moon slam
    --sea moon
    j - love train
    --D4C CHUMIMI ORAORAORAORAORAORAORA
    k - haki
    --become black
    n - I WILL SEND U TO BRAZIL
    --go to brazil boi
    z - stand jump
    --jump
    x - kamehameha
    --HAAAAAAAAA
    c - become drill
    --bassicly omt drill
    v - vent
    --sus
    b - buffed em splash
    --epic move
]]--
--[[Cream Mode Keybinds
    r - side to side
    --funni yba move
    t - spin
    --idk wat to say just spin
    h - idk???
    --idk wat im doing
    z - omg cream tp
    --just mouse tp
    c - rush
    --zoom
    v - dash
    --just dash boi
]]--
--[[Bruh Mode Keybinds
    no skills cuz unfinished lol
]]--
--[[Jiren Mode Keybinds
    q - donut
    --kinda like normal mode donut
    e - barrage
    --barrage with banish
    r - strong punch
    --STRONG
    t - projectile punch
    --normal mode t skill but not that good
    y - aura burst
    --idk i just made it
    u - jiren mode
    --MODE INSIDE A MODE:)
    f - kamehameha
    --same thing as goku script but buffed i guess
    g - glare barrage 
    --stare at them for damage
    h - death stare
    --idk wat im doing at this point
    j - CHAD KICK
    --kick
    z - mouse teleport wat do you expect?
    --mouse
    c - charge at that bitch
    --weee
    v - teleport
    --go teleport
    b - scream
    --its normal mode l but reskin
]]--
--[[sicko mode keybinds
    left click - bring
    --no pls stop
    e - VOM VOM VOM VOM VOM
    --ez
    r - funni punch
    --sicko mode
    t - auto tracking bullet
    --ayo wtf i ran 5 miles and its still following me?
    y - AAAAA
    --big scream
    u - chadkickv2
    --i hear screams??
    f - slap that bitch
    --SLAP THEM ASS TO BRAZIL
    h - heal barrage
    --omg cd copy
    j - slash
    --unfinshed?
    v - AMONGUS VENT OMG SO SUS
    --SUS
    b - spiral:0
    --idk??
]]--
--[[chill mode keybinds
    q - assert dominance
    --wtf?
    e - chill barrage
    --wat am i even doin
    r - smack
    --wtf
    t - AYO WAT??
    --BOY WTH IS THIS? OMG ITS SO FAST
    g - intimidating dance
    --NANI!!!
]]--

--vars--
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
local s = chr:WaitForChild("Stand")
local shrp = s:WaitForChild("StandHumanoidRootPart")
local sh = s:WaitForChild("Stand Head")
local stor = s:WaitForChild("Stand Torso")
local sra = s:WaitForChild("Stand Right Arm")
local sla = s:WaitForChild("Stand Left Arm")
local srl = s:WaitForChild("Stand Right Leg")
local sll = s:WaitForChild("Stand Left Leg")
local hrp = chr.HumanoidRootPart
local h = chr["Head"]
local tor = chr["Torso"]
local ra = chr["Right Arm"]
local la = chr["Left Arm"]
local rl = chr["Right Leg"]
local ll = chr["Left Leg"]
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
local d31 = rs.Damage31
local bd = rs.BurnDamage
local ftpd = rs.FOTPSDamageTeleport
local hd = rs.HamonSword
local ulfd = rs.ULFDamage
local a = rs.Anchor
local trans = rs.Transparency
local k = rs.Knock
local d = rs.Deflect
local tv = rs.Trail
local rtz = rs.RTZ
local taunts = rs.Taunt
local deletestand = nil
local antifling = true

--mouse stuff--
local ub = ui.InputBegan
local ue = ui.InputEnded
local kd = mouse.KeyDown
local ku = mouse.KeyUp
local c1 = mouse.Button1Down
local c2 = mouse.Button2Down

--normal vars--
local tauntswitch = math.random(1,3)
local tphvar = false
local barrage1 = false
local car = false
local camspeed = 5
local poseval = Instance.new("IntValue")
local posevar = false
local normal = true
local pjvar = false
local pjspeed = 160

--stand mode vars--
local smvar = false
local m1lr1 = false
local barrage2 = false
local m1lr2 = false
local lvvar = false
local lvval = 0
local hakivar1 = false
local hakivar2 = false
local hakivar3 = false
local hakivar4 = false
local hakival = 0
local chargevar = false

--bruhmode vars--
local bruhmode = false

--soh vars--
local soh = false

--cream vars--
local creamvar = false
local creamorb = false

--jiren vars--
local jirenvar = false
local jirenmode = false
local jirenmodeval = 0
local barrage3 = false
local pok = false

--angy vars--
local angyvar = false
local iamangybarrage = false
local gudbarrage = false
local gaybolg = false

--chill vars--
local chillaxnigga = false
local cbrg=false

--mode vals--
local scriptsimadebefore = 0
local sohval = 0
local dogdeval = 0
local smval = 0
local jirenval = 0

--meme boy gui var--
local MemeBoyGuiVar = false
local MemeBoyGui = Instance.new("ScreenGui")

--important stuff--
hum.HealthChanged:connect(function()
    if hum.Health < 1 then
        wait(0.5)
        MemeBoyGui:Destroy()
        gaybolg = false
        chillaxnigga = false
        MemeBoyGuiVar = false
        iamangybarrage = false
        gudbarrage = false
        angyvar = false
        hakivar1 = false
        hakivar2 = false
        hakivar3 = false
        hakivar4 = false
        pjvar = false
        antifling = false
        pok = false
        chargevar = false
        barrage3 = false
        jirenmode = false
        jirenvar = false
        lvvar = false
        smvar = false
        tphvar = false
        m1lr1 = false
        m1lr2 = false
        normal = false
        barrage1 = false
        barrage2 = false
        bruhmode = false
        car = false
        soh = false
        creamvar = false
        creamorb = false
        posevar = false
        hum:SetStateEnabled(3, false)
        hum:SetStateEnabled(15, false)
        deathevent:FireServer(false)
        wait(1)
	    death = true
        game.Workspace.Gravity = 176.2
    end
end)
if s then
    if s:FindFirstChild("JumpCooldown") then
        s.JumpCooldown:Destroy()
    end
end
for i,v in pairs(game:GetService("Lighting"):GetChildren())do
    for i,v2 in pairs(chr:GetChildren())do
        if v:IsA("LocalScript") and v2:IsA("LocalScript") then
            if v.Name == v2.Name then
                deletestand = v2.Name
            end
        end
    end
end
chr[deletestand]:Destroy()
coroutine.resume(coroutine.create(function()
    while rser.Stepped:Wait() do
        for i,v in pairs(chr:GetChildren()) do
            if v:IsA("Part") then
                a:FireServer(v,false)
                v.Anchored = false
            end
        end
        if death == true then
            break
        end
        hum:SetStateEnabled(3, true)
        hum.PlatformStand = false
        chr.Ragdoll.Value = false
        chr.Disabled.Value = false
        hum.AutoRotate = true
        if antifling == true then
            for i,v in pairs(chr.HumanoidRootPart:GetChildren()) do
                if v:IsA("BodyVelocity") or v:IsA("BodyPosition") or v:IsA("BodyAngularVelocity") or v:IsA("BodyForce") or v:IsA("BodyGyro") or v:IsA("BodyThrust") then
                    v:Destroy()
                end
            end
        elseif antifling == false then
            print("bruh")
        end
    end
end))
function godmode()
     rs.Block:FireServer(true)
     rs.BurnDamage:FireServer(hum, CFrame.new(0, -50, 0), -0 * math.huge, 0, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255), "rbxassetid://260430079", 0, 0)
     wait()
     rs.BurnDamage:FireServer(hum, CFrame.new(0, -50, 0), 0 * math.huge, 0, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255), "rbxassetid://260430079", 0, 0)
end
godmode()
function assettest(Id)
    return "rbxassetid://"..Id
end
sg:SetCore("SendNotification", {
    Title = "Meme Boy Credits",
    Text = "This Script Was Made By The Plant Man#8610",
    Duration = 5,
})
chr.Animate.walk.WalkAnim.AnimationId = assettest(5166114330)
chr.Animate.fall.FallAnim.AnimationId = assettest(5166133986)
chr.Animate.jump.JumpAnim.AnimationId = assettest(2763931895)
chr.Animate.idle.Animation1.AnimationId = assettest(5166116703)
function intro()
    for i = 1,30 do
        wait()
        d12s:FireServer(hum,hrp.CFrame,0, 0, Vector3.new(0, 0, 0), 0.3, "rbxassetid://4778603181", 1, 50)
        rs.RTZEffect:FireServer(true)
        rs.DoppioSlam:FireServer()
        for i,v in pairs(game.Workspace.Entities:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 60 then
                    hd:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                end
            end
        end
    end
end
intro()
l.TS.Changed:Connect(function()
    if l.TS.Value == true then
        if bruhmode == true then return end
        if death == true then return end
        rs.RTZ:FireServer(true)
        rs.RTZEffect:FireServer(true)
        wait(0.1)
        rs.RTZ:FireServer(false)
    end
end)
l.TE.Changed:Connect(function()
    if l.TE.Value == true then
        if bruhmode == true then return end
        if death == true then return end
        rs.RTZ:FireServer(true)
        rs.RTZEffect:FireServer(true)
        wait(0.1)
        rs.RTZ:FireServer(false)
    end
end)
l.TA.Changed:Connect(function()
    if l.TA.Value == true then
        if bruhmode == true then return end
        if death == true then return end
        rs.RTZ:FireServer(true)
        rs.RTZEffect:FireServer(true)
        wait(0.1)
        rs.RTZ:FireServer(false)
    end
end)
l.GI.Changed:Connect(function()
    if l.GI.Value == true then
        if bruhmode == true then return end
        if death == true then return end
        rs.RTZ:FireServer(true)
        rs.RTZEffect:FireServer(true)
        wait(0.1)
        rs.RTZ:FireServer(false)
    end
end)
game.Workspace.Gravity = 50
hum.WalkSpeed = 20

--anims--
local animtable = {
    vent = Instance.new("Animation"),
    unvent = Instance.new("Animation")
}
animtable.vent.AnimationId = assettest(5214216154)
animtable.unvent.AnimationId = assettest(5214217344)

--taunts--
function ezsheeshustupidtauntswork()
    if tauntswitch == 1 then
        taunts:FireServer(h,"rbxassetid://955633944",1.3, 3.1, 0)
    end
    if tauntswitch == 2 then
        taunts:FireServer(h,"rbxassetid://375581222", 3, 0.75, 0)
    end
    if tauntswitch == 3 then
        taunts:FireServer(h,"rbxassetid://3093433993", 3, 1, 0)
    end
end

--normal--
function scream()
    screamanimation = Instance.new("Animation")
    screamanimation.AnimationId = assettest(5621883393)
    screamanim = plr.Character.Humanoid:LoadAnimation(screamanimation)
    screamanim:Play(0.1, 1, 1)
	screamanim:AdjustSpeed(1.2)
    while rser.Stepped:Wait() do
		wait()
        d12s:FireServer(hum,h.CFrame,0, 0, Vector3.new(0, 0, 0), 20, "rbxassetid://4778603181", 1, 50)
        d1:FireServer(hum,h.CFrame * CFrame.new(math.random(-50,50),math.random(0,1000),math.random(-1000,1000)), 10, 0, Vector3.new(0,0,0),50, 50)
        d1:FireServer(hum,h.CFrame * CFrame.new(math.random(-1000,1000),math.random(0,1000),math.random(-50,50)), 10, 0, Vector3.new(0,0,0),50, 50)
        for i, Child in next, Workspace.Entities:GetChildren() do
            if Child ~= plr.Character then
                if Child:FindFirstChildOfClass("Humanoid") then
                    pcall(function()
                        coroutine.resume(coroutine.create(function()
                            rs.Damage3:FireServer(Child:FindFirstChildOfClass("Humanoid"), Child.Head.CFrame, 1e-200, 0.45, Child.Head.CFrame:Inverse().lookVector * 150, 0.001, "rbxassetid://5568817707", math.random(97,107)/100, 10)
                            rs.HamonSword:FireServer(Child.Humanoid, 1, math.huge, Vector3.new(99,-9e999,0))
                        end))
                    end)
                end
            end
        end
		rs.DoppioSlam:FireServer()
	end
end
function donut1(Target)
    pcall(function()
        local th = Target.Humanoid
        local thrp = Target.HumanoidRootPart
        donutanimation = Instance.new("Animation")
        donutanimation.AnimationId = assettest(3445853933)
        donutanim = plr.Character.Humanoid:LoadAnimation(donutanimation)
        donutanim:Play()
        donutanim:AdjustSpeed(3)
        for i = 1,10 do
            ftpd:FireServer(Target,math.huge)
            d12:FireServer(th,thrp.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.1, "", 1, 20)
            d12s:FireServer(th,thrp.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.1, "", 1, 20)
            d12s:FireServer(th,thrp.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.1, "", 1, 20)
            hd:FireServer(th, 1, math.huge, Vector3.new(0,-9e999,0))
            wait()
        end
        wait(1)
        a:FireServer(thrp,true)
        print(Target.Humanoid.Health)
    end)
end
function donut2(Target)
    pcall(function()
        local humanoid = Target.Humanoid
        donutanimation = Instance.new("Animation")
        donutanimation.AnimationId = assettest(3445853933)
        donutanim = plr.Character.Humanoid:LoadAnimation(donutanimation)
        donutanim:Play()
        donutanim:AdjustSpeed(3)
        ftpd:FireServer(Target,-math.huge)
        a:FireServer(thrp,false)
        print(Target.Humanoid.Health)
    end)
end
function boom()
    for i = 1,30 do
        for i,v in pairs(game.Workspace.Entities:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 60 then
                    rs.HamonSword:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                end
            end
        end
        rs.RTZEffect:FireServer(true)
        wait(0.2)
    end
    rs.DoppioSlam:FireServer()
end
function projectile()
    for i = 1,1 do
        local hitbox1 = Instance.new("Part",game.Workspace)
        hitbox1.CFrame = h.CFrame
        hitbox1.Name = "pjhitbox"
        hitbox1.Anchored = false
        hitbox1.CanCollide = false
        hitbox1.Size = Vector3.new(5,5,5)
        hitbox1.Massless = true
        hitbox1.Transparency = 0.9
        hitbox1.Color = Color3.new(0,0,0)
        game.Debris:AddItem(hitbox1,3)
        local projectileboost = Instance.new("BodyVelocity",hitbox1)
        projectileboost.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        projectileboost.Velocity = CFrame.new(hitbox1.Position,mouse.Hit.p).lookVector * pjspeed
        game.Debris:AddItem(projectileboost,1)
        hitbox1.Touched:Connect(function(hit)
            if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
                if hit.Parent:FindFirstChild("HumanoidRootPart") then
                    rs.Damage31:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.5, "rbxassetid://4362818605", 1, 20)
                    rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.045, "rbxassetid://4362818605", 1, 20)
                end
            end
            wait(5)
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end)
    end
end
function smackgobrr()
    strongpunchanimation = Instance.new("Animation")
    strongpunchanimation.AnimationId = assettest(3894577205)
    strongpunchanim = plr.Character.Humanoid:LoadAnimation(strongpunchanimation)
    strongpunchanim:Play(0.1,1,1)
    strongpunchanim:AdjustSpeed(3)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*10
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                for i = 1,2 do
                    rs.Damage31:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 0.5, "rbxassetid://1025464252", 1, 50)
                    rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 0.045, "rbxassetid://1025464252", 1, 50)
                    rs.Damage12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.1, "rbxassetid://1025464252", 1, 50)
                    rs.Damage12Sans:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.1, "rbxassetid://1025464252", 1, 50)
                    rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                    wait()
                end
                wait(2)
                rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,true)
            end
		end
        wait(1)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end
function brehthisgun()
    gun = Instance.new("Animation")
    gun.AnimationId = assettest(33169573)
    ga = hum:LoadAnimation(gun)
    ga:Play()
    ga:AdjustSpeed(5)
    for i = 1,50 do
        ga:Play()
        rs.EmperorBackdash:FireServer()
        wait()
    end
    ga:Stop()
end
function normaltp()
    plr.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -20))
    rs.FOTPSTeleport:FireServer()
end
function mousetp()
    rs.VampireDash:FireServer(BrickColor.new("White"))
    wait(0.2)
    plr.Character:SetPrimaryPartCFrame(CFrame.new(mouse.Hit.p + Vector3.new(0, 3.5, 0)))
    wait(0.2)
    rs.VampireDash:FireServer(BrickColor.new("White"))
end
function carcrash()
    for i,v in pairs(game.Workspace.Entities:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 15 then
                rs.Damage3:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 10, Vector3.new(9e999,9e999,0), 0.045, "rbxassetid://4646947382", 1, 20)
                rs.Damage31:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 10, Vector3.new(9e999,9e999,0), 0.045, "rbxassetid://4646947382", 1, 20)
                rs.Damage12:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.1, "rbxassetid://4646947382", 1, 20)
                rs.Damage12Sans:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.1, "rbxassetid://4646947382", 1, 20)
                rs.HamonSword:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
            end
        end
    end
end
function bdmg1()
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*5
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage31:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.5, "rbxassetid://4362818605", 1, 20)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.045, "rbxassetid://4362818605", 1, 20)
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 85, .1, plr.Character.HumanoidRootPart.CFrame.LookVector * 1 + Vector3.new(0, -80, 0), "", 0, Color3.new(255, 255, 255), "", 1, 1)
                rs.Knock:FireServer(hit.Parent.Humanoid)
                rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,true)
            end
		end
        wait(0.5)
        if barrage1 == false then
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end
    end)
end
function brehwatisthis()
    wry = Instance.new("Animation")
    wry.AnimationId = assettest(5299850867)
    WRRYY = hum:LoadAnimation(wry)
    WRRYY:Play()
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            rs.Anchor:FireServer(v.Character["Torso"],true)
            rs.Anchor:FireServer(v.Character["Head"],true)
            rs.Anchor:FireServer(v.Character["Right Arm"],true)
            rs.Anchor:FireServer(v.Character["Left Arm"],true)
            rs.Anchor:FireServer(v.Character["Right Leg"],true)
            rs.Anchor:FireServer(v.Character["Left Leg"],true)
        end
    end
end
function uppercut()
    rs.PlayerStrongPunch2:FireServer(Vector3.new(0,2.309,0),Vector3.new(4,1.65,4),BrickColor.new("Institutional white"))
    rs.PlayerStrongPunch2:FireServer(Vector3.new(0,1.915,0),Vector3.new(5,1.65,5),BrickColor.new("Institutional white"))
    rs.PlayerStrongPunch2:FireServer(Vector3.new(0,1.457,0),Vector3.new(6,1.65,6),BrickColor.new("Institutional white"))
    upanim = Instance.new("Animation")
    upanim.AnimationId = assettest(5022688512)
    upa = hum:LoadAnimation(upanim)
    upa:Play()
    upa:AdjustSpeed(1.25)
    local uh = Instance.new("Part",chr)
	uh.CFrame = la.CFrame
	uh.Name = "uhhitbox"
	uh.Anchored = false
	uh.CanCollide = false
	local uw = Instance.new("WeldConstraint",uh)
	uw.Part0 = uh
	uw.Part1 = la
	uh.Size = la.Size*5
	uh.Massless = true
	uh.Transparency = 1
	uh.Color = Color3.new(0,0,0)
    uh.Touched:Connect(function(uhit)
        if uhit.Parent:FindFirstChild("Humanoid") and uhit.Parent.Name ~= plr.Name then
            if uhit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage3:FireServer(uhit.Parent.Humanoid,uhit.Parent.HumanoidRootPart.CFrame,99,0,Vector3.new(9e999,9e999,0),0.045,"",1,10)
                rs.Damage31:FireServer(uhit.Parent.Humanoid,uhit.Parent.HumanoidRootPart.CFrame,99,0,Vector3.new(9e999,9e999,0),0.05,"",1,10)
                rs.HamonSword:FireServer(uhit.Parent.Humanoid,1e-320,math.huge,Vector3.new(-1e7,-1e7,0))
            end
        end
        wait(0.7)
        if uh then
            uh:Destroy()
        end  
    end)
end
function dragonfist()
    upanim = Instance.new("Animation")
    upanim.AnimationId = assettest(5022688512)
    upa = hum:LoadAnimation(upanim)
    upa:Play()
    upa:AdjustSpeed(1.25)
    local uh = Instance.new("Part",chr)
	uh.CFrame = la.CFrame
	uh.Name = "uhhitbox"
	uh.Anchored = false
	uh.CanCollide = false
	local uw = Instance.new("WeldConstraint",uh)
	uw.Part0 = uh
	uw.Part1 = la
	uh.Size = la.Size*5
	uh.Massless = true
	uh.Transparency = 1
	uh.Color = Color3.new(0,0,0)
    local upboost = Instance.new("BodyVelocity")
    upboost.MaxForce = Vector3.new(0,100000,0)
    upboost.P = math.huge
    upboost.Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 130
    upboost.Parent = plr.Character.Torso
    uh.Touched:Connect(function(uhit)
        if uhit.Parent:FindFirstChild("Humanoid") and uhit.Parent.Name ~= plr.Name then
            if uhit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage3:FireServer(uhit.Parent.Humanoid,uhit.Parent.HumanoidRootPart.CFrame,99,0,Vector3.new(0,9e999,0),0.045,"rbxassetid://6314881739",1,10)
                rs.Damage31:FireServer(uhit.Parent.Humanoid,uhit.Parent.HumanoidRootPart.CFrame,99,0,Vector3.new(0,9e999,0),0.05,"rbxassetid://6314881739",1,10)
                wait(1)
                rs.HamonSword:FireServer(uhit.Parent.Humanoid,1e-320,math.huge,Vector3.new(-1e7,-1e7,0))
                rs.Anchor:FireServer(uhit.Parent.HumanoidRootPart,true)
            end
        end
        wait(5)
        if uh then
            uh:Destroy()
        end  
    end)
    wait(5)
    upboost:Destroy()
end
function karsspin()
    helicopteranimation = Instance.new("Animation")
    helicopteranimation.AnimationId = assettest(3804375103)
    helicopter = hum:LoadAnimation(helicopteranimation)
    helicopter:Play()
    for i = 1,10 do
        wait()
        for i,v in pairs(game.Workspace.Entities:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 10 then
                    rs.HamonSword:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                    rs.Damage3:FireServer(v.Humanoid,v.HumanoidRootPart.CFrame,99,0,Vector3.new(0,9e999,0),0.045,"rbxassetid://6314881739",1,10)
                    rs.Damage31:FireServer(v.Humanoid,v.HumanoidRootPart.CFrame,99,0,Vector3.new(0,9e999,0),0.05,"rbxassetid://6314881739",1,10)
                end
            end
        end
    end
end
function longrangepunch()
    zoompunchanimation = Instance.new("Animation")
    zoompunchanimation.AnimationId = assettest(3579947542)
    zoompucnhanim = plr.Character.Humanoid:LoadAnimation(zoompunchanimation)
    zoompucnhanim:Play()
    zoompucnhanim:AdjustSpeed(8)
    rs.PlayerStrongPunch:FireServer(Vector3.new(0.01, 30, 0.01), Vector3.new(0.01, 30, 0.01), BrickColor.new("White"))
	rs.PlayerStrongPunch:FireServer(Vector3.new(0.2, 0.1, 0.2), Vector3.new(0.2, 0.1, 0.2), BrickColor.new("White"))
    local lh = Instance.new("Part",chr)
    lh.CFrame = hrp.CFrame * CFrame.new(0, 0,-27.867)
    lh.Name = "longrangehitbox"
    lh.Anchored = false
    lh.CanCollide = false
    local lw = Instance.new("WeldConstraint",lh)
    lw.Part0 = lh
    lw.Part1 = hrp
    lh.Size = Vector3.new(5,5,56.732)
    lh.Massless = true
    lh.Transparency = 1
    lh.Color = Color3.new(0,0,0)
    lh.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                for i = 1,10 do
                    rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999,9e999,0), 0.045, "", 1, 20)
                    rs.Damage31:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999,9e999,0), 0.5, "", 1, 20)
                    rs.HamonSword:FireServer(hit.Parent.Humanoid,1e-320,math.huge,Vector3.new(-1e7,-1e7,0))
                end
                wait(3)
                rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,true)
            end
		end
        wait(2)
        if lh then
            lh:Destroy() 
        end
    end)
    wait(2)
    lh:Destroy()
end
function clickattack1()
    clickanimation = Instance.new("Animation")
    clickanimation.AnimationId = assettest(4774879706)
    clickanim = hum:LoadAnimation(clickanimation)
    clickanim:Play()
    clickanim:AdjustSpeed(2)
    local hitbox1 = Instance.new("Part",chr)
    hitbox1.CFrame = la.CFrame
    hitbox1.Name = "hitbox"
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = la
    hitbox1.Size = la.Size*5
    hitbox1.Massless = true
    hitbox1.Transparency = 1
    hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.Damage31:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.5, "rbxassetid://1712117848", 1, 20)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.045, "rbxassetid://1712117848", 1, 20)
            end
        end
        wait(1)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end
function tphdmg()
    for i,v in pairs(game.Workspace.Entities:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 10 then
                rs.HamonSword:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                rs.Damage3:FireServer(v.Humanoid,v.HumanoidRootPart.CFrame,99,0,Vector3.new(0,9e999,0),0.045,"",1,10)
                rs.Damage31:FireServer(v.Humanoid,v.HumanoidRootPart.CFrame,99,0,Vector3.new(0,9e999,0),0.05,"",1,10)
            end
        end
    end
end
function tpholdable()
    normaltp()
    tphdmg()
end
function bringall()
    for i,v in pairs(game.Workspace.Entities:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
            for i,v in pairs(game.Workspace.Entities:GetChildren()) do
                game.ReplicatedStorage.KQRGrab:FireServer(v.Humanoid, 199, 1.25, Vector3.new(0,0,0))
            end             
        end
    end 
end

--stand mode--
function clickattack2()
    if m1lr1 == false then
        m1lr1 = true
        rs.Transparency:FireServer(sh,0.25)
        rs.Transparency:FireServer(stor,0.25)
        rs.Transparency:FireServer(sra,0.25)
        rs.Transparency:FireServer(sla,0.25)
        rs.Transparency:FireServer(srl,0.25)
        rs.Transparency:FireServer(sll,0.25)
        apanim = Instance.new("Animation")
        apanim.AnimationId = assettest(2876973676)
        ap = hum:LoadAnimation(apanim)
        ap:Play()
        clickanimation = Instance.new("Animation")
        clickanimation.AnimationId = assettest(2876963877)
        clickanim = hum:LoadAnimation(clickanimation)
        clickanim:Play()
        local hitbox1 = Instance.new("Part",chr)
        hitbox1.CFrame = sla.CFrame
        hitbox1.Name = "hitbox"
        hitbox1.Anchored = false
        hitbox1.CanCollide = false
        local weld = Instance.new("WeldConstraint",hitbox1)
        weld.Part0 = hitbox1
        weld.Part1 = sla
        hitbox1.Size = sla.Size*5
        hitbox1.Massless = true
        hitbox1.Transparency = 1
        hitbox1.Color = Color3.new(0,0,0)
        hitbox1.Touched:Connect(function(hit)
            if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
                if hit.Parent:FindFirstChild("HumanoidRootPart") then
                    d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                    rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.045, "rbxassetid://1712117848", 1, 20)
                end
            end
            wait(1)
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end)
        ap:Stop()
        wait(1)
        rs.Transparency:FireServer(sh,1)
        rs.Transparency:FireServer(stor,1)
        rs.Transparency:FireServer(sra,1)
        rs.Transparency:FireServer(sla,1)
        rs.Transparency:FireServer(srl,1)
        rs.Transparency:FireServer(sll,1)
    elseif m1lr1 == true then
        m1lr1 = false
        rs.Transparency:FireServer(sh,0.25)
        rs.Transparency:FireServer(stor,0.25)
        rs.Transparency:FireServer(sra,0.25)
        rs.Transparency:FireServer(sla,0.25)
        rs.Transparency:FireServer(srl,0.25)
        rs.Transparency:FireServer(sll,0.25)
        apanim = Instance.new("Animation")
        apanim.AnimationId = assettest(2876973676)
        ap = hum:LoadAnimation(apanim)
        ap:Play()  
        clickanimation = Instance.new("Animation")
        clickanimation.AnimationId = assettest(2876963057)
        clickanim = hum:LoadAnimation(clickanimation)
        clickanim:Play()
        local hitbox1 = Instance.new("Part",chr)
        hitbox1.CFrame = sra.CFrame
        hitbox1.Name = "hitbox"
        hitbox1.Anchored = false
        hitbox1.CanCollide = false
        local weld = Instance.new("WeldConstraint",hitbox1)
        weld.Part0 = hitbox1
        weld.Part1 = sra
        hitbox1.Size = sra.Size*5
        hitbox1.Massless = true
        hitbox1.Transparency = 1
        hitbox1.Color = Color3.new(0,0,0)
        hitbox1.Touched:Connect(function(hit)
            if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
                if hit.Parent:FindFirstChild("HumanoidRootPart") then
                    d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                    rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.045, "rbxassetid://1712117848", 1, 20)
                end
            end
            wait(1)
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end)
        ap:Stop()
        wait(1)
        rs.Transparency:FireServer(sh,1)
        rs.Transparency:FireServer(stor,1)
        rs.Transparency:FireServer(sra,1)
        rs.Transparency:FireServer(sla,1)
        rs.Transparency:FireServer(srl,1)
        rs.Transparency:FireServer(sll,1)
    end
end
function erase()
    if m1lr2 == false then
        m1lr2 = true
        rs.Transparency:FireServer(sh,0.25)
        rs.Transparency:FireServer(stor,0.25)
        rs.Transparency:FireServer(sra,0.25)
        rs.Transparency:FireServer(sla,0.25)
        rs.Transparency:FireServer(srl,0.25)
        rs.Transparency:FireServer(sll,0.25)
        apanim = Instance.new("Animation")
        apanim.AnimationId = assettest(2876973676)
        ap = hum:LoadAnimation(apanim)
        ap:Play()
        clickanimation = Instance.new("Animation")
        clickanimation.AnimationId = assettest(4513430622)
        clickanim = hum:LoadAnimation(clickanimation)
        clickanim:Play()
        local hitbox1 = Instance.new("Part",chr)
        hitbox1.CFrame = sra.CFrame
        hitbox1.Name = "hitbox"
        hitbox1.Anchored = false
        hitbox1.CanCollide = false
        local weld = Instance.new("WeldConstraint",hitbox1)
        weld.Part0 = hitbox1
        weld.Part1 = sra
        hitbox1.Size = sra.Size*5
        hitbox1.Massless = true
        hitbox1.Transparency = 1
        hitbox1.Color = Color3.new(0,0,0)
        hitbox1.Touched:Connect(function(hit)
            if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
                if hit.Parent:FindFirstChild("HumanoidRootPart") then
                    rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                    d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                    rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.045, "rbxassetid://4513955975", 1, 20)
                end
            end
            wait(2)
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end)
        ap:Stop()
        wait(1)
        rs.Transparency:FireServer(sh,1)
        rs.Transparency:FireServer(stor,1)
        rs.Transparency:FireServer(sra,1)
        rs.Transparency:FireServer(sla,1)
        rs.Transparency:FireServer(srl,1)
        rs.Transparency:FireServer(sll,1)
    elseif m1lr2 == true then
        m1lr2 = false
        rs.Transparency:FireServer(sh,0.25)
        rs.Transparency:FireServer(stor,0.25)
        rs.Transparency:FireServer(sra,0.25)
        rs.Transparency:FireServer(sla,0.25)
        rs.Transparency:FireServer(srl,0.25)
        rs.Transparency:FireServer(sll,0.25)
        apanim = Instance.new("Animation")
        apanim.AnimationId = assettest(2876973676)
        ap = hum:LoadAnimation(apanim)
        ap:Play()  
        clickanimation = Instance.new("Animation")
        clickanimation.AnimationId = assettest(4513736847)
        clickanim = hum:LoadAnimation(clickanimation)
        clickanim:Play()
        local hitbox1 = Instance.new("Part",chr)
        hitbox1.CFrame = sra.CFrame
        hitbox1.Name = "hitbox"
        hitbox1.Anchored = false
        hitbox1.CanCollide = false
        local weld = Instance.new("WeldConstraint",hitbox1)
        weld.Part0 = hitbox1
        weld.Part1 = sra
        hitbox1.Size = sra.Size*5
        hitbox1.Massless = true
        hitbox1.Transparency = 1
        hitbox1.Color = Color3.new(0,0,0)
        hitbox1.Touched:Connect(function(hit)
            if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
                if hit.Parent:FindFirstChild("HumanoidRootPart") then
                    rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                    d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                    rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.045, "rbxassetid://4513955975", 1, 20)
                end
            end
            wait(3)
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end)
        ap:Stop()
        wait(3)
        rs.Transparency:FireServer(sh,1)
        rs.Transparency:FireServer(stor,1)
        rs.Transparency:FireServer(sra,1)
        rs.Transparency:FireServer(sla,1)
        rs.Transparency:FireServer(srl,1)
        rs.Transparency:FireServer(sll,1)
    end
end
function bdmg2()
    local hitbox1 = Instance.new("Part",chr)
	hitbox1.CFrame = srl.CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = srl
	hitbox1.Size = srl.Size*5
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, -80, 0), 0.2, "", 1, 50)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, -80, 0), 0.045, "rbxassetid://4809574295", 1, 20)
                dmg:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 85, .1, plr.Character.HumanoidRootPart.CFrame.LookVector * 1 + Vector3.new(0, -80, 0), "", 0, Color3.new(255, 255, 255), "", 1, 1)
                rs.Knock:FireServer(hit.Parent.Humanoid)
                rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,true)
            end
		end
        wait(0.5)
        if barrage2 == false then
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end
    end)
end
function bdmg4()
    local hitbox1 = Instance.new("Part",chr)
	hitbox1.CFrame = sra.CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = sra
	hitbox1.Size = sra.Size*5
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                hit.Parent.Humanoid.Parent:FindFirstChild("Disabled").Value = true
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.045, "rbxassetid://5762879636", 1, 20)
                rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 85, .1, plr.Character.HumanoidRootPart.CFrame.LookVector * 1 + Vector3.new(0, -80, 0), "", 0, Color3.new(255, 255, 255), "", 1, 1)
                rs.Knock:FireServer(hit.Parent.Humanoid)
                rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,true)
            end
		end
        wait(0.5)
        if barrage2 == false then
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end
    end)
end
function stsp()
    rs.Transparency:FireServer(sh,0.25)
    rs.Transparency:FireServer(stor,0.25)
    rs.Transparency:FireServer(sra,0.25)
    rs.Transparency:FireServer(sla,0.25)
    rs.Transparency:FireServer(srl,0.25)
    rs.Transparency:FireServer(sll,0.25)
    apanim = Instance.new("Animation")
    apanim.AnimationId = assettest(2876973676)
    ap = hum:LoadAnimation(apanim)
    ap:Play()  
    stspanimation = Instance.new("Animation")
    stspanimation.AnimationId = assettest(5676650960)
    stspa = hum:LoadAnimation(stspanimation)
    stspa:Play()
    stspa:AdjustSpeed(2)
    local hitbox1 = Instance.new("Part",chr)
    hitbox1.CFrame = sra.CFrame
    hitbox1.Name = "hitbox"
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = sra
    hitbox1.Size = sra.Size*5
    hitbox1.Massless = true
    hitbox1.Transparency = 1
    hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 0.045, "rbxassetid://4809574295", 1, 20)
            end
        end
        wait(1)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
    ap:Stop()
    wait(0.7)
    rs.Transparency:FireServer(sh,1)
    rs.Transparency:FireServer(stor,1)
    rs.Transparency:FireServer(sra,1)
    rs.Transparency:FireServer(sla,1)
    rs.Transparency:FireServer(srl,1)
    rs.Transparency:FireServer(sll,1)
end
function su()
    rs.Transparency:FireServer(sh,0.25)
    rs.Transparency:FireServer(stor,0.25)
    rs.Transparency:FireServer(sra,0.25)
    rs.Transparency:FireServer(sla,0.25)
    rs.Transparency:FireServer(srl,0.25)
    rs.Transparency:FireServer(sll,0.25)
    apanim = Instance.new("Animation")
    apanim.AnimationId = assettest(2876973676)
    ap = hum:LoadAnimation(apanim)
    ap:Play()  
    supanim = Instance.new("Animation")
    supanim.AnimationId = assettest(3893397364)
    supa = hum:LoadAnimation(supanim)
    supa:Play()
    rj:FireServer(BrickColor.new("Institutional white"))
    local hitbox1 = Instance.new("Part",chr)
    hitbox1.CFrame = sra.CFrame
    hitbox1.Name = "hitbox"
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = sra
    hitbox1.Size = sra.Size*5
    hitbox1.Massless = true
    hitbox1.Transparency = 1
    hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 0.045, "rbxassetid://511340819", 1, 20)
            end
        end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
    ap:Stop()
    wait(0.5)
    supa:Stop()
    rs.Transparency:FireServer(sh,1)
    rs.Transparency:FireServer(stor,1)
    rs.Transparency:FireServer(sra,1)
    rs.Transparency:FireServer(sla,1)
    rs.Transparency:FireServer(srl,1)
    rs.Transparency:FireServer(sll,1)
end
function KAMEHAMEHAAAA()
    beamanimation = Instance.new("Animation")
    beamanimation.AnimationId = assettest(3538838087)
    beamanim = plr.Character.Humanoid:LoadAnimation(beamanimation)
    beamanim:Play()
    beamanim:AdjustSpeed(2)
    rs.Transparency:FireServer(sh,0.25)
    rs.Transparency:FireServer(stor,0.25)
    rs.Transparency:FireServer(sra,0.25)
    rs.Transparency:FireServer(sla,0.25)
    rs.Transparency:FireServer(srl,0.25)
    rs.Transparency:FireServer(sll,0.25)
    wait(0.2)
    spe1:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(1, 7, 1), BrickColor.new("Bright blue"))
	spe1:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.7, 6, 0.7), BrickColor.new("Cyan"))
	spe1:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.5, 5, 0.5), BrickColor.new("Cyan"))
	spe1:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 4, 0.3), BrickColor.new("White"))
	spe1:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 4, 0.3), BrickColor.new("White"))
	spe1:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 4, 0.3), BrickColor.new("White"))
    apanim = Instance.new("Animation")
    apanim.AnimationId = assettest(2876973676)
    ap = hum:LoadAnimation(apanim)
    ap:Play()  
    local hitbox1 = Instance.new("Part",chr)
    hitbox1.CFrame = hrp.CFrame * CFrame.new(0,0,-20)
    hitbox1.Name = "hitbox"
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = hrp
    hitbox1.Size = Vector3.new(10,10,70)
    hitbox1.Massless = true
    hitbox1.Transparency = 1
    hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                hd:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 0.045, "rbxassetid://1597043578", 1, 20)
            end
        end
        wait(1.8)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
    ap:Stop()
    wait(1.8)
    rs.Transparency:FireServer(sh,1)
    rs.Transparency:FireServer(stor,1)
    rs.Transparency:FireServer(sra,1)
    rs.Transparency:FireServer(sla,1)
    rs.Transparency:FireServer(srl,1)
    rs.Transparency:FireServer(sll,1)
end
function BRAZIL()
    BRAZILSPIN = Instance.new("Animation")
    BRAZILSPIN.AnimationId = assettest(235542946)
    bs = hum:LoadAnimation(BRAZILSPIN)
    bs:Play()
    bs:AdjustSpeed(1.75)
    rs.DimensionHop:FireServer(chr)
    wait(2.9)
    bs:Stop()
end
function dixan()
    rs.Transparency:FireServer(sh,0.25)
    rs.Transparency:FireServer(stor,0.25)
    rs.Transparency:FireServer(sra,0.25)
    rs.Transparency:FireServer(sla,0.25)
    rs.Transparency:FireServer(srl,0.25)
    rs.Transparency:FireServer(sll,0.25)
    apanim = Instance.new("Animation")
    apanim.AnimationId = assettest(2876973676)
    ap = hum:LoadAnimation(apanim)
    ap:Play()  
    dixana = Instance.new("Animation")
    dixana.AnimationId = assettest(4656606528)
    da = hum:LoadAnimation(dixana)
    da:Play()
    da:AdjustSpeed(2)
    local hitbox1 = Instance.new("Part",chr)
    hitbox1.CFrame = stor.CFrame
    hitbox1.Name = "hitbox"
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = stor
    hitbox1.Size = stor.Size*5
    hitbox1.Massless = true
    hitbox1.Transparency = 1
    hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.045, "rbxassetid://7274041889", 1, 20)
            end
        end
        wait(1.6)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
    ap:Stop()
    wait(1.6)
    hitbox1:Destroy()
    rs.Transparency:FireServer(sh,1)
    rs.Transparency:FireServer(stor,1)
    rs.Transparency:FireServer(sra,1)
    rs.Transparency:FireServer(sla,1)
    rs.Transparency:FireServer(srl,1)
    rs.Transparency:FireServer(sll,1)
end
function unanchor()
    rs.Transparency:FireServer(sh,0.25)
    rs.Transparency:FireServer(stor,0.25)
    rs.Transparency:FireServer(sra,0.25)
    rs.Transparency:FireServer(sla,0.25)
    rs.Transparency:FireServer(srl,0.25)
    rs.Transparency:FireServer(sll,0.25)
    uahanim = Instance.new("Animation")
    uahanim.AnimationId = assettest(3445746016)
    uaha = hum:LoadAnimation(uahanim)
    uaha:Play()
    local hitbox1 = Instance.new("Part",chr)
    hitbox1.CFrame = sla.CFrame
    hitbox1.Name = "hitbox"
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = sla
    hitbox1.Size = sla.Size*5
    hitbox1.Massless = true
    hitbox1.Transparency = 1
    hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "rbxassetid://130840811", 1, 50)
                a:FireServer(hit.Parent.HumanoidRootPart,false)
                for i,v in pairs(hit.Parent:GetChildren()) do
                    if v:IsA("Part") then
                        a:FireServer(v,false)
                        v.Anchored = false
                    end
                end
            end
        end
        wait(1.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
    wait(1.5)
    hitbox1:Destroy()
    uaha:Stop()
    rs.Transparency:FireServer(sh,1)
    rs.Transparency:FireServer(stor,1)
    rs.Transparency:FireServer(sra,1)
    rs.Transparency:FireServer(sla,1)
    rs.Transparency:FireServer(srl,1)
    rs.Transparency:FireServer(sll,1)
end
function ezezanchor()
    rs.Transparency:FireServer(sh,0.25)
    rs.Transparency:FireServer(stor,0.25)
    rs.Transparency:FireServer(sra,0.25)
    rs.Transparency:FireServer(sla,0.25)
    rs.Transparency:FireServer(srl,0.25)
    rs.Transparency:FireServer(sll,0.25)
    uahanim = Instance.new("Animation")
    uahanim.AnimationId = assettest(3445746016)
    uaha = hum:LoadAnimation(uahanim)
    uaha:Play()
    local hitbox1 = Instance.new("Part",chr)
    hitbox1.CFrame = sla.CFrame
    hitbox1.Name = "hitbox"
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = sla
    hitbox1.Size = sla.Size*5
    hitbox1.Massless = true
    hitbox1.Transparency = 1
    hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "rbxassetid://130840811", 1, 50)
                a:FireServer(hit.Parent.HumanoidRootPart,true)
                for i,v in pairs(hit.Parent:GetChildren()) do
                    if v:IsA("Part") then
                        a:FireServer(v,true)
                        v.Anchored = true
                    end
                end
            end
        end
        wait(2)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
    wait(2)
    uaha:Stop()
    hitbox1:Destroy()
    rs.Transparency:FireServer(sh,1)
    rs.Transparency:FireServer(stor,1)
    rs.Transparency:FireServer(sra,1)
    rs.Transparency:FireServer(sla,1)
    rs.Transparency:FireServer(srl,1)
    rs.Transparency:FireServer(sll,1)
end
function chargedamage()
    for i,v in pairs(game.Workspace.Entities:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("Head") and v.Name ~= game.Players.LocalPlayer.Name then
            if (h.Position - v.Head.Position).Magnitude < 20 then
                d12s:FireServer(v.Humanoid,v.Head.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                d3:FireServer(v.Humanoid, v.Head.CFrame, 99, 10, Vector3.new(9e999,9e999,0), 0.045, "rbxassetid://541909913", 1, 20)
                hd:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
            end
        end
    end
end
function stwcombo()
    rs.Transparency:FireServer(sh,0.25)
    rs.Transparency:FireServer(stor,0.25)
    rs.Transparency:FireServer(sra,0.25)
    rs.Transparency:FireServer(sla,0.25)
    rs.Transparency:FireServer(srl,0.25)
    rs.Transparency:FireServer(sll,0.25)
    apanim = Instance.new("Animation")
    apanim.AnimationId = assettest(2876973676)
    ap = hum:LoadAnimation(apanim)
    ap:Play()  
    stwcomboanim = Instance.new("Animation")
    stwcomboanim.AnimationId = assettest(3893841692)
    sca = hum:LoadAnimation(stwcomboanim)
    sca:Play()
    local hitbox1 = Instance.new("Part",chr)
    hitbox1.CFrame = stor.CFrame
    hitbox1.Name = "hitbox"
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = stor
    hitbox1.Size = stor.Size*10
    hitbox1.Massless = true
    hitbox1.Transparency = 1
    hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, math.huge,math.huge0), 0.045, "rbxassetid://4778603181", 1, 20)
                hd:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
            end
        end
        wait(2)
        if hitbox1 then
            hitbox1:Destroy()
        end
    end)
    ap:Stop()
    wait(2)
    hitbox1:Destroy()
    rs.Transparency:FireServer(sh,1)
    rs.Transparency:FireServer(stor,1)
    rs.Transparency:FireServer(sra,1)
    rs.Transparency:FireServer(sla,1)
    rs.Transparency:FireServer(srl,1)
    rs.Transparency:FireServer(sll,1)
end
function standjump()
    antifling = false
    wait(0.1)
    trans:FireServer(sh,0.25)
    trans:FireServer(stor,0.25)
    trans:FireServer(sra,0.25)
    trans:FireServer(sla,0.25)
    trans:FireServer(srl,0.25)
    trans:FireServer(sll,0.25)
	sj:FireServer(BrickColor.new("Institutional white"))
    sjanim = Instance.new("Animation")
    sjanim.AnimationId = assettest(3445780399)
    sja = hum:LoadAnimation(sjanim)
    sja:Play()
	local sjb = Instance.new("BodyPosition", hrp)
    sjb.maxForce = Vector3.new(100000, 100000, 100000)
    sjb.Position = hrp.CFrame*CFrame.new(0, 50, -75).p
	game.Debris:AddItem(sjb, 1)
	wait(1)
	trans:FireServer(sh,1)
    trans:FireServer(stor,1)
    trans:FireServer(sra,1)
    trans:FireServer(sla,1)
    trans:FireServer(srl,1)
    trans:FireServer(sll,1)
    wait(1)
    antifling = true
end
function amogusslam()
    rs.Transparency:FireServer(sh,0.25)
    rs.Transparency:FireServer(stor,0.25)
    rs.Transparency:FireServer(sra,0.25)
    rs.Transparency:FireServer(sla,0.25)
    rs.Transparency:FireServer(srl,0.25)
    rs.Transparency:FireServer(sll,0.25)
    apanim = Instance.new("Animation")
    apanim.AnimationId = assettest(2876973676)
    ap = hum:LoadAnimation(apanim)
    ap:Play()  
    slamanim = Instance.new("Animation")
    slamanim.AnimationId = assettest(3166494872)
    slanim = hum:LoadAnimation(slamanim)
    slanim:Play()
    slanim:AdjustSpeed(2)
    wait(0.5)
    d12:FireServer(hum,hrp.CFrame,0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://6425216149", 1, 50)
    rs.UR2:FireServer(1)
    local hitbox1 = Instance.new("Part",chr)
    hitbox1.CFrame = stor.CFrame
    hitbox1.Name = "hitbox"
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = stor
    hitbox1.Size = stor.Size*5
    hitbox1.Massless = true
    hitbox1.Transparency = 1
    hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                hit.Parent.Humanoid.Parent.Disabled.Value = true
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, math.huge,math.huge0), 0.045, "rbxassetid://4467131309", 1, 20)
                hd:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
            end
        end
        wait(0.2)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
    ap:Stop()
    wait(0.2)
    hitbox1:Destroy()
    rs.Transparency:FireServer(sh,1)
    rs.Transparency:FireServer(stor,1)
    rs.Transparency:FireServer(sra,1)
    rs.Transparency:FireServer(sla,1)
    rs.Transparency:FireServer(srl,1)
    rs.Transparency:FireServer(sll,1)
end
function minigunprojectile()
    local mod = Instance.new("Model")
    mod.Parent = chr
    local hitbox1 = Instance.new("Part")
    local hitbox2 = hitbox1:Clone()
    d12:FireServer(hum,hrp.CFrame,0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://179555500", 1, 50)
    hitbox2.CFrame = h.CFrame
    hitbox2.Name = "pjhitbox"
    hitbox2.Anchored = false
    hitbox2.CanCollide = false
    hitbox2.Size = Vector3.new(10,10,10)
    hitbox2.Massless = true
    hitbox2.Transparency = 1
    hitbox2.Color = Color3.new(0,0,0)
    hitbox2.Parent = mod
    local projectileboost = Instance.new("BodyVelocity")
    projectileboost.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    projectileboost.P = math.huge
    projectileboost.Velocity = CFrame.new(hitbox2.Position,mouse.Hit.p).lookVector * pjspeed
    projectileboost.Parent = hitbox2
    projectileboost.Name = "chad"
    coroutine.resume(coroutine.create(function()
        game.Debris:AddItem(hitbox2,5)
        wait(1)
        hitbox1:Destroy()
        mod.Parent = game.Workspace
    end))
    coroutine.resume(coroutine.create(function()
        local pjfx = 0
        repeat
            wait()
            pjfx = pjfx +1
            d12s:FireServer(hum,hitbox2.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
        until mod.Parent ~= chr
    end))
    hitbox2.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.2, "", 1, 50)
                hd:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(math.huge,math.huge,math.huge), 0.2, "rbxassetid://339005122", 1, 20)
            end
        end
    end)
end
function amogusimpostorvent()
    rs.VampireDash:FireServer(BrickColor.new("White"))
    rs.VampireDash:FireServer(BrickColor.new("Really red"))
    wait(0.2)
    plr.Character:SetPrimaryPartCFrame(CFrame.new(mouse.Hit.p + Vector3.new(0, 3.5, 0)))
    wait(0.2)
    rs.VampireDash:FireServer(BrickColor.new("White"))
    rs.VampireDash:FireServer(BrickColor.new("Really red"))
    d12:FireServer(hum,hrp.CFrame,0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://5771441412", 1, 50)
end
function rtzgobrr()
    rs.RTZ:FireServer(true)
    rs.RTZEffect:FireServer(true)
    wait(0.1)
    rs.RTZ:FireServer(false)
end

--bruh mode--
uidodge1anim = Instance.new("Animation", plr.Character)
    uidodge1anim.AnimationId = assettest(5633583111)

    _G.anim39 = plr.Character.Humanoid:LoadAnimation(uidodge1anim)

    uidodge2anim = Instance.new("Animation", plr.Character)
    uidodge2anim.AnimationId = assettest(5633584586)

    _G.anim40 = plr.Character.Humanoid:LoadAnimation(uidodge2anim)
function dogdeanims()
	local randompassivedodgeanimate = math.random(1, 2)
	if randompassivedodgeanimate == 1 then
_G.anim39:Play()
	elseif randompassivedodgeanimate == 2 then
_G.anim40:Play()
		end
end
function uidogde()
        wait(1)
        rs.RTZClient.OnClientEvent:connect(function(gamer)
            if gamer ~= Player then
            local gmhum = gamer.Character.Humanoid
                local gmchr = gamer.Character
                dogdeanims()
            end
        end)
end
uidogde()

--cream--
function creamdamage()
    for i,v in pairs(game.Workspace.Entities:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 15 then
                rs.HamonSword:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                rs.Damage12:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://4513955975", 1, 20)
                rs.Damage12Sans:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://4513955975", 1, 20)
                rs.Damage3:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 10, Vector3.new(9e999,9e999,0), 0.01, "rbxassetid://4513955975", 1, 20)
            end
        end
    end
end
function creamsidetoside()
    rs.UR2:FireServer(2)
    creamdamage()
    plr.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.15, -30))
    plr.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(0, 17, 0))
    wait(0.2)
    rs.UR2:FireServer(2)
    creamdamage()
    wait(0.3)
    rs.UR2:FireServer(2)
    creamdamage()
    plr.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.15, -30))
    plr.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(0, 17, 0))
    wait(0.2)
    rs.UR2:FireServer(2)
    creamdamage()
    wait(0.3)
    rs.UR2:FireServer(2)
    creamdamage()
    plr.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.15, -30))
    plr.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(0, 17, 0))
    wait(0.2)
    rs.UR2:FireServer(2)
    creamdamage()
    wait(0.3)
    rs.UR2:FireServer(2)
    creamdamage()
    plr.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.15, -30))
    plr.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(0, 17, 0))
    wait(0.2)
    rs.UR2:FireServer(2)
    creamdamage()
end
function creamspin()
    for i = 1,70 do
        wait()
        creamdamage()
        rs.UR2:FireServer(2)
        plr.Character.HumanoidRootPart.CFrame =  plr.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-20)
        plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(0,5,0)
    end
end
function creamrush()
    local creamrushtest = Instance.new("BodyVelocity")
    creamrushtest.MaxForce = Vector3.new(100000, 0, 100000)
    creamrushtest.P = math.huge
    creamrushtest.Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 120
    creamrushtest.Parent = plr.Character.Torso
    wait(0.1)
    rs.UR2:FireServer(2)
    creamdamage()
    wait(0.1)
    rs.UR2:FireServer(2)
    creamdamage()
    wait(0.1)
    rs.UR2:FireServer(2)
    creamdamage()
    creamrushtest:Destroy()
    wait(0.1)
    rs.UR2:FireServer(2)
    creamdamage()
end
function creamjustcream()
    rs.UR2:FireServer(2)
    creamdamage()
end

--jiren--
function chadkick()
    kickanimation = Instance.new("Animation")
    kickanimation.AnimationId = assettest(5023532852)
    kickanim = plr.Character.Humanoid:LoadAnimation(kickanimation)
    kickanim:Play(0.1,1,1)
    kickanim:AdjustSpeed(1.2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                rs.Damage3:FireServer(hit.Parent.Humanoid, CFrame.new(0,0,0), 99, 2, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*5000+Vector3.new(9e999, 9e999, 0), 0.1, "rbxassetid://1693499499", 0.2, 0)
                rs.Damage12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://1693499499", 1, 20)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end
function beam()
    beamanimation = Instance.new("Animation")
    beamanimation.AnimationId = assettest(3558779904)
    beamanim = plr.Character.Humanoid:LoadAnimation(beamanimation)
    beamanim:Play(0.1,1,0.75)
    beamanim:AdjustSpeed(2)
    wait(1)
    rs.PlayerStrongPunch:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(1, 7, 1), BrickColor.new("Really red"))
	rs.PlayerStrongPunch:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.7, 6, 0.7), BrickColor.new("Neon orange"))
	rs.PlayerStrongPunch:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.5, 5, 0.5), BrickColor.new("Neon orange"))
	rs.PlayerStrongPunch:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 4, 0.3), BrickColor.new("Gold"))
	rs.PlayerStrongPunch:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 4, 0.3), BrickColor.new("Gold"))
	rs.PlayerStrongPunch:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 4, 0.3), BrickColor.new("Gold"))
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Torso"].CFrame * CFrame.new(0,0,-20) * CFrame.Angles(math.rad(10),0,0)
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Torso"]
	hitbox1.Size =  Vector3.new(10,10,70)
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                rs.Damage3:FireServer(hit.Parent.Humanoid, CFrame.new(0,0,0), 99, 2, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*5000+Vector3.new(9e999, 9e999, 0), 0.1, "rbxassetid://1693499499", 0.2, 0)
                rs.Damage12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://1693499499", 1, 20)
            end
		end
        wait(1.8)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end
function bdmg3()
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                rs.Damage3:FireServer(hit.Parent.Humanoid, CFrame.new(0,0,0), 99, 2, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*5000+Vector3.new(9e999, 9e999, 0), 0.1, "rbxassetid://1693499499", 0.2, 0)
                rs.Damage12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://1693499499", 1, 20)
            end
		end
        wait(0.5)
        if barrage3 == false then
            if hitbox1 then
                hitbox1:Destroy() 
            end
        end
    end)
end
function glarebarrage()
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Torso"].CFrame * CFrame.new(-0.025, -0.471, -2.406) * CFrame.Angles(math.rad(1.44),0,0)
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Torso"]
	hitbox1.Size = Vector3.new(4.018, 5.03, 5.811)
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                rs.Damage3:FireServer(hit.Parent.Humanoid, CFrame.new(0,0,0), 99, 2, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*5000+Vector3.new(9e999, 9e999, 0), 0.1, "rbxassetid://1693499499", 0.2, 0)
                rs.Damage12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://1693499499", 1, 20)
            end
		end
        if hitbox1 then
            hitbox1:Destroy()
        end
    end)
end
function strongpunch()
    strongpunchanimation = Instance.new("Animation")
    strongpunchanimation.AnimationId = assettest(3445806846)
    strongpunchanim = plr.Character.Humanoid:LoadAnimation(strongpunchanimation)
    strongpunchanim:Play(0.1,1,1)
    strongpunchanim:AdjustSpeed(1.2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                rs.Damage3:FireServer(hit.Parent.Humanoid, CFrame.new(0,0,0), 99, 2, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*5000+Vector3.new(9e999, 9e999, 0), 0.1, "rbxassetid://1693499499", 0.2, 0)
                rs.Damage12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://1693499499", 1, 20)
            end
		end
        wait(0.5)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end
function auraburst()
    burstanimation = Instance.new("Animation")
    burstanimation.AnimationId = assettest(5242641804)
    burstanim = plr.Character.Humanoid:LoadAnimation(burstanimation)
    burstanim:Play()
    burstanim:AdjustSpeed(2)
    for i = 1,10 do
        rs.Yell:FireServer()
        rs.PlayerStrongPunch2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("Persimmon"))
        rs.PlayerStrongPunch2:FireServer(Vector3.new(2, -0.5, 2), Vector3.new(2, -0.5, 2), BrickColor.new("Persimmon"))
        rs.PlayerStrongPunch2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("Persimmon"))
        rs.PlayerStrongPunch2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("Persimmon"))
        for i,v in pairs(game.Workspace.Entities:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 30 then
                    rs.HamonSword:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                    rs.Damage12:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://1693499499", 1, 20)
                    rs.Damage3:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 10, Vector3.new(9e999,9e999,0), 0.01, "rbxassetid://1693499499", 1, 20)
                end
            end
        end
        wait()
    end
end
function jirentp()
    rs.VampireDash:FireServer(BrickColor.new("Persimmon"))
    wait(0.3)
    plr.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.15, -25))
    wait(0.2)
    rs.VampireDash:FireServer(BrickColor.new("Persimmon"))
end
function jirenmousetp()
    rs.VampireDash:FireServer(BrickColor.new("Persimmon"))
    wait(0.3)
    plr.Character:SetPrimaryPartCFrame(CFrame.new(mouse.Hit.p + Vector3.new(0, 3.5, 0)))
    wait(0.2)
    rs.VampireDash:FireServer(BrickColor.new("Persimmon"))
end
function rushdmg()
    for i,v in pairs(game.Workspace.Entities:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 7 then
                rs.HamonSword:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                rs.Damage12:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://1693499499", 1, 20)
                rs.Damage3:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 10, Vector3.new(9e999,9e999,0), 0.01, "rbxassetid://1693499499", 1, 20)
            end
        end
    end
end
function projectilepunch()
    zoompunchanimation = Instance.new("Animation")
    zoompunchanimation.AnimationId = assettest(3579947542)
    zoompucnhanim = plr.Character.Humanoid:LoadAnimation(zoompunchanimation)
    zoompucnhanim:Play()
    zoompucnhanim:AdjustSpeed(8)
    rs.PlayerStrongPunch:FireServer(Vector3.new(0.2, 20, 0.2), Vector3.new(0.2, 20, 0.2), BrickColor.new("White"))
	rs.PlayerStrongPunch:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(1, 0.5, 1), BrickColor.new("White"))
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame * CFrame.new(0,-17.145,0)
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = Vector3.new(5,37.111,5)
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                rs.HamonSword:FireServer(hit.Parent.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                rs.Damage3:FireServer(hit.Parent.Humanoid, CFrame.new(0,0,0), 99, 2, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*5000+Vector3.new(9e999, 9e999, 0), 0.1, "rbxassetid://1693499499", 0.2, 0)
                rs.Damage12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://1693499499", 1, 20)
            end
		end
        wait(2)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
end
function jirendash()
    rushdmg()
    ts:Create(cam, TweenInfo.new(camspeed), {FieldOfView = 900}):Play()
    rushanimation = Instance.new("Animation")
    rushanimation.AnimationId = assettest(3681187511)
    rushanim = plr.Character.Humanoid:LoadAnimation(rushanimation)
    rush = true
    local rushboost = Instance.new("BodyVelocity")
    rushboost.MaxForce = Vector3.new(100000, 100000, 100000)
    rushboost.P = math.huge
    rushboost.Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 130
    rushboost.Parent = plr.Character.Torso
    rushanim:Play()
    rushanim:AdjustSpeed(2)
    for i = 1,4 do
        rushdmg()
        wait()
    end
    wait(0.3)
    rushboost:Destroy()
    rushdmg()
    wait(0.1)
    rushdmg()
    ts:Create(cam, TweenInfo.new(camspeed), {FieldOfView = 70}):Play()
end
function screambuffed()
    screamanimation = Instance.new("Animation")
    screamanimation.AnimationId = assettest(5621883393)
    screamanim = plr.Character.Humanoid:LoadAnimation(screamanimation)
    screamanim:Play(0.1, 1, 1)
	screamanim:AdjustSpeed(1.2)
    for i, Child in next, workspace.Entities:GetChildren() do
        if Child ~= plr.Character then
            if Child:FindFirstChildOfClass("Humanoid") then
                pcall(function()
                    coroutine.resume(coroutine.create(function()
                        rs.Damage3:FireServer(Child:FindFirstChildOfClass("Humanoid"), Child.Head.CFrame, 1e-200, 0.45, Child.Head.CFrame:Inverse().lookVector * 150, 0.001, "rbxassetid://5568817707", math.random(97,107)/100, 10)
						rs.Damage12:FireServer(plr.Character.Humanoid, Child.Head.CFrame, 1e-200, 0.45, Child.Head.CFrame:Inverse().lookVector * 150, 0.001, "rbxassetid://5568817707", math.random(97,107)/100, 10)
                        rs.HamonSword:FireServer(Child.Humanoid, 1, math.huge, Vector3.new(99,-9e999,0))
                    end))
                end)
            end
        end
    end
    for i = 1,60 do
        rs.VampireDash:FireServer(BrickColor.new("Persimmon"))
        rs.PlayerStrongPunch2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("Persimmon"))
        rs.PlayerStrongPunch2:FireServer(Vector3.new(2, -0.5, 2), Vector3.new(2, -0.5, 2), BrickColor.new("Persimmon"))
        rs.PlayerStrongPunch2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("Persimmon"))
        rs.PlayerStrongPunch2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("Persimmon"))
        wait()
    end
    rs.DoppioSlam:FireServer()
end
function deathstare()
    for i,v in pairs(game.Workspace.Entities:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 20 then
                rs.HamonSword:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                rs.Damage12:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://1693499499", 1, 20)
                rs.Damage3:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 10, Vector3.new(9e999,9e999,0), 0.01, "rbxassetid://1693499499", 1, 20)
            end
        end
    end
    rs.PlayerStrongPunch2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
end
function donut3(Target)
    pcall(function()
        local th = Target.Humanoid
        local thrp = Target.HumanoidRootPart
        donutanimation = Instance.new("Animation")
        donutanimation.AnimationId = assettest(3445853933)
        donutanim = plr.Character.Humanoid:LoadAnimation(donutanimation)
        donutanim:Play()
        donutanim:AdjustSpeed(3)
        for i = 1,10 do
            ftpd:FireServer(Target,math.huge)
            d12:FireServer(th,thrp.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 20)
            hd:FireServer(th, 1, math.huge, Vector3.new(0,-9e999,0))
            wait()
        end
        print(Target.Humanoid.Health)
    end)
end

--angy--
function IMANGYWRRY()
    if angyvar == false then
        normal = false
        angyvar = true
        hum.WalkSpeed = 34
	    hum.JumpPower = 60
        d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://7361178675", 1, 50)
        d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://4471125043", 1, 50)
        for i = 1,20 do
            d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.3, "", 1, 50)
            wait()
        end
        local dg = 0
        coroutine.resume(coroutine.create(function()
            while rser.Stepped:Wait() do
                if angyvar == false then
                    break
                end
                d12:FireServer(hum,hrp.CFrame * CFrame.new(2 * math.cos(dg),2 * math.sin(dg) + 2,2), 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            end
        end))
        repeat
            vd:FireServer(BrickColor.new("Really red"))
            dg = dg +1
            wait(0.1)
        until angyvar == false
    elseif angyvar == true then
        normal = true
        angyvar = false
        hum.WalkSpeed = 20
	    hum.JumpPower = 50
    end
end
function StrongPuncho()
    local hitbox1 = Instance.new("Part", game.Players.LocalPlayer.Character)
    hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
    hitbox1.Name = "hitbox1"
    hitbox1.Transparency = 1
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint", hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
    hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size * 15
    hitbox1.Massless = true
    hitbox1.Color = Color3.new(0,0,0)
    game.Debris:AddItem(hitbox1, 1)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                if not PunchDeb then
                    PunchDeb = true
                    chr.HumanoidRootPart.CFrame = hit.Parent.HumanoidRootPart.CFrame  * CFrame.new(0, 0, -4)
                    rs.Damage31:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.5, "rbxassetid://6823153536", 1, 20)
                    rs.Damage3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.045, "rbxassetid://6823153536", 1, 20)
                    rs.Damage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 85, .1, plr.Character.HumanoidRootPart.CFrame.LookVector * 1 + Vector3.new(0, -80, 0), "", 0, Color3.new(255, 255, 255), "", 1, 1)
                    rs.Knock:FireServer(hit.Parent.Humanoid)
                    rs.Anchor:FireServer(hit.Parent.HumanoidRootPart,true)
                    PunchDeb = false
            end
        end
    end
    wait(0.1)
    if hitbox1 then
    hitbox1:Destroy() 
    end
end)
end
function sickomodepunch()
    strongpunchanimation = Instance.new("Animation")
    strongpunchanimation.AnimationId = assettest(3445806846)
    strongpunchanim = plr.Character.Humanoid:LoadAnimation(strongpunchanimation)
    strongpunchanim:Play(0.1,1,1)
    strongpunchanim:AdjustSpeed(1.2)
    d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://2793638612", 1, 50)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
    rs.PlayerStrongPunch:FireServer(Vector3.new(-0.1,0.1,-0.1), Vector3.new(-0.1,0.1,-0.1), BrickColor.new("Really red"))
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                hd:FireServer(hit.Parent.Humanoid, 1, math.huge, Vector3.new(math.huge,math.huge,0))
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(math.huge,math.huge,math.huge), 0.01, "rbxassetid://7511645861", 1, 20)
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(math.huge,math.huge,0), 0.3, "", 1, 20)
            end
		end
        wait(2)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
    wait(2)
    hitbox1:Destroy()
end
function sickbarrage1()
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0,-10,0), 0.01, "rbxassetid://8818268351", 1, 20)
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0,0,0), 0.3, "", 1, 20)
            end
		end
        wait()
        if hitbox1 then
            hitbox1:Destroy()
        end
    end)
    wait()
    hitbox1:Destroy()
end
function sickbarrage2()
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = la.CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = la
	hitbox1.Size = la.Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0,-10,0), 0.01, "rbxassetid://8818268351", 1, 20)
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0,0,0), 0.3, "", 1, 20)
            end
		end
        wait()
        if hitbox1 then
            hitbox1:Destroy()
        end
    end)
    wait()
    hitbox1:Destroy()
end
function sickobarrage()
    iamangybarrage = true
    local bstop = ku:Connect(function(key)
        if key == "e" then
            iamangybarrage = false
        end
    end)
    barrageanimation = Instance.new("Animation")
    barrageanimation.AnimationId = assettest(3445788051)
    barrageanim = plr.Character.Humanoid:LoadAnimation(barrageanimation)
    barrageanim:Play(0.1, 1, 2.5)
    barrageanim:AdjustSpeed(8)
    spawn(function()
        repeat
            wait()
            rs.PlayerStrongPunch:FireServer(Vector3.new(5, 0.9, 5), Vector3.new(8, 33, 8), BrickColor.new("Really red"))
            rs.PlayerStrongPunch:FireServer(Vector3.new(5, 0.9, 5), Vector3.new(8.5, 34, 8.5), BrickColor.new("Really red"))
            rs.PlayerStrongPunch:FireServer(Vector3.new(5, 0.9, 5), Vector3.new(9, 35, 9), BrickColor.new("Really red"))
            rs.PlayerStrongPunch:FireServer(Vector3.new(5, 0.9, 5), Vector3.new(9.5, 36, 9.5), BrickColor.new("Really red"))
            rs.PlayerStrongPunch:FireServer(Vector3.new(5, 0.9, 5), Vector3.new(10, 37, 10), BrickColor.new("Really red"))
            rs.PlayerStrongPunch:FireServer(Vector3.new(5, 0.9, 5), Vector3.new(10.5, 38, 10.5), BrickColor.new("Really red"))
            rs.PlayerStrongPunch:FireServer(Vector3.new(5, 0.9, 5), Vector3.new(11, 40, 11), BrickColor.new("Really red"))
            rs.PlayerStrongPunch:FireServer(Vector3.new(5, 0.9, 5), Vector3.new(11.5, 39, 11.5), BrickColor.new("Really red"))
            rs.PlayerStrongPunch:FireServer(Vector3.new(5, 0.9, 5), Vector3.new(12, 40, 12), BrickColor.new("Really red"))
        until iamangybarrage == false
    end)
    repeat
        sickbarrage1()
        sickbarrage2()
        d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://7129427798", 1, 50)
        wait()
    until iamangybarrage == false
    barrageanim:Stop()
	iamangybarrage = false
end
function shootlasersoutofurasshitbox(Target)
    local bruhstop = false
    pew = Instance.new("Animation")
    pew.AnimationId = assettest(33169573)
    pa = hum:LoadAnimation(pew)
    pa:Play()
    pa:AdjustSpeed(0.5)
    wait(0.2)
    local thrp = Target.HumanoidRootPart
    local mod = Instance.new("Model")
    mod.Parent = chr
    d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://4849637002", 1, 50)
    local hitbox1 = Instance.new("Part")
    local hitbox2 = hitbox1:Clone()
    hitbox2.CFrame = hrp.CFrame
    hitbox2.Name = "pjhitbox"
    hitbox2.Anchored = false
    hitbox2.CanCollide = false
    hitbox2.Size = Vector3.new(4,4,4)
    hitbox2.Massless = true
    hitbox2.Transparency = 1
    hitbox2.Color = Color3.new(0,0,0)
    hitbox2.Parent = mod
    coroutine.resume(coroutine.create(function()
        game.Debris:AddItem(hitbox2,math.huge)
        wait(1)
        hitbox1:Destroy()
        mod.Parent = game.Workspace
    end))
    coroutine.resume(coroutine.create(function()
        while rser.Heartbeat:Wait() do
            if bruhstop == true then
                break
            end
            mod.Parent = game.WorkSpace
        end
    end))
    coroutine.resume(coroutine.create(function()
        while rser.Heartbeat:Wait() do
            if bruhstop == true then
                break
            end
            d12:FireServer(hum,hitbox2.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.1, "rbxassetid://4578268588", 1, 50)
        end
    end))
    hitbox2.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(math.huge,math.huge,math.huge), 0.01, "rbxassetid://4578268588", 1, 20)
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(math.huge,math.huge,math.huge), 0.3, "", 1, 20)
                hd:FireServer(hit.Parent.Humanoid, 1, math.huge, Vector3.new(math.huge,math.huge,math.huge))
            end
        end
    end)
    coroutine.resume(coroutine.create(function()
        while rser.Heartbeat:Wait() do
            if bruhstop == true then
                break
            end
            local rp1 = Instance.new("RocketPropulsion",hitbox2)
            rp1.ThrustP = 0
            rp1.TurnP = 7500
            rp1.Target = thrp
            rp1:Fire()
            local bp = Instance.new("BodyPosition",hitbox2)
            bp.P = 2000
            bp.D = 0
            bp.Position = thrp.Position
            bp.MaxForce = Vector3.new(2000, 2000, 2000)
            if(thrp.Position-hitbox2.Position).magnitude<0.5 then
                hitbox2:Destroy()
                bruhstop=true
            end
        end
    end))
end
function AAAAAA()
    burstanimation = Instance.new("Animation")
    burstanimation.AnimationId = assettest(5242641804)
    burstanim = plr.Character.Humanoid:LoadAnimation(burstanimation)
    burstanim:Play()
    burstanim:AdjustSpeed(2)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = hrp.CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
    d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://8778476189", 1, 50)
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = hrp
	hitbox1.Size = Vector3.new(70,70,70)
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(math.huge,math.huge,math.huge), 0.01, "rbxassetid://606138807", 1, 20)
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(math.huge,math.huge,math.huge), 0.3, "", 1, 20)
                hd:FireServer(hit.Parent.Humanoid, 1, math.huge, Vector3.new(math.huge,math.huge,math.huge))
            end
		end
        wait()
        if hitbox1 then
            hitbox1:Destroy()
        end
    end)
    wait()
    hitbox1:Destroy()
    for i = 1,10 do
        rs.PlayerStrongPunch2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("Really red"))
        rs.PlayerStrongPunch2:FireServer(Vector3.new(2, -0.5, 2), Vector3.new(2, -0.5, 2), BrickColor.new("Really red"))
        rs.PlayerStrongPunch2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("Really red"))
        rs.PlayerStrongPunch2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("Really red"))
        wait()
    end
end
function chadkickv2()
    kickanimation = Instance.new("Animation")
    kickanimation.AnimationId = assettest(5023532852)
    kickanim = plr.Character.Humanoid:LoadAnimation(kickanimation)
    kickanim:Play(0.1,1,1)
    kickanim:AdjustSpeed(1.2)
    rs.PlayerStrongPunch:FireServer(Vector3.new(-0.1,0.1,-0.1), Vector3.new(-0.1,0.1,-0.1), BrickColor.new("Really red"))
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Leg"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                hd:FireServer(hit.Parent.Humanoid, 1, math.huge, Vector3.new(math.huge,math.huge,0))
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(math.huge,math.huge,math.huge), 0.01, "rbxassetid://6429064547", 1, 20)
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(math.huge,math.huge,0), 0.3, "", 1, 20)
            end
		end
        wait(3)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
    wait(3)
    hitbox1:Destroy() 
end
function gudboyhealingbarrage1()
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = la.CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = la
	hitbox1.Size = la.Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0,-10,0), 0.3, "rbxassetid;//6888585083", 1, 20)
            end
		end
        wait()
        if hitbox1 then
            hitbox1:Destroy()
        end
    end)
    wait()
    hitbox1:Destroy()
end
function gudboyhealingbarrage2()
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = ra.CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = ra
	hitbox1.Size = ra.Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0,-10,0), 0.3, "rbxassetid://6888585083", 1, 20)
                rs.BurnDamage:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, -math.huge, 0, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255), "", math.random(98,106)/100, 7.5)
            end
		end
        wait()
        if hitbox1 then
            hitbox1:Destroy()
        end
    end)
    wait()
    hitbox1:Destroy()
end
function gudboybarrage()
    gudbarrage = true
    local bstop = ku:Connect(function(key)
        if key == "h" then
            gudbarrage = false
        end
    end)
    barrageanimation = Instance.new("Animation")
    barrageanimation.AnimationId = assettest(3445788051)
    barrageanim = plr.Character.Humanoid:LoadAnimation(barrageanimation)
    barrageanim:Play(0.1, 1, 2.5)
    barrageanim:AdjustSpeed(8)
    repeat
        gudboyhealingbarrage1()
        gudboyhealingbarrage2()
        rs.PlayerStrongPunch:FireServer(Vector3.new(-0.5,0.1,-0.5), Vector3.new(-0.5,0.1,-0.5), BrickColor.new("Really red"))
		rs.PlayerStrongPunch:FireServer(Vector3.new(-0.3,0.1,-0.3), Vector3.new(-0.3,0.1,-0.3), BrickColor.new("Really red"))
		rs.PlayerStrongPunch:FireServer(Vector3.new(-0.1,0.1,-0.1), Vector3.new(-0.1,0.1,-0.1), BrickColor.new("Really red"))
        d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://3372260985", 1, 50)
        wait()
    until gudbarrage == false
    barrageanim:Stop()
	gudbarrage = false
end
function slapthatbitch()
    d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://4581303832", 1, 50)
    strongpunchanimation = Instance.new("Animation")
    strongpunchanimation.AnimationId = assettest(3894577205)
    strongpunchanim = plr.Character.Humanoid:LoadAnimation(strongpunchanimation)
    strongpunchanim:Play(0.1,1,1)
    strongpunchanim:AdjustSpeed(3)
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
	hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                hd:FireServer(hit.Parent.Humanoid, 1, math.huge, Vector3.new(math.huge,math.huge,0))
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(math.huge,math.huge,math.huge), 0.01, "rbxassetid://4137216950", 1, 20)
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(math.huge,math.huge,0), 0.3, "", 1, 20)
            end
		end
        wait(2)
        if hitbox1 then
            hitbox1:Destroy() 
        end
    end)
    wait(2)
    hitbox1:Destroy()
end
function whyamistilhere()
    if gaybolg == false then
        gaybolg = true
        d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://3154962208", 1, 50)
        clickanimation = Instance.new("Animation")
        clickanimation.AnimationId = assettest(4774879706)
        clickanim = hum:LoadAnimation(clickanimation)
        clickanim:Play()
        local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
        hitbox1.CFrame = la.CFrame
        hitbox1.Name = "hitbox"
        hitbox1.Anchored = false
        hitbox1.CanCollide = false
        local weld = Instance.new("WeldConstraint",hitbox1)
        weld.Part0 = hitbox1
        weld.Part1 = la
        hitbox1.Size = la.Size*3
        hitbox1.Massless = true
        hitbox1.Transparency = 1
        hitbox1.Color = Color3.new(0,0,0)
        hitbox1.Touched:Connect(function(hit)
            if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
                if hit.Parent:FindFirstChild("HumanoidRootPart") then
                    local followme = Instance.new("Part",chr)
                    followme.CFrame = hrp.CFrame * CFrame.new(0,0,-10)
                    followme.Name = "hitbox"
                    followme.Anchored = false
                    followme.CanCollide = false
                    local ez = Instance.new("WeldConstraint",followme)
                    ez.Part0 = followme
                    ez.Part1 = hrp
                    followme.Size = Vector3.new(4,4,4)
                    followme.Massless = true
                    followme.Transparency = 1
                    followme.Color = Color3.new(0,0,0)
                    game.Debris:AddItem(followme,math.huge)
                    if gaybolg == false then
                        ez:Destroy()
                    end
                    d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0,Vector3.new(0,0,0), 0.05, "rbxassetid://1378574191", 1, 20)
                    d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0,Vector3.new(0,0,0), 0, "", 1, 20)
                    coroutine.resume(coroutine.create(function()
                        while true do
                            if gaybolg == false then
                                break
                            end
                            wait()
                            k:FireServer(hit.Parent.Humanoid)
                            local A_1 = hit.Parent.Humanoid
                            local A_2 = hit.Parent.HumanoidRootPart.CFrame
                            local A_3 = 0
                            local A_4 = 1
                            local A_5 = ((followme.Position)-hit.Parent.HumanoidRootPart.Position)*0.3
                            local A_6 = "rbxassetid://"
                            local A_7 = 2
                            local A_8 = Color3.new(255,0,0)
                            local A_9 = "rbxassetid://"
                            local A_10 = 5
                            local A_11 = 1
                            local Event1 = game:GetService("ReplicatedStorage").Damage
                            Event1:FireServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7, A_8, A_9, A_10, A_11)
                        end
                    end))
                end
            end
            wait(3)
            if hitbox1 then
                hitbox1:Destroy()
            end
        end)
        wait(3)
        hitbox1:Destroy()
    elseif gaybolg == true then
        gaybolg = false
    end
end
function bonkhitbox()
    d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://8075908025", 1, 50)
    local bonkisgud = Instance.new("Animation")
    bonkisgud.AnimationId = assettest(184574340)
    big = hum:LoadAnimation(bonkisgud)
    big:Play()
    local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
	hitbox1.CFrame = ra.CFrame
	hitbox1.Name = "hitbox"
	hitbox1.Anchored = false
	hitbox1.CanCollide = false
	local weld = Instance.new("WeldConstraint",hitbox1)
	weld.Part0 = hitbox1
	weld.Part1 = ra
	hitbox1.Size = ra.Size*3
	hitbox1.Massless = true
	hitbox1.Transparency = 1
	hitbox1.Color = Color3.new(0,0,0)
	hitbox1.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
		    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0,-10,0), 0.3, "", 1, 20)
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0,-10.0), 0.01, "rbxassetid://7750368290", 1, 20)
            end
		end
        wait(3.9)
        if hitbox1 then
            hitbox1:Destroy()
        end
    end)
    wait(3.9)
    hitbox1:Destroy()
end
function SLASH()
    local mod = Instance.new("Model")
    mod.Parent = chr
    local hitbox1 = Instance.new("Part")
    local hitbox2 = hitbox1:Clone()
    hitbox2.CFrame = h.CFrame
    hitbox2.Name = "pjhitbox"
    hitbox2.Anchored = false
    hitbox2.CanCollide = false
    hitbox2.Size = Vector3.new(5,5,5)
    hitbox2.Massless = true
    hitbox2.Transparency = 1
    hitbox2.Color = Color3.new(0,0,0)
    hitbox2.Parent = mod
    function slashfxgobrr()
        local p1 = hitbox2:Clone()
        p1.Name = "pjfxslash"
        p1.Size = Vector3.new(1,1,1)
        p1.Parent = mod
        p1.CFrame = hitbox2.CFrame
        local w1 = Instance.new("WeldConstraint",p1)
        w1.Part0 = p1
        w1.Part1 = hitbox2
        local p2 = hitbox2:Clone()
        p2.Name = "pjfxslash"
        p2.Size = Vector3.new(1,1,1)
        p2.Parent = mod
        p2.CFrame = hitbox2.CFrame * CFrame.new(0,0.662,-1.499)
        local w2 = Instance.new("WeldConstraint",p2)
        w2.Part0 = p2
        w2.Part1 = hitbox2
        local p3 = hitbox2:Clone()
        p3.Name = "pjfxslash"
        p3.Size = Vector3.new(1,1,1)
        p3.Parent = mod
        p3.CFrame = hitbox2.CFrame * CFrame.new(0,-0.662,-1.499)
        local w3 = Instance.new("WeldConstraint",p3)
        w3.Part0 = p3
        w3.Part1 = hitbox2
        local p4 = hitbox2:Clone()
        p4.Name = "pjfxslash"
        p4.Size = Vector3.new(1,1,1)
        p4.Parent = mod
        p4.CFrame = hitbox2.CFrame * CFrame.new(0,1.109,-1.439)
        local w4 = Instance.new("WeldConstraint",p4)
        w4.Part0 = p4
        w4.Part1 = hitbox2
        local p5 = hitbox2:Clone()
        p5.Name = "pjfxslash"
        p5.Size = Vector3.new(1,1,1)
        p5.Parent = mod
        p5.CFrame = hitbox2.CFrame * CFrame.new(0,-1.109,-1.439)
        local w5 = Instance.new("WeldConstraint",p5)
        w5.Part0 = p5
        w5.Part1 = hitbox2
        local p6 = hitbox2:Clone()
        p6.Name = "pjfxslash"
        p6.Size = Vector3.new(1,1,1)
        p6.Parent = mod
        p6.CFrame = hitbox2.CFrame * CFrame.new(0,1.418,-1.343)
        local w6 = Instance.new("WeldConstraint",p6)
        w6.Part0 = p6
        w6.Part1 = hitbox2
        local p7 = hitbox2:Clone()
        p7.Name = "pjfxslash"
        p7.Size = Vector3.new(1,1,1)
        p7.Parent = mod
        p7.CFrame = hitbox2.CFrame * CFrame.new(0,-1.418,-1.343)
        local w7 = Instance.new("WeldConstraint",p7)
        w7.Part0 = p7
        w7.Part1 = hitbox2
        local p8 = hitbox2:Clone()
        p8.Name = "pjfxslash"
        p8.Size = Vector3.new(1,1,1)
        p8.Parent = mod
        p8.CFrame = hitbox2.CFrame * CFrame.new(0,1.989,-1.189)
        local w8 = Instance.new("WeldConstraint",p8)
        w8.Part0 = p8
        w8.Part1 = hitbox2
        local p9 = hitbox2:Clone()
        p9.Name = "pjfxslash"
        p9.Size = Vector3.new(1,1,1)
        p9.Parent = mod
        p9.CFrame = hitbox2.CFrame * CFrame.new(0,-1.989,-1.189)
        local w9 = Instance.new("WeldConstraint",p9)
        w9.Part0 = p9
        w9.Part1 = hitbox2
        local p10 = hitbox2:Clone()
        p10.Name = "pjfxslash"
        p10.Size = Vector3.new(1,1,1)
        p10.Parent = mod
        p10.CFrame = hitbox2.CFrame * CFrame.new(0,2.15,-1.232)
        local w10 = Instance.new("WeldConstraint",p10)
        w10.Part0 = p10
        w10.Part1 = hitbox2
        local p11 = hitbox2:Clone()
        p11.Name = "pjfxslash"
        p11.Size = Vector3.new(1,1,1)
        p11.Parent = mod
        p11.CFrame = hitbox2.CFrame * CFrame.new(0,-2.15,-1.232)
        local w11 = Instance.new("WeldConstraint",p11)
        w11.Part0 = p11
        w11.Part1 = hitbox2
        local p12 = hitbox2:Clone()
        p12.Name = "pjfxslash"
        p12.Size = Vector3.new(1,1,1)
        p12.Parent = mod
        p12.CFrame = hitbox2.CFrame * CFrame.new(0,2.491, -1.143)
        local w12 = Instance.new("WeldConstraint",p12)
        w12.Part0 = p12
        w12.Part1 = hitbox2
        local p13 = hitbox2:Clone()
        p13.Name = "pjfxslash"
        p13.Size = Vector3.new(1,1,1)
        p13.Parent = mod
        p13.CFrame = hitbox2.CFrame * CFrame.new(0,-2.491, -1.143)
        local w13 = Instance.new("WeldConstraint",p13)
        w13.Part0 = p12
        w13.Part1 = hitbox2
    end
    slashfxgobrr()
    local projectileboost = Instance.new("BodyVelocity")
    projectileboost.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    projectileboost.P = math.huge
    projectileboost.Velocity = hrp.CFrame.lookVector * 150
    projectileboost.Parent = hitbox2
    projectileboost.Name = "chad"
    coroutine.resume(coroutine.create(function()
        for i,v in pairs(mod:GetChildren()) do
            if v.Name == "pjfxslash" then
                game.Debris:AddItem(v,math.huge)
            end
        end
        game.Debris:AddItem(hitbox2,math.huge)
        wait(1)
        hitbox1:Destroy()
        mod.Parent = game.Workspace
    end))
    coroutine.resume(coroutine.create(function()
        while rser.Stepped:Wait() do
            for i,v in pairs(mod:GetChildren()) do
                if v.Name == "pjfxslash" then
                    d1:FireServer(hum,v.CFrame, 1, .1, Vector3.new(0, 0, 0), "", 0, Color3.new(255,0,0), "", 1, 1)
                end
            end
        end
    end))
    hitbox2.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                hd:FireServer(hit.Parent.Humanoid, 1, math.huge, Vector3.new(math.huge,math.huge,0))
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(math.huge,math.huge,math.huge), 0.01, "", 1, 20)
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(math.huge,math.huge,0), 0.3, "", 1, 20)
            end
        end
    end)
end
function susamongushacks()
    local va = hum:LoadAnimation(animtable.vent)
    local uva = hum:LoadAnimation(animtable.unvent)
    local noclipping = nil
    local clip = false
    function noclip()
		if Clip == false and chr ~= nil then
			for i,v in pairs(chr:GetDescendants()) do
				if v:IsA("BasePart") and v.CanCollide == true and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
	end
	noclipping = game:GetService('RunService').Stepped:Connect(noclip)
	noclip()
    va:Play()
    rs.VampireDash:FireServer(BrickColor.new("Really red"))
    wait(1)
    va:AdjustSpeed(0)
    chr:SetPrimaryPartCFrame(CFrame.new(mouse.Hit.p + Vector3.new(0, 3.5, 0)))
    d12:FireServer(hum,hrp.CFrame,0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://5771441412", 1, 50)
    wait(0.5)
    va:Stop()
    uva:Play()
    rs.VampireDash:FireServer(BrickColor.new("Really red"))
    wait(0.2)
    clip = true
end
function fullspiral()
    local mod = Instance.new("Model")
    local fsv = 0
    mod.Parent = chr
    local hitbox1 = Instance.new("Part")
    local hitbox2 = hitbox1:Clone()
    hitbox2.CFrame = h.CFrame
    hitbox2.Name = "pjhitbox"
    hitbox2.Anchored = false
    hitbox2.CanCollide = false
    hitbox2.Size = Vector3.new(5,5,5)
    hitbox2.Massless = true
    hitbox2.Transparency = 1
    hitbox2.Color = Color3.new(0,0,0)
    hitbox2.Parent = mod
    local projectileboost = Instance.new("BodyVelocity")
    projectileboost.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    projectileboost.P = math.huge
    projectileboost.Velocity = hrp.CFrame.lookVector * 50
    projectileboost.Parent = hitbox2
    projectileboost.Name = "chad"
    coroutine.resume(coroutine.create(function()
        game.Debris:AddItem(hitbox2,math.huge)
        wait(1)
        hitbox1:Destroy()
        mod.Parent = game.Workspace
    end))
    coroutine.resume(coroutine.create(function()
        while rser.Stepped:Wait() do
            fsv = fsv +1
            d1:FireServer(hum,hitbox2.CFrame * CFrame.new(2 * math.cos(fsv),2 * math.sin(fsv),0), 1, .1, Vector3.new(0, 0, 0), "", 0, Color3.new(255,0,0), "", 1, 1)
        end
    end))
    hitbox2.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                hd:FireServer(hit.Parent.Humanoid, 1, math.huge, Vector3.new(math.huge,math.huge,0))
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(math.huge,math.huge,math.huge), 0.01, "", 1, 20)
                d12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(math.huge,math.huge,0), 0.3, "", 1, 20)
            end
        end
    end)
end

--chill--
function chillmode()
    if chillaxnigga==false then
        chillaxnigga=true
        hum.WalkSpeed = 34
	    hum.JumpPower = 60
        local dg = 0
        coroutine.resume(coroutine.create(function()
            while rser.Stepped:Wait() do
                if chillaxnigga==false then
                    break
                end
                dg=dg+1
                d12s:FireServer(hum,hrp.CFrame*CFrame.new(1*math.sin(dg),3.5,1*math.cos(dg)),0,0,Vector3.new(0,0,0),0.01)
            end
        end))
        repeat
            vd:FireServer(BrickColor.new("Pastel Blue"))
            wait(0.1)
        until chillaxnigga==false
    elseif chillaxnigga==true then
        chillaxnigga=false
        hum.WalkSpeed=16
	    hum.JumpPower=50
    end
end
function hit1(hitbox,hitboxcframe,hitboxsize,hitboxlifetime,dmg,debtime,bodyfdire,grow,sound,pitch,volume,hsooo)
    local hitbox1 = Instance.new("Part",chr)
    hitbox1.CFrame = hitboxcframe
    hitbox1.Name = "hitbox"
    hitbox1.Anchored = false
    hitbox1.CanCollide = false
    local weld = Instance.new("WeldConstraint",hitbox1)
    weld.Part0 = hitbox1
    weld.Part1 = hitbox
    hitbox1.Size = hitboxsize
    hitbox1.Massless = true
    hitbox1.Transparency = 1
    hitbox1.Color = Color3.new(0,0,0)
    hitbox1.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
            if hit.Parent:FindFirstChild("HumanoidRootPart") then
                if hsooo==true then
                    hd:FireServer(hit.Parent.Humanoid,1,math.huge,Vector3.new(math.huge,math.huge,math.huge))
                end
                d12s:FireServer(hit.Parent.Humanoid,hit.Parent.HumanoidRootPart.CFrame,0,0,Vector3.new(0,0,0),0.3,"",1,20)
                d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame,dmg,debtime,bodyfdire,grow,sound,pitch,volume)
            end
        end
        wait(hitboxlifetime)
        if hitbox1 then
            hitbox1:Destroy()
        end
    end)
    wait(hitboxlifetime)
    hitbox1:Destroy()
end
function hit2(hb,rt,rng,dmg,debtime,bodyfdire,grow,sound,pitch,volume,hsooo)
    local bruhwhy=game.workspace.Entities
    coroutine.resume(coroutine.create(function()
        for i=1,rt do
            for i,v in pairs(bruhwhy:GetChildren())do
                if v~=chr then
                    if v:FindFirstChildOfClass("Humanoid")then
                        if v:FindFirstChild("HumanoidRootPart")then
                            if(v.HumanoidRootPart.Position-hb.Position).magnitude<rng and v:FindFirstChild("JustGotHitten")==nil then
                                if hsooo==true then
                                    hd:FireServer(v.Humanoid,1,math.huge,Vector3.new(math.huge,math.huge,math.huge))
                                end
                                d12s:FireServer(v.Humanoid,v.HumanoidRootPart.CFrame,0,0,Vector3.new(0,0,0),0.3,"",1,20)
                                d3:FireServer(v.Humanoid,v.HumanoidRootPart.CFrame,dmg,debtime,bodyfdire,grow,sound,pitch,volume)
                            end
                        end
                    end
                end
            end
        end
    end))
end
local animtable = {
    vent = Instance.new("Animation"),
    unvent = Instance.new("Animation"),
    uidodge1 = Instance.new("Animation"),
    uidodge2 = Instance.new("Animation"),
    click1 = Instance.new("Animation"),
    click2 = Instance.new("Animation"),
    atkidle = Instance.new("Animation"),
    sbrg = Instance.new("Animation"),
    cmb = Instance.new("Animation"),
    su = Instance.new("Animation"),
    gerss = Instance.new("Animation"),
    cmcs = Instance.new("Animation"),
    cmcl = Instance.new("Animation"),
    gers = Instance.new("Animation"),
    spbrg = Instance.new("Animation"),
    smack = Instance.new("Animation"),
    gpd = Instance.new("Animation"),
    scri = Instance.new("Animation"),
    kazotsky = Instance.new("Animation"),
    tpose = Instance.new("Animation")
}
animtable.vent.AnimationId = assettest(5214216154)
animtable.unvent.AnimationId = assettest(5214217344)
animtable.uidodge1.AnimationId = assettest(5633583111)
animtable.uidodge2.AnimationId = assettest(5633584586)
animtable.click1.AnimationId = assettest(2876963877)
animtable.click2.AnimationId = assettest(2876963057)
animtable.atkidle.AnimationId = assettest(2876973676)
animtable.sbrg.AnimationId = assettest(2763936707)
animtable.cmb.AnimationId = assettest(3538880551)
animtable.su.AnimationId = assettest(3538845886)
animtable.gerss.AnimationId = assettest(4792744021)
animtable.cmcs.AnimationId = assettest(4478932565)
animtable.cmcl.AnimationId = assettest(4478937027)
animtable.gers.AnimationId = assettest(4792749616)
animtable.spbrg.AnimationId = assettest(3445788051)
animtable.smack.AnimationId = assettest(3894577205)
animtable.gpd.AnimationId = assettest(5243891580)
animtable.scri.AnimationId = assettest(5166116703)
animtable.kazotsky.AnimationId = assettest(4686990543)
animtable.tpose.AnimationId = assettest(27432691)
function chillbarrage()
    local a1=hum:LoadAnimation(animtable.spbrg)
    cbrg=true
    a1:Play()
    a1:AdjustSpeed(2)
    repeat
        hit1(la,la.CFrame,la.Size*2,0.1,99,0.2,hrp.CFrame.LookVector*1,0.01,"",0,0,false)
        hit1(ra,ra.CFrame,ra.Size*2,0.1,99,0.2,hrp.CFrame.LookVector*1,0.01,"",0,0,false)
        wait()
    until cbrg==false
    cbrg=false
    a1:Stop()
end
function chillsmack()
    local a1=hum:LoadAnimation(animtable.smack)
    a1:Play()
    a1:AdjustSpeed(3)
    hit1(ra,ra.CFrame,ra.Size*3,2,99,math.huge,Vector3.new(math.huge,math.huge,math.huge),0.01,"",0,0,true)
end
local cdance=false
local cpose=hum:LoadAnimation(animtable.kazotsky)
function chilldance()
    if cdance==false then
        hum.WalkSpeed=8
        hum.JumpPower=0
        cdance=true
        cpose:Play(0.1,1,2)
        cpose:AdjustSpeed(0.93)
        repeat
            hit2(hrp,1,5,99,math.huge,Vector3.new(math.random(-math.huge,math.huge),math.random(-math.huge,math.huge),math.random(-math.huge,math.huge)),0.01,"",0,0,true)
            wait() 
        until cdance==false 
    elseif cdance==true then
        hum.WalkSpeed=34
	    hum.JumpPower=60
        cdance=false
        cpose:Stop(0.25)
    end
end
function assertdominance(Target)
    pcall(function()
        local th = Target.Humanoid
        local thrp = Target.HumanoidRootPart
        local anim1=hum:LoadAnimation(animtable.tpose)
        anim1:Play()
        anim1.TimePosition=1.473
        anim1:AdjustSpeed(0)
        repeat
            ftpd:FireServer(Target,math.huge)
            d12s:FireServer(th,thrp.CFrame,0,0,Vector3.new(0,0,0),0.3)
            d3:FireServer(th,thrp.CFrame,99,0,Vector3.new(0,0,0),0.01)
            if th.Health<=0.01 then
                anim1:Stop()
            end
            wait()
        until th.Health<=0.01
        anim1:Stop()
        print(Target.Humanoid.Health)
    end)
end
function trackingvolley(Target,amount)
    coroutine.resume(coroutine.create(function()
        for i=1,amount do
            if bruhstop == true then
                break
            end
            local bruhstop = false
            pew = Instance.new("Animation")
            pew.AnimationId = assettest(33169573)
            pa = hum:LoadAnimation(pew)
            pa:Play()
            pa:AdjustSpeed(0.5)
            wait(0.2)
            local thrp = Target.HumanoidRootPart
            local mod = Instance.new("Model")
            mod.Parent = chr
            d12:FireServer(hum,hrp.CFrame, 0, 0, Vector3.new(0, 0, 0), 0, "rbxassetid://4849637002", 2, 50)
            local hitbox1 = Instance.new("Part")
            local hitbox2 = hitbox1:Clone()
            hitbox2.CFrame = hrp.CFrame
            hitbox2.Name = "pjhitbox"
            hitbox2.Anchored = false
            hitbox2.CanCollide = false
            hitbox2.Size = Vector3.new(4,4,4)
            hitbox2.Massless = true
            hitbox2.Transparency = 1
            hitbox2.Color = Color3.new(0,0,0)
            hitbox2.Parent = mod
            if bruhstop == true then
               mod:Destroy() 
            end
            coroutine.resume(coroutine.create(function()
                game.Debris:AddItem(hitbox2,math.huge)
                wait(1)
                hitbox1:Destroy()
                mod.Parent = game.Workspace
            end))
            coroutine.resume(coroutine.create(function()
                while rser.Heartbeat:Wait() do
                    if bruhstop == true then
                        break
                    end
                    mod.Parent = game.WorkSpace
                end
            end))
            coroutine.resume(coroutine.create(function()
                while rser.Heartbeat:Wait() do
                    if bruhstop == true then
                        break
                    end
                    d12s:FireServer(hum,hitbox2.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.05, "rbxassetid://4578268588", 3, 5)
                end
            end))
            hitbox2.Touched:Connect(function(hit)
                if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
                    if hit.Parent:FindFirstChild("HumanoidRootPart") then
                        d3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(math.huge,math.huge,math.huge), 0.01, "rbxassetid://4578268588", 5, 20)
                        d12s:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 0, 0, Vector3.new(math.huge,math.huge,math.huge), 0.3, "", 1, 20)
                        hd:FireServer(hit.Parent.Humanoid, 1, math.huge, Vector3.new(math.huge,math.huge,math.huge))
                    end
                end
            end)
            coroutine.resume(coroutine.create(function()
                while rser.Heartbeat:Wait() do
                    if bruhstop == true then
                        break
                    end
                    local rp1 = Instance.new("RocketPropulsion",hitbox2)
                    rp1.ThrustP = 0
                    rp1.TurnP = 7500
                    rp1.Target = thrp
                    rp1:Fire()
                    local bp = Instance.new("BodyPosition",hitbox2)
                    bp.P = 2000
                    bp.D = 0
                    bp.Position = thrp.Position
                    bp.MaxForce = Vector3.new(7000,7000,7000)
                    if(thrp.Position-hitbox2.Position).magnitude<0.5 then
                        hitbox2:Destroy()
                        bruhstop=true
                    end
                end
            end))
            wait(0.3)
        end
    end))
end

--mode keybinds--
kd:Connect(function(key)
    if key == "6" then
        if chillaxnigga == true then return end
        if death == true then return end
        if soh == true then return end
        if bruhmode == true then return end
        if creamvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        smval = smval +1
        if smval == 1 then
            normal = false
            smvar = true
        end
        if smval == 2 then
            hakivar1 = false
            hakivar2 = false
            hakivar3 = false
            hakivar4 = false
            lvvar = false
            smvar = false
            normal = true
            smval = 0
            lvval = 0
            hakival = 0
        end
    end
end)
kd:Connect(function(key)
    if key == "5" then
        if chillaxnigga == true then return end
        if death == true then return end
        if soh == true then return end
        if bruhmode == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        scriptsimadebefore = scriptsimadebefore +1
        if scriptsimadebefore == 1 then
            normal = false
            creamvar = true
            repeat
                rs.UR2:FireServer(2)
                creamdamage()
                wait()
            until creamvar == false
        end
        if scriptsimadebefore == 2 then
            creamvar = false
            jirenvar = true
        end
        if scriptsimadebefore == 3 then
            jirenmode = false
            jirenvar = false
            normal = true
            scriptsimadebefore = 0
        end
    end
end)
kd:Connect(function(key)
    if key == "8" then
        if chillaxnigga == true then return end
        if death == true then return end
        if soh == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if bruhmode == true then return end
        bd:FireServer(hum,-math.huge)
        IMANGYWRRY()
    end
end)
kd:Connect(function(k)
    if k == "7" then
        if angyvar == true then return end
        if death == true then return end
        if soh == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if bruhmode == true then return end
        bd:FireServer(hum,-math.huge)
        chillmode()
    end
end)
mouse.KeyDown:Connect(function(key)
    if key == "k" then
        if chillaxnigga == true then return end
        if death == true then return end
        if soh == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        dogdeval = dogdeval +1
        if dogdeval == 1 then
            normal = false
            bruhmode = true
            rs.RTZ:FireServer(true)
            repeat
                rs.VampireDash:FireServer(BrickColor.new("Electric blue"))
                plr.Character.Humanoid.WalkSpeed = 100
                plr.Character.Humanoid.JumpPower = 100
                wait()
            until bruhmode == false
        end
        if dogdeval == 2 then
            rs.RTZ:FireServer(false)
            normal = true
            bruhmode = false
            dogdeval = 0
            wait(1)
            plr.Character.Humanoid.WalkSpeed = 16
            plr.Character.Humanoid.JumpPower = 50
        end
    end
end)

--taunt keybind--
kd:Connect(function(key)
    if key == "3" then
        if death == true then return end
        ezsheeshustupidtauntswork()
    end
end)

--normal mode keybinds--
mouse.KeyDown:Connect(function(key)
    if key == "r" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        smackgobrr()
    end
end)
kd:Connect(function(key)
    if key == "y" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        uppercut()
    end
end)
kd:Connect(function(key)
    if key == "q" then
        if chillaxnigga == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if creamvar == true then return end
        if death == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        if mouse.Target and mouse.Target.Parent then
            local Character = nil
            if mouse.Target.Parent:IsA("Model") and mouse.Target.Parent.Name == "Stand" then
                Character = mouse.Target.Parent.Parent
            elseif mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
                Character = mouse.Target.Parent
            end
            if Character then
                donut1(Character)
            end
        end
    end
end)
kd:Connect(function(key)
    if key == "1" then
        if chillaxnigga == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if creamvar == true then return end
        if death == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        if mouse.Target and mouse.Target.Parent then
            local Character = nil
            if mouse.Target.Parent:IsA("Model") and mouse.Target.Parent.Name == "Stand" then
                Character = mouse.Target.Parent.Parent
            elseif mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
                Character = mouse.Target.Parent
            end
            if Character then
                donut2(Character)
            end
        end
    end
end)
kd:Connect(function(key)
    if key == "f" then
        if chillaxnigga == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        brehwatisthis()
    end
end)
kd:Connect(function(key)
    if key == "b" then
        if chillaxnigga == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        projectile()
    end
end)
mouse.KeyDown:Connect(function(key)
    if key == "t" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        brehthisgun()
    end
end)
kd:Connect(function(key)
    if key == "p" then
        if chillaxnigga == true then return end
        if death == true then return end
        if soh == true then return end
        if bruhmode == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        if not posevar then
            posevar = true
            poseval.Value = poseval.Value + 1
            if poseval.Value == 3 then
               poseval.Value = 1 
            end
            if poseval.Value == 1 then
                rs.ParticleEvent:FireServer("aura")
                rs.Menacing:FireServer(true)
                poseanimation = Instance.new("Animation")
                poseanimation.AnimationId = assettest(04787079415)
                poseanim = plr.Character.Humanoid:LoadAnimation(poseanimation)
                poseanim:Play()
                wait(3)
                poseanim:AdjustSpeed(0)
                plr.Character.Humanoid.WalkSpeed = 0
                plr.Character.Humanoid.JumpPower = 0
            end
            if poseval.Value == 2 then
                rs.ParticleEvent:FireServer("noaura")
               rs.Menacing:FireServer(false)
               poseanim:Stop()
               plr.Character.Humanoid.WalkSpeed = 16
                plr.Character.Humanoid.JumpPower = 50
            end
            wait(0.5)
            posevar = false
        end
    end
end)
kd:Connect(function(key)
    if key == "u" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        karsspin()
    end
end)
kd:Connect(function(key)
    if key == "l" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        scream()
    end
end)
kd:Connect(function(key)
    if key == "g" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        boom()
    end
end)
mouse.KeyDown:Connect(function(key)
    if key == "z" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        mousetp()
    end
end)
mouse.KeyDown:Connect(function(key)
    if key == 'v' then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        normaltp()
    end
end)
kd:Connect(function(key)
    if key == "2" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        bringall()
    end
end)
kd:Connect(function(key)
    if key == "n" then
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        dragonfist()
    end
end)
kd:Connect(function(key)
    if key == "h" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        longrangepunch()
    end
end)
c1:Connect(function()
    if chillaxnigga == true then return end
    if creamvar == true then return end
    if death == true then return end
    if bruhmode == true then return end
    if soh == true then return end
    if smvar == true then return end
    if jirenvar == true then return end
    if angyvar == true then return end
    clickattack1()
end)
ui.InputBegan:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.E then
        if chillaxnigga == true then return end
        if death == true then return end
        if soh == true then return end
        if bruhmode == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        barrage1 = true
        bdmg1()
        barrageanimation = Instance.new("Animation")
        barrageanimation.AnimationId = assettest(4492501346)
        barrageanim = plr.Character.Humanoid:LoadAnimation(barrageanimation)
        barrageanim:Play(0.1, 1, 2.5)
        barrageanim:AdjustSpeed(2)
        repeat
            barrageanim:Play(0.1, 1, 2.5)
            barrageanim:AdjustSpeed(3)
            wait(0.2)
        until barrage1 == false
    end
end)
ui.InputEnded:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.E then
        if death == true then return end
        if soh == true then return end
        if bruhmode == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        barrage1 = false
    end
end)
ui.InputBegan:Connect(function(Input,IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.C then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if death == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        ts:Create(cam, TweenInfo.new(camspeed), {FieldOfView = 900}):Play()
        rn = Instance.new("Animation")
        rn.AnimationId = assettest(5226518760)
        run = hum:LoadAnimation(rn)
        run:Play()
        run:AdjustSpeed(1.5)
        hum.JumpPower = 70
        car = true
        local Boost = Instance.new("BodyVelocity")
        Boost.Name = "omgcarcrashspeed"
        Boost.MaxForce = Vector3.new(100000, 1000, 100000)
        Boost.P = math.huge
        Boost.Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 100
        Boost.Parent = plr.Character.Torso
        repeat
            carcrash()
            Boost.Velocity = hrp.CFrame.lookVector * 100
            wait()
        until car == false
    end
end)
ui.InputEnded:Connect(function(Input,IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.C then
        if bruhmode == true then return end
        if soh == true then return end
        if death == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        hum.JumpPower = 50
        run:Stop()
        ts:Create(cam, TweenInfo.new(camspeed), {FieldOfView = 70}):Play()
        car = false
        tor.omgcarcrashspeed:Destroy()
    end
end)
ui.InputBegan:Connect(function(Input,IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.J then
        if chillaxnigga == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if death == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        tphvar = true
        repeat
            tpholdable()
            wait()
        until tphvar == false
    end
end)
ui.InputEnded:Connect(function(Input,IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.J then
        if bruhmode == true then return end
        if soh == true then return end
        if death == true then return end
        if creamvar == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        tphvar = false
    end
end)

--bruhmode keybinds--

--cream keybinds--
kd:Connect(function(key)
    if key == "h" then
        if chillaxnigga == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        creamjustcream()
    end
end)
kd:Connect(function(key)
    if key == "r" then
        if chillaxnigga == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        creamsidetoside()
    end
end)
kd:Connect(function(key)
    if key == "t" then
        if chillaxnigga == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        creamspin()
    end
end)
kd:Connect(function(key)
    if key == "v" then
        if chillaxnigga == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        creamrush()
    end
end)
kd:Connect(function(key)
    if key == "z" then
        if chillaxnigga == true then return end
        if soh == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        creamdamage()
        rs.UR2:FireServer(2)
        wait(0.2)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.hit.p.X, mouse.hit.p.Y + 2, mouse.hit.p.Z)
        wait(0.2)
        creamdamage()
        rs.UR2:FireServer(2)
    end
end)
ui.InputBegan:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.C then
        if chillaxnigga == true then return end
        if normal == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if death == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        creamorb = true
        local creamspeedgobrr = Instance.new("BodyVelocity")
        creamspeedgobrr.Name = "creamgovroomvroom"
        creamspeedgobrr.MaxForce = Vector3.new(100000, 0, 100000)
        creamspeedgobrr.P = math.huge
        creamspeedgobrr.Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 130
        creamspeedgobrr.Parent = plr.Character.Torso
        repeat
            wait()
            rs.UR2:FireServer(2)
            creamdamage()
            creamspeedgobrr.Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 130
        until creamorb == false
    end
end)
ui.InputEnded:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.C then
        if normal == true then return end
        if bruhmode == true then return end
        if soh == true then return end
        if death == true then return end
        if smvar == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        creamorb = false
        chr.Torso.creamgovroomvroom:Destroy()
    end
end)

--stand mode keybinds--
c1:Connect(function()
    if chillaxnigga == true then return end
    if creamvar == true then return end
    if death == true then return end
    if bruhmode == true then return end
    if normal == true then return end
    if soh == true then return end
    if jirenvar == true then return end
    if angyvar == true then return end
    clickattack2()
end)
kd:Connect(function(key)
    if key == "p" then
        if chillaxnigga == true then return end
        if death == true then return end
        if soh == true then return end
        if bruhmode == true then return end
        if creamvar == true then return end
        if normal == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        if not posevar then
            posevar = true
            poseval.Value = poseval.Value + 1
            if poseval.Value == 3 then
               poseval.Value = 1 
            end
            if poseval.Value == 1 then
                rs.ParticleEvent:FireServer("aura")
                rs.Transparency:FireServer(sh,0.25)
                rs.Transparency:FireServer(stor,0.25)
                rs.Transparency:FireServer(sra,0.25)
                rs.Transparency:FireServer(sla,0.25)
                rs.Transparency:FireServer(srl,0.25)
                rs.Transparency:FireServer(sll,0.25)
                rs.STWChair:FireServer(true)
                rs.Menacing:FireServer(true)
                poseanimation = Instance.new("Animation")
                poseanimation.AnimationId = assettest(4659036460)
                poseanim = plr.Character.Humanoid:LoadAnimation(poseanimation)
                poseanim:Play()
                wait(3)
                poseanim:AdjustSpeed(0)
                plr.Character.Humanoid.WalkSpeed = 0
                plr.Character.Humanoid.JumpPower = 0
            end
            if poseval.Value == 2 then
                rs.ParticleEvent:FireServer("noaura")
               rs.Menacing:FireServer(false)
               rs.STWChair:FireServer(false)
               rs.Transparency:FireServer(sh,1)
                rs.Transparency:FireServer(stor,1)
                rs.Transparency:FireServer(sra,1)
                rs.Transparency:FireServer(sla,1)
                rs.Transparency:FireServer(srl,1)
                rs.Transparency:FireServer(sll,1)
               poseanim:Stop()
               plr.Character.Humanoid.WalkSpeed = 16
                plr.Character.Humanoid.JumpPower = 50
            end
            wait(0.5)
            posevar = false
        end
    end
end)
c2:Connect(function()
    if chillaxnigga == true then return end
    if creamvar == true then return end
    if death == true then return end
    if bruhmode == true then return end
    if normal == true then return end
    if soh == true then return end
    if jirenvar == true then return end
    if angyvar == true then return end
    erase()
end)
kd:Connect(function(key)
    if key == "r" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        stsp()
    end
end)
kd:Connect(function(key)
    if key == "q" then
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        rtzgobrr()
    end
end)
kd:Connect(function(key)
    if key == "h" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        amogusslam()
    end
end)
kd:Connect(function(key)
    if key == "n" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        BRAZIL()
    end
end)
kd:Connect(function(key)
    if key == "j" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        lvval = lvval +1
        if lvval == 1 then
            lvvar = true
            d:FireServer(true)
            repeat
                wait()
                rs.VampireDash:FireServer(BrickColor.new("Neon orange"))
                hum.WalkSpeed = 50
                hum.JumpPower = 100
            until lvvar == false
        end
        if lvval == 2 then
            lvvar = false
            d:FireServer(false)
            wait(1)
            hum.WalkSpeed = 16
            hum.JumpPower = 50
        end
    end
end)
kd:Connect(function(key)
    if key == "t" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        dixan()
    end
end)
kd:Connect(function(key)
    if key == "z" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        standjump()
    end
end)
kd:Connect(function(key)
    if key == "y" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        unanchor()
    end
end)
kd:Connect(function(key)
    if key == "k" then
        if chillaxnigga == true then return end
        if smvar == false then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        hakival = hakival +1
        if hakival == 1 then
            hakivar1 = true
            d12s:FireServer(hum,la.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,ra.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            la.BrickColor.new("Really black")
            ra.BrickColor.new("Really black")
            repeat
                local hitbox1 = Instance.new("Part",chr)
                hitbox1.CFrame = ra.CFrame
                hitbox1.Name = "hitbox"
                hitbox1.Anchored = false
                hitbox1.CanCollide = false
                local weld1 = Instance.new("WeldConstraint",hitbox1)
                weld1.Part0 = hitbox1
                weld1.Part1 = ra
                hitbox1.Size = ra.Size*1
                hitbox1.Massless = true
                hitbox1.Transparency = 0
                hitbox1.BrickColor = BrickColor.new("Really black")
                local hitbox2 = Instance.new("Part",chr)
                hitbox2.CFrame = la.CFrame
                hitbox2.Name = "hitbox"
                hitbox2.Anchored = false
                hitbox2.CanCollide = false
                local weld2 = Instance.new("WeldConstraint",hitbox2)
                weld2.Part0 = hitbox2
                weld2.Part1 = la
                hitbox2.Size = la.Size*1
                hitbox2.Massless = true
                hitbox2.Transparency = 0
                hitbox2.BrickColor = BrickColor.new("Really black")
                wait(5)
            until hakivar1 == false
        end
        if hakival == 2 then
            hakivar1 = false
            hakivar2 = true
            d12s:FireServer(hum,la.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,ra.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,ll.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,rl.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            la.BrickColor.new("Really black")
            ra.BrickColor.new("Really black")
            ll.BrickColor.new("Really black")
            rl.BrickColor.new("Really black")
            repeat
                local hitbox1 = Instance.new("Part",chr)
                hitbox1.CFrame = ra.CFrame
                hitbox1.Name = "hitbox"
                hitbox1.Anchored = false
                hitbox1.CanCollide = false
                local weld1 = Instance.new("WeldConstraint",hitbox1)
                weld1.Part0 = hitbox1
                weld1.Part1 = ra
                hitbox1.Size = ra.Size*1
                hitbox1.Massless = true
                hitbox1.Transparency = 0
                hitbox1.BrickColor = BrickColor.new("Really black")
                local hitbox2 = Instance.new("Part",chr)
                hitbox2.CFrame = la.CFrame
                hitbox2.Name = "hitbox"
                hitbox2.Anchored = false
                hitbox2.CanCollide = false
                local weld2 = Instance.new("WeldConstraint",hitbox2)
                weld2.Part0 = hitbox2
                weld2.Part1 = la
                hitbox2.Size = la.Size*1
                hitbox2.Massless = true
                hitbox2.Transparency = 0
                hitbox2.BrickColor = BrickColor.new("Really black")
                local hitbox3 = Instance.new("Part",chr)
                hitbox3.CFrame = ll.CFrame
                hitbox3.Name = "hitbox"
                hitbox3.Anchored = false
                hitbox3.CanCollide = false
                local weld3 = Instance.new("WeldConstraint",hitbox3)
                weld3.Part0 = hitbox3
                weld3.Part1 = ll
                hitbox3.Size = ll.Size*1
                hitbox3.Massless = true
                hitbox3.Transparency = 0
                hitbox3.BrickColor = BrickColor.new("Really black")
                local hitbox4 = Instance.new("Part",chr)
                hitbox4.CFrame = rl.CFrame
                hitbox4.Name = "hitbox"
                hitbox4.Anchored = false
                hitbox4.CanCollide = false
                local weld4 = Instance.new("WeldConstraint",hitbox4)
                weld4.Part0 = hitbox4
                weld4.Part1 = rl
                hitbox4.Size = rl.Size*1
                hitbox4.Massless = true
                hitbox4.Transparency = 0
                hitbox4.BrickColor = BrickColor.new("Really black")
                wait(5)
            until hakivar2 == false
        end
        if hakival == 3 then
            hakivar2 = false
            hakivar3 = true
            d12s:FireServer(hum,la.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,ra.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,ll.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,rl.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,tor.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            la.BrickColor.new("Really black")
            ra.BrickColor.new("Really black")
            ll.BrickColor.new("Really black")
            rl.BrickColor.new("Really black")
            tor.BrickColor.new("Really black")
            repeat
                local hitbox1 = Instance.new("Part",chr)
                hitbox1.CFrame = ra.CFrame
                hitbox1.Name = "hitbox"
                hitbox1.Anchored = false
                hitbox1.CanCollide = false
                local weld1 = Instance.new("WeldConstraint",hitbox1)
                weld1.Part0 = hitbox1
                weld1.Part1 = ra
                hitbox1.Size = ra.Size*1
                hitbox1.Massless = true
                hitbox1.Transparency = 0
                hitbox1.BrickColor = BrickColor.new("Really black")
                local hitbox2 = Instance.new("Part",chr)
                hitbox2.CFrame = la.CFrame
                hitbox2.Name = "hitbox"
                hitbox2.Anchored = false
                hitbox2.CanCollide = false
                local weld2 = Instance.new("WeldConstraint",hitbox2)
                weld2.Part0 = hitbox2
                weld2.Part1 = la
                hitbox2.Size = la.Size*1
                hitbox2.Massless = true
                hitbox2.Transparency = 0
                hitbox2.BrickColor = BrickColor.new("Really black")
                local hitbox3 = Instance.new("Part",chr)
                hitbox3.CFrame = ll.CFrame
                hitbox3.Name = "hitbox"
                hitbox3.Anchored = false
                hitbox3.CanCollide = false
                local weld3 = Instance.new("WeldConstraint",hitbox3)
                weld3.Part0 = hitbox3
                weld3.Part1 = ll
                hitbox3.Size = ll.Size*1
                hitbox3.Massless = true
                hitbox3.Transparency = 0
                hitbox3.BrickColor = BrickColor.new("Really black")
                local hitbox4 = Instance.new("Part",chr)
                hitbox4.CFrame = rl.CFrame
                hitbox4.Name = "hitbox"
                hitbox4.Anchored = false
                hitbox4.CanCollide = false
                local weld4 = Instance.new("WeldConstraint",hitbox4)
                weld4.Part0 = hitbox4
                weld4.Part1 = rl
                hitbox4.Size = rl.Size*1
                hitbox4.Massless = true
                hitbox4.Transparency = 0
                hitbox4.BrickColor = BrickColor.new("Really black")
                local hitbox5 = Instance.new("Part",chr)
                hitbox5.CFrame = tor.CFrame
                hitbox5.Name = "hitbox"
                hitbox5.Anchored = false
                hitbox5.CanCollide = false
                local weld5 = Instance.new("WeldConstraint",hitbox5)
                weld5.Part0 = hitbox5
                weld5.Part1 = tor
                hitbox5.Size = tor.Size*1
                hitbox5.Massless = true
                hitbox5.Transparency = 0
                hitbox5.BrickColor = BrickColor.new("Really black")
                wait(5)
            until hakivar3 == false
        end
        if hakival == 4 then
            hakivar3 = false
            hakivar4 = true
            d12s:FireServer(hum,la.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,ra.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,ll.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,rl.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,tor.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            d12s:FireServer(hum,h.CFrame, 0, 0, Vector3.new(0, 0, 0), 0.01, "", 1, 50)
            la.BrickColor.new("Really black")
            ra.BrickColor.new("Really black")
            ll.BrickColor.new("Really black")
            rl.BrickColor.new("Really black")
            tor.BrickColor.new("Really black")
            h.BrickColor.new("Really black")
            repeat
                local hitbox1 = Instance.new("Part",chr)
                hitbox1.CFrame = ra.CFrame
                hitbox1.Name = "hitbox"
                hitbox1.Anchored = false
                hitbox1.CanCollide = false
                local weld1 = Instance.new("WeldConstraint",hitbox1)
                weld1.Part0 = hitbox1
                weld1.Part1 = ra
                hitbox1.Size = ra.Size*1
                hitbox1.Massless = true
                hitbox1.Transparency = 0
                hitbox1.BrickColor = BrickColor.new("Really black")
                local hitbox2 = Instance.new("Part",chr)
                hitbox2.CFrame = la.CFrame
                hitbox2.Name = "hitbox"
                hitbox2.Anchored = false
                hitbox2.CanCollide = false
                local weld2 = Instance.new("WeldConstraint",hitbox2)
                weld2.Part0 = hitbox2
                weld2.Part1 = la
                hitbox2.Size = la.Size*1
                hitbox2.Massless = true
                hitbox2.Transparency = 0
                hitbox2.BrickColor = BrickColor.new("Really black")
                local hitbox3 = Instance.new("Part",chr)
                hitbox3.CFrame = ll.CFrame
                hitbox3.Name = "hitbox"
                hitbox3.Anchored = false
                hitbox3.CanCollide = false
                local weld3 = Instance.new("WeldConstraint",hitbox3)
                weld3.Part0 = hitbox3
                weld3.Part1 = ll
                hitbox3.Size = ll.Size*1
                hitbox3.Massless = true
                hitbox3.Transparency = 0
                hitbox3.BrickColor = BrickColor.new("Really black")
                local hitbox4 = Instance.new("Part",chr)
                hitbox4.CFrame = rl.CFrame
                hitbox4.Name = "hitbox"
                hitbox4.Anchored = false
                hitbox4.CanCollide = false
                local weld4 = Instance.new("WeldConstraint",hitbox4)
                weld4.Part0 = hitbox4
                weld4.Part1 = rl
                hitbox4.Size = rl.Size*1
                hitbox4.Massless = true
                hitbox4.Transparency = 0
                hitbox4.BrickColor = BrickColor.new("Really black")
                local hitbox5 = Instance.new("Part",chr)
                hitbox5.CFrame = tor.CFrame
                hitbox5.Name = "hitbox"
                hitbox5.Anchored = false
                hitbox5.CanCollide = false
                local weld5 = Instance.new("WeldConstraint",hitbox5)
                weld5.Part0 = hitbox5
                weld5.Part1 = tor
                hitbox5.Size = tor.Size*1
                hitbox5.Massless = true
                hitbox5.Transparency = 0
                hitbox5.BrickColor = BrickColor.new("Really black")
                wait(5)
                local hitbox6 = Instance.new("Part",chr)
                hitbox6.CFrame = h.CFrame
                hitbox6.Name = "hitbox"
                hitbox6.Anchored = false
                hitbox6.CanCollide = false
                local weld6 = Instance.new("WeldConstraint",hitbox6)
                weld6.Part0 = hitbox6
                weld6.Part1 = h
                hitbox6.Size = h.Size*1
                hitbox6.Massless = true
                hitbox6.Transparency = 0
                hitbox6.BrickColor = BrickColor.new("Really black")
                wait(5)
            until hakivar4 == false
        end
        if hakival == 5 then
            hakivar4 = false
            hakival = 0
        end
    end
end)
kd:Connect(function(key)
    if key == "u" then
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        ezezanchor()
    end
end)
kd:Connect(function(key)
    if key == "g" then
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        su()
    end
end)
kd:Connect(function(key)
    if key == "x" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        KAMEHAMEHAAAA()
    end
end)
kd:Connect(function(key)
    if key == "v" then
        if chillaxnigga == true then return end
        if smvar == false then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if angyvar == true then return end
        if jirenvar == true then return end
        amogusimpostorvent()
    end
end)
kd:Connect(function(key)
    if key == "f" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        stwcombo()
    end
end)
ub:Connect(function(Input,IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.B then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        rs.Transparency:FireServer(sh,0.25)
        rs.Transparency:FireServer(stor,0.25)
        rs.Transparency:FireServer(sra,0.25)
        rs.Transparency:FireServer(sla,0.25)
        rs.Transparency:FireServer(srl,0.25)
        rs.Transparency:FireServer(sll,0.25)
        beamanimation = Instance.new("Animation")
        beamanimation.AnimationId = assettest(3538838087)
        beamanim = plr.Character.Humanoid:LoadAnimation(beamanimation)
        beamanim:Play()
        beamanim:AdjustSpeed(5)
        pjvar = true
        repeat
            wait()
            minigunprojectile()
        until pjvar == false
    end
end)
ue:Connect(function(Input,IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.B then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        pjvar = false
        rs.Transparency:FireServer(sh,1)
        rs.Transparency:FireServer(stor,1)
        rs.Transparency:FireServer(sra,1)
        rs.Transparency:FireServer(sla,1)
        rs.Transparency:FireServer(srl,1)
        rs.Transparency:FireServer(sll,1)
    end
end)
ub:Connect(function(Input,IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.C then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        ts:Create(cam, TweenInfo.new(camspeed), {FieldOfView = 900}):Play()
        hum.JumpPower = 70
        chargevar = true
        drillanim = Instance.new("Animation")
        drillanim.AnimationId = assettest(3445985341)
        dl = hum:LoadAnimation(drillanim)
        dl:Play()
        dl:AdjustSpeed(2)
        local Boost = Instance.new("BodyVelocity")
        Boost.Name = "VROOMVROOM"
        Boost.MaxForce = Vector3.new(100000, 1000000, 100000)
        Boost.P = math.huge
        Boost.Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 90
        Boost.Parent = plr.Character.Torso
        repeat
            chargedamage()
            Boost.Velocity = hrp.CFrame.lookVector * 80
            wait()
        until chargevar == false
    end
end)
ue:Connect(function(Input,IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.C then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        hum.JumpPower = 50
        ts:Create(cam, TweenInfo.new(camspeed), {FieldOfView = 70}):Play()
        dl:Stop()
        chargevar = false
        tor.VROOMVROOM:Destroy()
    end
end)
ub:Connect(function(Input,IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.E then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        barrage2 = true
        rs.Transparency:FireServer(sh,0.25)
        rs.Transparency:FireServer(stor,0.25)
        rs.Transparency:FireServer(sra,0.25)
        rs.Transparency:FireServer(sla,0.25)
        rs.Transparency:FireServer(srl,0.25)
        rs.Transparency:FireServer(sll,0.25)
        apanim = Instance.new("Animation")
        apanim.AnimationId = assettest(2876973676)
        ap = hum:LoadAnimation(apanim)
        ap:Play()
        if pok == false then
            pok = true
            barrage2 = true
            bdmg2()
            ba2anim = Instance.new("Animation")
            ba2anim.AnimationId = assettest(3445781532)
            ba2 = hum:LoadAnimation(ba2anim)
            ba2:Play()
            ba2:AdjustSpeed(5)
        elseif pok == true then
            pok = false
            barrage2 = true
            bdmg4()
            ba3anim = Instance.new("Animation")
            ba3anim.AnimationId = assettest(2763936707)
            ba3 = hum:LoadAnimation(ba3anim)
            ba3:Play()
            ba3:AdjustSpeed(5)
        end
    end
end)
ue:Connect(function(Input,IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.E then
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if jirenvar == true then return end
        if angyvar == true then return end
        barrage2 = false
        ap:Stop()
        rs.Transparency:FireServer(sh,1)
        rs.Transparency:FireServer(stor,1)
        rs.Transparency:FireServer(sra,1)
        rs.Transparency:FireServer(sla,1)
        rs.Transparency:FireServer(srl,1)
        rs.Transparency:FireServer(sll,1)
        ba2:Stop()
        ba3:Stop()
    end
end)

--jiren keybinds--
kd:Connect(function(key)
    if key == "u" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        jirenmodeval = jirenmodeval +1
        if jirenmodeval == 1 then
            jirenmode = true
            burstanimation = Instance.new("Animation")
            burstanimation.AnimationId = assettest(5242641804)
            burstanim = plr.Character.Humanoid:LoadAnimation(burstanimation)
            burstanim:Play()
            burstanim:AdjustSpeed(2)
            for i = 1,10 do
                rs.Yell:FireServer()
                rs.PlayerStrongPunch2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("Persimmon"))
                rs.PlayerStrongPunch2:FireServer(Vector3.new(2, -0.5, 2), Vector3.new(2, -0.5, 2), BrickColor.new("Persimmon"))
                rs.PlayerStrongPunch2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("Persimmon"))
                rs.PlayerStrongPunch2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("Persimmon"))
                for i,v in pairs(game.Workspace.Entities:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 30 then
                            rs.HamonSword:FireServer(v.Humanoid, 1e-320, math.huge, Vector3.new(-1e7, -1e7, 0))
                            rs.Damage12:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0, 0, 0), 0.01, "rbxassetid://1693499499", 1, 20)
                            rs.Damage3:FireServer(v.Humanoid, v.HumanoidRootPart.CFrame, 99, 10, Vector3.new(9e999,9e999,0), 0.01, "rbxassetid://1693499499", 1, 20)
                        end
                    end
                end
                wait()
            end
            rtz:FireServer(true)
            repeat
                rs.VampireDash:FireServer(BrickColor.new("Persimmon"))
                plr.Character.Humanoid.WalkSpeed = 50
                plr.Character.Humanoid.JumpPower = 100
                wait()
            until jirenmode == false
        end
        if jirenmodeval == 2 then
            rs.RTZ:FireServer(false)
            jirenmode = false
            jirenmodeval = 0
            wait(1)
            plr.Character.Humanoid.WalkSpeed = 16
            plr.Character.Humanoid.JumpPower = 50
        end
    end
end)
kd:Connect(function(key)
    if key == "r" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        strongpunch()
    end
end)
kd:Connect(function(key)
    if key == "t" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        projectilepunch()
    end
end)
kd:Connect(function(key)
    if key == "c" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        jirendash()
    end
end)
kd:Connect(function(key)
    if key == "y" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        auraburst()
    end
end)
kd:Connect(function(key)
    if key == "v" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        jirentp()
    end
end)
kd:Connect(function(key)
    if key == "z" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        jirenmousetp()
    end
end)
kd:Connect(function(key)
    if key == "b" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        screambuffed()
    end
end)
kd:Connect(function(key)
    if key == "g" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        glarebarrage()
    end
end)
kd:Connect(function(key)
    if key == "h" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        deathstare()
    end
end)
kd:Connect(function(key)
    if key == "f" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        beam()
    end
end)
kd:Connect(function(key)
    if key == "j" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        chadkick()
    end
end)
kd:Connect(function(key)
    if key == "q" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        if mouse.Target and mouse.Target.Parent then
            local Character = nil
            if mouse.Target.Parent:IsA("Model") and mouse.Target.Parent.Name == "Stand" then
                Character = mouse.Target.Parent.Parent
            elseif mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
                Character = mouse.Target.Parent
            end
            if Character then
                donut3(Character)
            end
        end
    end
end)
kd:Connect(function(key)
    if key == "p" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        if not posevar then
            posevar = true
            poseval.Value = poseval.Value + 1
            if poseval.Value == 3 then
               poseval.Value = 1 
            end
            if poseval.Value == 1 then
                rs.ParticleEvent:FireServer("aura")
                rs.Menacing:FireServer(true)
                poseanimation = Instance.new("Animation")
                poseanimation.AnimationId = assettest(6091889867)
                poseanim = plr.Character.Humanoid:LoadAnimation(poseanimation)
                poseanim:Play()
                wait(2)
                poseanim:AdjustSpeed(0)
                plr.Character.Humanoid.WalkSpeed = 0
                plr.Character.Humanoid.JumpPower = 0
            end
            if poseval.Value == 2 then
                rs.ParticleEvent:FireServer("noaura")
               rs.Menacing:FireServer(false)
               poseanim:Stop()
               plr.Character.Humanoid.WalkSpeed = 16
                plr.Character.Humanoid.JumpPower = 50
            end
            wait(0.5)
            posevar = false
        end
    end
end)
ub:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.E then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        barrage3 = true
        bdmg3()
        barrageanimation = Instance.new("Animation")
        barrageanimation.AnimationId = assettest(3445788051)
        barrageanim = plr.Character.Humanoid:LoadAnimation(barrageanimation)
        barrageanim:Play(0.1, 1, 2.5)
        barrageanim:AdjustSpeed(8)
    end
end)
ue:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if Input.KeyCode == Enum.KeyCode.E then
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == true then return end
        barrage3 = false
        barrageanim:Stop()
    end
end)

--angy keybinds--
kd:Connect(function(key)
    if key == "e" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        sickobarrage()
    end
end)
kd:Connect(function(key)
    if key == "r" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        sickomodepunch()
    end
end)
kd:Connect(function(key)
    if key == "t" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        if mouse.Target and mouse.Target.Parent then
            local Character = nil
            if mouse.Target.Parent:IsA("Model") and mouse.Target.Parent.Name == "Stand" then
                Character = mouse.Target.Parent.Parent
            elseif mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
                Character = mouse.Target.Parent
            end
            if Character then
                shootlasersoutofurasshitbox(Character)
            end
        end
    end
end)
kd:Connect(function(key)
    if key == "y" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        AAAAAA()
    end
end)
kd:Connect(function(key)
    if key == "u" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        chadkickv2()
    end
end)
kd:Connect(function(key)
    if key == "h" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        gudboybarrage()
    end
end)
kd:Connect(function(key)
    if key == "f" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        slapthatbitch()
    end
end)
c1:Connect(function()
    if chillaxnigga == true then return end
    if creamvar == true then return end
    if death == true then return end
    if bruhmode == true then return end
    if normal == true then return end
    if soh == true then return end
    if smvar == true then return end
    if angyvar == false then return end
    if jirenvar == true then return end
    whyamistilhere()
end)
kd:Connect(function(key)
    if key == "g" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        bonkhitbox()
    end
end)
kd:Connect(function(key)
    if key == "j" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        SLASH()
    end
end)
kd:Connect(function(key)
    if key == "v" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        susamongushacks()
    end
end)
kd:Connect(function(key)
    if key == "b" then
        if chillaxnigga == true then return end
        if creamvar == true then return end
        if death == true then return end
        if bruhmode == true then return end
        if normal == true then return end
        if soh == true then return end
        if smvar == true then return end
        if angyvar == false then return end
        if jirenvar == true then return end
        fullspiral()
    end
end)

--chillax keybinds--
kd:Connect(function(k)
    if chillaxnigga==false then return end
    if k=="e"then
        chillbarrage()
    elseif k=="r"then
        chillsmack()
    elseif k=="g"then
        chilldance()
    elseif k=="q"then
        if mouse.Target and mouse.Target.Parent then
            local Character = nil
            if mouse.Target.Parent:IsA("Model") and mouse.Target.Parent.Name == "Stand" then
                Character = mouse.Target.Parent.Parent
            elseif mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
                Character = mouse.Target.Parent
            end
            if Character then
                assertdominance(Character)
            end
        end
    elseif k=="t"then
        if mouse.Target and mouse.Target.Parent then
            local Character = nil
            if mouse.Target.Parent:IsA("Model") and mouse.Target.Parent.Name == "Stand" then
                Character = mouse.Target.Parent.Parent
            elseif mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
                Character = mouse.Target.Parent
            end
            if Character then
                trackingvolley(Character,10)
            end
        end
    end
end)
ku:Connect(function(k)
    if k=="e"then
        cbrg=false
    end
end)

loadstring("https://raw.githubusercontent.com/FieryPhotons/moremoves/main/moremovesplugin")()

--meme boy gui--
local MemeBoyOpenGui = Instance.new("TextButton")
local uic1 = Instance.new("UICorner")
local uig2 = Instance.new("UIGradient")
local MemeBoyMoveSetGui = Instance.new("ScreenGui")
local f1 = Instance.new("Frame")
local MemeBoyTitle = Instance.new("TextLabel")
local uig4 = Instance.new("UIGradient")
local ScrollXD = Instance.new("ScrollingFrame")
local normalmodekeybinds = Instance.new("TextLabel")
local m6 = Instance.new("TextLabel")
local m7 = Instance.new("TextLabel")
local m8 = Instance.new("TextLabel")
local m5 = Instance.new("TextLabel")
local m9 = Instance.new("TextLabel")
local m10 = Instance.new("TextLabel")
local m11 = Instance.new("TextLabel")
local m3 = Instance.new("TextLabel")
local m2 = Instance.new("TextLabel")
local m1 = Instance.new("TextLabel")
local m17 = Instance.new("TextLabel")
local m12 = Instance.new("TextLabel")
local m13 = Instance.new("TextLabel")
local m14 = Instance.new("TextLabel")
local m15 = Instance.new("TextLabel")
local m16 = Instance.new("TextLabel")
local m18 = Instance.new("TextLabel")
local m19 = Instance.new("TextLabel")
local m4 = Instance.new("TextLabel")
local creditstochadpeople = Instance.new("TextLabel")
local c1 = Instance.new("TextLabel")
local c2 = Instance.new("TextLabel")
local c3 = Instance.new("TextLabel")
local c4 = Instance.new("TextLabel")
local c6 = Instance.new("TextLabel")
local c5 = Instance.new("TextLabel")
local c7 = Instance.new("TextLabel")
local madebytheplantman = Instance.new("TextLabel")
local uig3 = Instance.new("UIGradient")
local standmodekeybinds = Instance.new("TextLabel")
local sm1 = Instance.new("TextLabel")
local sm2 = Instance.new("TextLabel")
local sm3 = Instance.new("TextLabel")
local sm4 = Instance.new("TextLabel")
local sm5 = Instance.new("TextLabel")
local sm6 = Instance.new("TextLabel")
local sm7 = Instance.new("TextLabel")
local sm8 = Instance.new("TextLabel")
local sm9 = Instance.new("TextLabel")
local sm10 = Instance.new("TextLabel")
local sm11 = Instance.new("TextLabel")
local sm17 = Instance.new("TextLabel")
local sm12 = Instance.new("TextLabel")
local sm14 = Instance.new("TextLabel")
local sm13 = Instance.new("TextLabel")
local sm15 = Instance.new("TextLabel")
local sm16 = Instance.new("TextLabel")
local uig1 = Instance.new("UIGradient")

MemeBoyGui.Name = "MemeBoyGui"
MemeBoyGui.Parent = game.CoreGui

MemeBoyOpenGui.Name = "MemeBoyOpenGui"
MemeBoyOpenGui.Parent = MemeBoyGui
MemeBoyOpenGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MemeBoyOpenGui.BackgroundTransparency = 0.300
MemeBoyOpenGui.Position = UDim2.new(0.968999982, 0, 0.461236268, 0)
MemeBoyOpenGui.Size = UDim2.new(0, 54, 0, 64)
MemeBoyOpenGui.Text = "<"
MemeBoyOpenGui.TextSize = 30.000

uic1.CornerRadius = UDim.new(0.200000003, 8)
uic1.Name = "uic1"
uic1.Parent = MemeBoyOpenGui

uig2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(92, 255, 16)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
uig2.Name = "uig2"
uig2.Parent = MemeBoyOpenGui

MemeBoyMoveSetGui.Name = "MemeBoyMoveSetGui"
MemeBoyMoveSetGui.Parent = MemeBoyGui
MemeBoyMoveSetGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

f1.Name = "f1"
f1.Parent = MemeBoyMoveSetGui
f1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
f1.BackgroundTransparency = 0.300
f1.Position = UDim2.new(0, 0, 15, 0)
f1.Size = UDim2.new(0, 335, 0, 609)
f1.Visible = false

MemeBoyTitle.Name = "Meme Boy Title"
MemeBoyTitle.Parent = f1
MemeBoyTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MemeBoyTitle.BackgroundTransparency = 0.300
MemeBoyTitle.Size = UDim2.new(0, 335, 0, 50)
MemeBoyTitle.Font = Enum.Font.SourceSans
MemeBoyTitle.Text = "Meme Boy"
MemeBoyTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
MemeBoyTitle.TextSize = 14.000

uig4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(92, 255, 16)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
uig4.Name = "uig4"
uig4.Parent = MemeBoyTitle

ScrollXD.Name = "ScrollXD"
ScrollXD.Parent = f1
ScrollXD.Active = true
ScrollXD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollXD.BackgroundTransparency = 1.000
ScrollXD.Position = UDim2.new(0.00899999775, 0, 0.0982702076, 0)
ScrollXD.Size = UDim2.new(0, 328, 0, 543)
ScrollXD.CanvasSize = UDim2.new(0, 0, 5, 0)

normalmodekeybinds.Name = "normal mode keybinds"
normalmodekeybinds.Parent = ScrollXD
normalmodekeybinds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
normalmodekeybinds.BackgroundTransparency = 1.000
normalmodekeybinds.Position = UDim2.new(0.00700000022, 0, 0.0949999988, 0)
normalmodekeybinds.Size = UDim2.new(0, 332, 0, 32)
normalmodekeybinds.Font = Enum.Font.SourceSans
normalmodekeybinds.Text = "Normal Mode"
normalmodekeybinds.TextColor3 = Color3.fromRGB(0, 0, 0)
normalmodekeybinds.TextSize = 20.000

m6.Name = "m6"
m6.Parent = normalmodekeybinds
m6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m6.BackgroundTransparency = 1.000
m6.Position = UDim2.new(0, 0, 6, 0)
m6.Size = UDim2.new(0, 173, 0, 39)
m6.Font = Enum.Font.SourceSans
m6.Text = "R - Smack"
m6.TextColor3 = Color3.fromRGB(0, 0, 0)
m6.TextSize = 20.000

m7.Name = "m7"
m7.Parent = normalmodekeybinds
m7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m7.BackgroundTransparency = 1.000
m7.Position = UDim2.new(0, 0, 7, 0)
m7.Size = UDim2.new(0, 173, 0, 39)
m7.Font = Enum.Font.SourceSans
m7.Text = "T - Gun"
m7.TextColor3 = Color3.fromRGB(0, 0, 0)
m7.TextSize = 20.000

m8.Name = "m8"
m8.Parent = normalmodekeybinds
m8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m8.BackgroundTransparency = 1.000
m8.Position = UDim2.new(0, 0, 8, 0)
m8.Size = UDim2.new(0, 173, 0, 39)
m8.Font = Enum.Font.SourceSans
m8.Text = "Y - UpperCut"
m8.TextColor3 = Color3.fromRGB(0, 0, 0)
m8.TextSize = 20.000

m5.Name = "m5"
m5.Parent = normalmodekeybinds
m5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m5.BackgroundTransparency = 1.000
m5.Position = UDim2.new(0, 0, 5, 0)
m5.Size = UDim2.new(0, 173, 0, 39)
m5.Font = Enum.Font.SourceSans
m5.Text = "E - Barrage"
m5.TextColor3 = Color3.fromRGB(0, 0, 0)
m5.TextSize = 20.000

m9.Name = "m9"
m9.Parent = normalmodekeybinds
m9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m9.BackgroundTransparency = 1.000
m9.Position = UDim2.new(0, 0, 9, 0)
m9.Size = UDim2.new(0, 173, 0, 39)
m9.Font = Enum.Font.SourceSans
m9.Text = "U - Kars Spin"
m9.TextColor3 = Color3.fromRGB(0, 0, 0)
m9.TextSize = 20.000

m10.Name = "m10"
m10.Parent = normalmodekeybinds
m10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m10.BackgroundTransparency = 1.000
m10.Position = UDim2.new(0, 0, 10, 0)
m10.Size = UDim2.new(0, 173, 0, 39)
m10.Font = Enum.Font.SourceSans
m10.Text = "P - Ascend To Heaven"
m10.TextColor3 = Color3.fromRGB(0, 0, 0)
m10.TextSize = 20.000

m11.Name = "m11"
m11.Parent = normalmodekeybinds
m11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m11.BackgroundTransparency = 1.000
m11.Position = UDim2.new(0, 0, 11, 0)
m11.Size = UDim2.new(0, 173, 0, 39)
m11.Font = Enum.Font.SourceSans
m11.Text = "F - TimeStop"
m11.TextColor3 = Color3.fromRGB(0, 0, 0)
m11.TextSize = 20.000

m3.Name = "m3"
m3.Parent = normalmodekeybinds
m3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m3.BackgroundTransparency = 1.000
m3.Position = UDim2.new(0, 0, 3, 0)
m3.Size = UDim2.new(0, 173, 0, 39)
m3.Font = Enum.Font.SourceSans
m3.Text = "2 - Bring All"
m3.TextColor3 = Color3.fromRGB(0, 0, 0)
m3.TextSize = 20.000

m2.Name = "m2"
m2.Parent = normalmodekeybinds
m2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m2.BackgroundTransparency = 1.000
m2.Position = UDim2.new(0, 0, 2, 0)
m2.Size = UDim2.new(0, 173, 0, 39)
m2.Font = Enum.Font.SourceSans
m2.Text = "1 - Heal Donut"
m2.TextColor3 = Color3.fromRGB(0, 0, 0)
m2.TextSize = 20.000

m1.Name = "m1"
m1.Parent = normalmodekeybinds
m1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m1.BackgroundTransparency = 1.000
m1.Position = UDim2.new(0, 0, 1, 0)
m1.Size = UDim2.new(0, 173, 0, 39)
m1.Font = Enum.Font.SourceSans
m1.Text = "Left Click - Jab"
m1.TextColor3 = Color3.fromRGB(0, 0, 0)
m1.TextSize = 20.000

m17.Name = "m17"
m17.Parent = normalmodekeybinds
m17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m17.BackgroundTransparency = 1.000
m17.Position = UDim2.new(0, 0, 17, 0)
m17.Size = UDim2.new(0, 173, 0, 39)
m17.Font = Enum.Font.SourceSans
m17.Text = "C - Car"
m17.TextColor3 = Color3.fromRGB(0, 0, 0)
m17.TextSize = 20.000

m12.Name = "m12"
m12.Parent = normalmodekeybinds
m12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m12.BackgroundTransparency = 1.000
m12.Position = UDim2.new(0, 0, 12, 0)
m12.Size = UDim2.new(0, 173, 0, 39)
m12.Font = Enum.Font.SourceSans
m12.Text = "G - Domain Expansion"
m12.TextColor3 = Color3.fromRGB(0, 0, 0)
m12.TextSize = 20.000

m13.Name = "m13"
m13.Parent = normalmodekeybinds
m13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m13.BackgroundTransparency = 1.000
m13.Position = UDim2.new(0, 0, 13, 0)
m13.Size = UDim2.new(0, 173, 0, 39)
m13.Font = Enum.Font.SourceSans
m13.Text = "H - Long Range Punch"
m13.TextColor3 = Color3.fromRGB(0, 0, 0)
m13.TextSize = 20.000

m14.Name = "m14"
m14.Parent = normalmodekeybinds
m14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m14.BackgroundTransparency = 1.000
m14.Position = UDim2.new(0, 0, 14, 0)
m14.Size = UDim2.new(0, 173, 0, 39)
m14.Font = Enum.Font.SourceSans
m14.Text = "J - Holdable TP"
m14.TextColor3 = Color3.fromRGB(0, 0, 0)
m14.TextSize = 20.000

m15.Name = "m15"
m15.Parent = normalmodekeybinds
m15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m15.BackgroundTransparency = 1.000
m15.Position = UDim2.new(0, 0, 15, 0)
m15.Size = UDim2.new(0, 173, 0, 39)
m15.Font = Enum.Font.SourceSans
m15.Text = "L - Scream"
m15.TextColor3 = Color3.fromRGB(0, 0, 0)
m15.TextSize = 20.000

m16.Name = "m16"
m16.Parent = normalmodekeybinds
m16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m16.BackgroundTransparency = 1.000
m16.Position = UDim2.new(0, 0, 16, 0)
m16.Size = UDim2.new(0, 173, 0, 39)
m16.Font = Enum.Font.SourceSans
m16.Text = "Z - Mouse TP"
m16.TextColor3 = Color3.fromRGB(0, 0, 0)
m16.TextSize = 20.000

m18.Name = "m18"
m18.Parent = normalmodekeybinds
m18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m18.BackgroundTransparency = 1.000
m18.Position = UDim2.new(0, 0, 18, 0)
m18.Size = UDim2.new(0, 173, 0, 39)
m18.Font = Enum.Font.SourceSans
m18.Text = "V - Normal TP"
m18.TextColor3 = Color3.fromRGB(0, 0, 0)
m18.TextSize = 20.000

m19.Name = "m19"
m19.Parent = normalmodekeybinds
m19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m19.BackgroundTransparency = 1.000
m19.Position = UDim2.new(0, 0, 19, 0)
m19.Size = UDim2.new(0, 173, 0, 39)
m19.Font = Enum.Font.SourceSans
m19.Text = "N - DragonFist"
m19.TextColor3 = Color3.fromRGB(0, 0, 0)
m19.TextSize = 20.000

m4.Name = "m4"
m4.Parent = normalmodekeybinds
m4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m4.BackgroundTransparency = 1.000
m4.Position = UDim2.new(0, 0, 4, 0)
m4.Size = UDim2.new(0, 173, 0, 39)
m4.Font = Enum.Font.SourceSans
m4.Text = "Q - Donut"
m4.TextColor3 = Color3.fromRGB(0, 0, 0)
m4.TextSize = 20.000

creditstochadpeople.Name = "credits to chad people"
creditstochadpeople.Parent = ScrollXD
creditstochadpeople.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
creditstochadpeople.BackgroundTransparency = 1.000
creditstochadpeople.Position = UDim2.new(0, 0, 0.00999999978, 0)
creditstochadpeople.Size = UDim2.new(0, 332, 0, 32)
creditstochadpeople.Font = Enum.Font.SourceSans
creditstochadpeople.Text = "Credits To"
creditstochadpeople.TextColor3 = Color3.fromRGB(0, 0, 0)
creditstochadpeople.TextSize = 20.000

c1.Name = "c1"
c1.Parent = creditstochadpeople
c1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c1.BackgroundTransparency = 1.000
c1.Position = UDim2.new(0, 0, 1, 0)
c1.Size = UDim2.new(0, 234, 0, 39)
c1.Font = Enum.Font.SourceSans
c1.Text = "sheesh#7033 - giga chad scripter"
c1.TextColor3 = Color3.fromRGB(0, 0, 0)
c1.TextSize = 20.000

c2.Name = "c2"
c2.Parent = creditstochadpeople
c2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c2.BackgroundTransparency = 1.000
c2.Position = UDim2.new(0, 0, 2, 0)
c2.Size = UDim2.new(0, 192, 0, 39)
c2.Font = Enum.Font.SourceSans
c2.Text = "kur_Dev#3557 - whitelister"
c2.TextColor3 = Color3.fromRGB(0, 0, 0)
c2.TextSize = 20.000

c3.Name = "c3"
c3.Parent = creditstochadpeople
c3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c3.BackgroundTransparency = 1.000
c3.Position = UDim2.new(0, 0, 3, 0)
c3.Size = UDim2.new(0, 217, 0, 39)
c3.Font = Enum.Font.SourceSans
c3.Text = "bollsman123#0001 - whitelister"
c3.TextColor3 = Color3.fromRGB(0, 0, 0)
c3.TextSize = 20.000

c4.Name = "c4"
c4.Parent = creditstochadpeople
c4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c4.BackgroundTransparency = 1.000
c4.Position = UDim2.new(0.0331325307, -13, 4, 0)
c4.Size = UDim2.new(0, 165, 0, 39)
c4.Font = Enum.Font.SourceSans
c4.Text = "fiery#6040 - whitelister"
c4.TextColor3 = Color3.fromRGB(0, 0, 0)
c4.TextSize = 20.000

c6.Name = "c6"
c6.Parent = creditstochadpeople
c6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c6.BackgroundTransparency = 1.000
c6.Position = UDim2.new(0, 0, 5, 0)
c6.Size = UDim2.new(0, 199, 0, 34)
c6.Font = Enum.Font.SourceSans
c6.Text = "no ping#4757 - bollsman alt"
c6.TextColor3 = Color3.fromRGB(0, 0, 0)
c6.TextSize = 20.000

c5.Name = "c5"
c5.Parent = creditstochadpeople
c5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c5.BackgroundTransparency = 1.000
c5.Position = UDim2.new(0, 0, 6, 0)
c5.Size = UDim2.new(0, 228, 0, 34)
c5.Font = Enum.Font.SourceSans
c5.Text = "Thickblock102#6969 - whitelister"
c5.TextColor3 = Color3.fromRGB(0, 0, 0)
c5.TextSize = 20.000

c7.Name = "c7"
c7.Parent = creditstochadpeople
c7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c7.BackgroundTransparency = 1.000
c7.Position = UDim2.new(0, 0, 7, 0)
c7.Size = UDim2.new(0, 199, 0, 34)
c7.Font = Enum.Font.SourceSans
c7.Text = "Beanzz#1405 - smort man"
c7.TextColor3 = Color3.fromRGB(0, 0, 0)
c7.TextSize = 20.000

madebytheplantman.Name = "made by the plant man"
madebytheplantman.Parent = ScrollXD
madebytheplantman.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
madebytheplantman.BackgroundTransparency = 1.000
madebytheplantman.Size = UDim2.new(0, 332, 0, 32)
madebytheplantman.Font = Enum.Font.SourceSans
madebytheplantman.Text = "Made By The Plant Man#8610"
madebytheplantman.TextColor3 = Color3.fromRGB(0, 0, 0)
madebytheplantman.TextSize = 20.000

uig3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(92, 255, 16)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
uig3.Name = "uig3"
uig3.Parent = ScrollXD

standmodekeybinds.Name = "stand mode keybinds"
standmodekeybinds.Parent = ScrollXD
standmodekeybinds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
standmodekeybinds.BackgroundTransparency = 1.000
standmodekeybinds.Position = UDim2.new(0.00700000022, 0, 0.305000007, 0)
standmodekeybinds.Size = UDim2.new(0, 332, 0, 32)
standmodekeybinds.Font = Enum.Font.SourceSans
standmodekeybinds.Text = "Stand Mode"
standmodekeybinds.TextColor3 = Color3.fromRGB(0, 0, 0)
standmodekeybinds.TextSize = 20.000

sm1.Name = "sm1"
sm1.Parent = standmodekeybinds
sm1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm1.BackgroundTransparency = 1.000
sm1.Position = UDim2.new(0, 0, 1, 0)
sm1.Size = UDim2.new(0, 173, 0, 39)
sm1.Font = Enum.Font.SourceSans
sm1.Text = "Left Click - Normal Punch"
sm1.TextColor3 = Color3.fromRGB(0, 0, 0)
sm1.TextSize = 20.000

sm2.Name = "sm2"
sm2.Parent = standmodekeybinds
sm2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm2.BackgroundTransparency = 1.000
sm2.Position = UDim2.new(0, 0, 2, 0)
sm2.Size = UDim2.new(0, 173, 0, 39)
sm2.Font = Enum.Font.SourceSans
sm2.Text = "Right Click - Erasure"
sm2.TextColor3 = Color3.fromRGB(0, 0, 0)
sm2.TextSize = 20.000

sm3.Name = "sm3"
sm3.Parent = standmodekeybinds
sm3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm3.BackgroundTransparency = 1.000
sm3.Position = UDim2.new(0, 0, 3, 0)
sm3.Size = UDim2.new(0, 173, 0, 39)
sm3.Font = Enum.Font.SourceSans
sm3.Text = "E - Barrage"
sm3.TextColor3 = Color3.fromRGB(0, 0, 0)
sm3.TextSize = 20.000

sm4.Name = "sm4"
sm4.Parent = standmodekeybinds
sm4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm4.BackgroundTransparency = 1.000
sm4.Position = UDim2.new(0, 0, 4, 0)
sm4.Size = UDim2.new(0, 173, 0, 39)
sm4.Font = Enum.Font.SourceSans
sm4.Text = "R - Strong Punch"
sm4.TextColor3 = Color3.fromRGB(0, 0, 0)
sm4.TextSize = 20.000

sm5.Name = "sm5"
sm5.Parent = standmodekeybinds
sm5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm5.BackgroundTransparency = 1.000
sm5.Position = UDim2.new(0, 0, 5, 0)
sm5.Size = UDim2.new(0, 173, 0, 39)
sm5.Font = Enum.Font.SourceSans
sm5.Text = "T - Dixan"
sm5.TextColor3 = Color3.fromRGB(0, 0, 0)
sm5.TextSize = 20.000

sm6.Name = "sm6"
sm6.Parent = standmodekeybinds
sm6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm6.BackgroundTransparency = 1.000
sm6.Position = UDim2.new(0, 0, 6, 0)
sm6.Size = UDim2.new(0, 173, 0, 39)
sm6.Font = Enum.Font.SourceSans
sm6.Text = "Y - Unanchor"
sm6.TextColor3 = Color3.fromRGB(0, 0, 0)
sm6.TextSize = 20.000

sm7.Name = "sm7"
sm7.Parent = standmodekeybinds
sm7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm7.BackgroundTransparency = 1.000
sm7.Position = UDim2.new(0, 0, 7, 0)
sm7.Size = UDim2.new(0, 173, 0, 39)
sm7.Font = Enum.Font.SourceSans
sm7.Text = "U - Anchor"
sm7.TextColor3 = Color3.fromRGB(0, 0, 0)
sm7.TextSize = 20.000

sm8.Name = "sm8"
sm8.Parent = standmodekeybinds
sm8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm8.BackgroundTransparency = 1.000
sm8.Position = UDim2.new(0, 0, 8, 0)
sm8.Size = UDim2.new(0, 173, 0, 39)
sm8.Font = Enum.Font.SourceSans
sm8.Text = "P - Chair Pose"
sm8.TextColor3 = Color3.fromRGB(0, 0, 0)
sm8.TextSize = 20.000

sm9.Name = "sm9"
sm9.Parent = standmodekeybinds
sm9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm9.BackgroundTransparency = 1.000
sm9.Position = UDim2.new(0, 0, 9, 0)
sm9.Size = UDim2.new(0, 173, 0, 39)
sm9.Font = Enum.Font.SourceSans
sm9.Text = "F - STW Combo"
sm9.TextColor3 = Color3.fromRGB(0, 0, 0)
sm9.TextSize = 20.000

sm10.Name = "sm10"
sm10.Parent = standmodekeybinds
sm10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm10.BackgroundTransparency = 1.000
sm10.Position = UDim2.new(0, 0, 10, 0)
sm10.Size = UDim2.new(0, 173, 0, 39)
sm10.Font = Enum.Font.SourceSans
sm10.Text = "J - Love Train"
sm10.TextColor3 = Color3.fromRGB(0, 0, 0)
sm10.TextSize = 20.000

sm11.Name = "sm11"
sm11.Parent = standmodekeybinds
sm11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm11.BackgroundTransparency = 1.000
sm11.Position = UDim2.new(0, 0, 11, 0)
sm11.Size = UDim2.new(0, 173, 0, 39)
sm11.Font = Enum.Font.SourceSans
sm11.Text = "K - Haki"
sm11.TextColor3 = Color3.fromRGB(0, 0, 0)
sm11.TextSize = 20.000

sm17.Name = "sm17"
sm17.Parent = standmodekeybinds
sm17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm17.BackgroundTransparency = 1.000
sm17.Position = UDim2.new(0, 0, 17, 0)
sm17.Size = UDim2.new(0, 173, 0, 39)
sm17.Font = Enum.Font.SourceSans
sm17.Text = "B - Buffed Em Splash"
sm17.TextColor3 = Color3.fromRGB(0, 0, 0)
sm17.TextSize = 20.000

sm12.Name = "sm12"
sm12.Parent = standmodekeybinds
sm12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm12.BackgroundTransparency = 1.000
sm12.Position = UDim2.new(0, 0, 12, 0)
sm12.Size = UDim2.new(0, 173, 0, 39)
sm12.Font = Enum.Font.SourceSans
sm12.Text = "N - I Will Send U To Brazil"
sm12.TextColor3 = Color3.fromRGB(0, 0, 0)
sm12.TextSize = 20.000

sm14.Name = "sm14"
sm14.Parent = standmodekeybinds
sm14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm14.BackgroundTransparency = 1.000
sm14.Position = UDim2.new(0, 0, 14, 0)
sm14.Size = UDim2.new(0, 173, 0, 39)
sm14.Font = Enum.Font.SourceSans
sm14.Text = "X - Kamehameha"
sm14.TextColor3 = Color3.fromRGB(0, 0, 0)
sm14.TextSize = 20.000

sm13.Name = "sm13"
sm13.Parent = standmodekeybinds
sm13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm13.BackgroundTransparency = 1.000
sm13.Position = UDim2.new(0, 0, 13, 0)
sm13.Size = UDim2.new(0, 173, 0, 39)
sm13.Font = Enum.Font.SourceSans
sm13.Text = "Z - Stand Jump"
sm13.TextColor3 = Color3.fromRGB(0, 0, 0)
sm13.TextSize = 20.000

sm15.Name = "sm15"
sm15.Parent = standmodekeybinds
sm15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm15.BackgroundTransparency = 1.000
sm15.Position = UDim2.new(0, 0, 15, 0)
sm15.Size = UDim2.new(0, 173, 0, 39)
sm15.Font = Enum.Font.SourceSans
sm15.Text = "C - Become Drill"
sm15.TextColor3 = Color3.fromRGB(0, 0, 0)
sm15.TextSize = 20.000

sm16.Name = "sm16"
sm16.Parent = standmodekeybinds
sm16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sm16.BackgroundTransparency = 1.000
sm16.Position = UDim2.new(0, 0, 16, 0)
sm16.Size = UDim2.new(0, 173, 0, 39)
sm16.Font = Enum.Font.SourceSans
sm16.Text = "V - Vent"
sm16.TextColor3 = Color3.fromRGB(0, 0, 0)
sm16.TextSize = 20.000

uig1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(92, 255, 16)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
uig1.Name = "uig1"
uig1.Parent = f1
MemeBoyOpenGui.MouseButton1Down:Connect(function()
    if MemeBoyGuiVar == false then
        f1.Position = UDim2.new(0.00857752189, 0, 0.0326143466, 0)
	    f1.Visible = true
        MemeBoyOpenGui.Text = ">"
        MemeBoyGuiVar = true
    elseif MemeBoyGuiVar == true then
        f1.Position = UDim2.new(0, 0, 15, 0)
        f1.Visible = false
        MemeBoyOpenGui.Text = "<"
        MemeBoyGuiVar = false
    end
end)

--meme boy loading finished
print("Meme Boy Loaded")