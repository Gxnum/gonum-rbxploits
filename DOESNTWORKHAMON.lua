-- Decompiled with the Synapse X Luau decompiler.

local l__ReplicatedStorage__1 = game:GetService("ReplicatedStorage");
local l__LocalPlayer__2 = game:GetService("Players").LocalPlayer;
while true do
	task.wait(0.03);
	if l__LocalPlayer__2.Character and l__LocalPlayer__2.Character.Humanoid then
		break;
	end;
end;
local l__Character__3 = l__LocalPlayer__2.Character;
local l__Humanoid__4 = l__Character__3.Humanoid;
mouse = l__LocalPlayer__2:GetMouse();
cam = workspace.CurrentCamera;
local l__HamonBar__5 = l__LocalPlayer__2.PlayerGui.HamonBar;
l__HamonBar__5.Enabled = true;
l__ReplicatedStorage__1.Hamon:FireServer();
local l__Energy__1 = l__HamonBar__5.Bar.Energy;
local u2 = 0;
coroutine.wrap(function()
	while true do
		task.wait(0.03);
		l__Energy__1:TweenSizeAndPosition(UDim2.new(1, 0, -u2 / 20, 0), UDim2.new(0, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true);	
	end;
end)();
local l__Torso__6 = l__Character__3.Torso;
local l__Stand__7 = l__Character__3:WaitForChild("Stand");
local v8 = l__Humanoid__4:LoadAnimation(l__Stand__7.StandJump);
local u3 = false;
local u4 = false;
local u5 = l__Humanoid__4:LoadAnimation(l__Stand__7.Block);
local l__Block__6 = l__ReplicatedStorage__1.Block;
local l__Guard__7 = l__Torso__6.Guard;
function block()
	if u3 == true then
		return;
	end;
	if u4 == true then
		return;
	end;
	u4 = true;
	local u8 = true;
	local v9 = mouse.KeyUp:connect(function(p1)
		if p1 == "x" then
			u8 = false;
		end;
	end);
	u5:Play(0.1, 1, 1);
	l__Block__6:FireServer(true);
	u3 = true;
	l__Guard__7:Play();
	l__Humanoid__4.JumpPower = 0;
	while true do
		task.wait(0.03);
		if u8 ~= false then

		else
			break;
		end;	
	end;
	l__Block__6:FireServer(false);
	u5:Stop(0.1);
	l__Humanoid__4.JumpPower = 50;
	u4 = false;
	task.wait(3);
	u3 = false;
end;
local l__Swing__9 = l__Torso__6.Swing;
local u10 = false;
local u11 = l__Humanoid__4:LoadAnimation(l__Stand__7.RightPunch);
local l__Trail__12 = l__ReplicatedStorage__1.Trail;
local u13 = l__Character__3["Right Arm"];
local l__HumanoidRootPart__14 = l__Character__3.HumanoidRootPart;
local u15 = l__Humanoid__4:LoadAnimation(l__Stand__7.LeftPunch);
local u16 = l__Character__3["Left Arm"];
function punch()
	if u4 == true then
		return;
	end;
	u4 = true;
	l__Swing__9:Play();
	if u10 == false then
		u10 = true;
		u11:Play(0.1, 1, 1);
		l__Trail__12:FireServer(l__Stand__7.StandRarm.Trail, true);
		task.wait(0.2);
		coroutine.resume(coroutine.create(function()
			local v10 = 1 - 1;
			while true do
				task.wait(0.03);
				hito(u13, u13.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 8 + u2 / 4, 0.5, 0.25, l__HumanoidRootPart__14.CFrame.lookVector * 10, "rbxassetid://3370684035", 0.035, Color3.new(255, 255, 0), "rbxassetid://260430079", math.random(9, 11) / 10, 2);
				if 0 <= 1 then
					if v10 < 5 then

					else
						break;
					end;
				elseif 5 < v10 then

				else
					break;
				end;
				v10 = v10 + 1;			
			end;
		end));
	elseif u10 == true then
		u10 = false;
		u15:Play(0.1, 1, 1);
		l__Trail__12:FireServer(l__Stand__7.StandLarm.Trail, true);
		task.wait(0.2);
		coroutine.resume(coroutine.create(function()
			local v11 = 1 - 1;
			while true do
				task.wait(0.03);
				hito(u16, u16.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 8 + u2 / 4, 0.5, 0.25, l__HumanoidRootPart__14.CFrame.lookVector * 10, "rbxassetid://3370684035", 0.035, Color3.new(255, 255, 0), "rbxassetid://260430079", math.random(9, 11) / 10, 2);
				if 0 <= 1 then
					if v11 < 5 then

					else
						break;
					end;
				elseif 5 < v11 then

				else
					break;
				end;
				v11 = v11 + 1;			
			end;
		end));
	end;
	task.wait(0.3);
	u4 = false;
	l__Trail__12:FireServer(l__Stand__7.StandRarm.Trail, false);
	l__Trail__12:FireServer(l__Stand__7.StandLarm.Trail, false);
end;
local u17 = false;
local l__HumanoidRootPart__18 = l__Character__3.HumanoidRootPart;
local u19 = l__Humanoid__4:LoadAnimation(l__Stand__7.Barrage);
local l__Rush__20 = l__Torso__6.Rush;
local u21 = 0;
local l__Disabled__22 = l__Character__3:WaitForChild("Disabled");
function barrage()
	if u4 == true then
		return;
	end;
	if u17 == true then
		return;
	end;
	u4 = true;
	u17 = true;
	local u23 = true;
	local v12 = mouse.KeyUp:connect(function(p2)
		if p2 == "e" then
			u23 = false;
		end;
	end);
	l__Trail__12:FireServer(l__Stand__7.StandRarm.Trail, true);
	l__Trail__12:FireServer(l__Stand__7.StandLarm.Trail, true);
	l__Trail__12:FireServer(l__HumanoidRootPart__18.HamonLight, true);
	u19:Play(0.1, 1, 1.5);
	game.ReplicatedStorage.SuperArmor:FireServer(true);
	l__Rush__20:Play();
	l__Humanoid__4.JumpPower = 0;
	while true do
		u21 = u21 + 0.5;
		hito2(u13, u13.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 4, 7 + u2 / 10, 0.05, 0.25, l__HumanoidRootPart__18.CFrame.lookVector * 2.5, "rbxassetid://241837157", 0.5, Color3.fromRGB(255, 255, 0), "rbxassetid://542443306", math.random(9, 11) / 10, math.random(9, 11) / 35);
		hito2(u16, u16.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 4, 7 + u2 / 10, 0.05, 0.25, l__HumanoidRootPart__18.CFrame.lookVector * 2.5, "rbxassetid://241837157", 0.5, Color3.fromRGB(255, 255, 0), "rbxassetid://542443306", math.random(9, 11) / 10, math.random(9, 11) / 35);
		task.wait(0.05);
		if u23 ~= false then

		else
			break;
		end;
		if l__Disabled__22.Value ~= true then

		else
			break;
		end;
		if not (40 <= u21) then

		else
			break;
		end;	
	end;
	game.ReplicatedStorage.SuperArmor:FireServer(false);
	u21 = 0;
	l__Rush__20:Stop();
	l__Humanoid__4.JumpPower = 50;
	u19:Stop(0.1);
	l__Trail__12:FireServer(l__Stand__7.StandRarm.Trail, false);
	l__Trail__12:FireServer(l__Stand__7.StandLarm.Trail, false);
	l__Trail__12:FireServer(l__HumanoidRootPart__18.HamonLight, false);
	u4 = false;
	task.wait(5);
	u17 = false;
end;
local u24 = false;
local l__Transparency__25 = l__ReplicatedStorage__1.Transparency;
local u26 = l__Humanoid__4:LoadAnimation(l__Stand__7.SendoChop);
function sendochop()
	if u4 == true then
		return;
	end;
	if u24 == true then
		return;
	end;
	u4 = true;
	u24 = true;
	l__Transparency__25:FireServer(l__Stand__7.StandRarm, 0.5);
	u26:Play(0.1, 1, 1);
	l__Swing__9:Play();
	task.wait(0.5);
	coroutine.resume(coroutine.create(function()
		local v13 = 1 - 1;
		while true do
			task.wait(0.03);
			hito(u13, u13.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 35 + u2, 0.5, 0.25, l__HumanoidRootPart__14.CFrame.lookVector * 20, "rbxassetid://3370684035", 0.035, Color3.new(150, 150, 0), "rbxassetid://542443306", math.random(9, 11) / 11, math.random(9, 11) / 2);
			if 0 <= 1 then
				if v13 < 18 then

				else
					break;
				end;
			elseif 18 < v13 then

			else
				break;
			end;
			v13 = v13 + 1;		
		end;
	end));
	task.wait(0.65);
	l__Transparency__25:FireServer(l__Stand__7.StandRarm, 1);
	u4 = false;
	task.wait(7.5);
	u24 = false;
end;
local u27 = false;
local u28 = l__Humanoid__4:LoadAnimation(l__Stand__7.ScarletOverdrive);
local l__Hamon__29 = l__Torso__6.Hamon;
local l__PlayerStrongPunch__30 = l__ReplicatedStorage__1.PlayerStrongPunch;
function scarletoverdrive()
	if u4 == true then
		return;
	end;
	if u27 == true then
		return;
	end;
	u4 = true;
	u27 = true;
	l__Trail__12:FireServer(l__Stand__7.StandLarm.RedTrail, true);
	l__Transparency__25:FireServer(l__Stand__7.StandLarm, 0.5);
	l__Trail__12:FireServer(l__Stand__7.StandLarm.Energy, true);
	u28:Play(0.1, 1, 1);
	l__Hamon__29:Play();
	task.wait(0.5);
	l__Swing__9:Play();
	l__PlayerStrongPunch__30:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Bright red"));
	coroutine.resume(coroutine.create(function()
		local v14 = 1 - 1;
		while true do
			task.wait(0.03);
			hito4(u16, u16.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 40 + u2, 0.75, 0.25, l__HumanoidRootPart__14.CFrame.lookVector * 60, 0.085, "rbxassetid://541909983", math.random(9, 11) / 7, math.random(9, 11) / 2);
			if 0 <= 1 then
				if v14 < 15 then

				else
					break;
				end;
			elseif 15 < v14 then

			else
				break;
			end;
			v14 = v14 + 1;		
		end;
	end));
	task.wait(0.65);
	l__Trail__12:FireServer(l__Stand__7.StandLarm.RedTrail, false);
	l__Transparency__25:FireServer(l__Stand__7.StandLarm, 1);
	l__Trail__12:FireServer(l__Stand__7.StandLarm.Energy, false);
	u4 = false;
	task.wait(7.5);
	u27 = false;
end;
local u31 = false;
local u32 = l__Humanoid__4:LoadAnimation(l__Stand__7.ZoomPunch);
function zoompunch()
	if u4 == true then
		return;
	end;
	if u31 == true then
		return;
	end;
	u4 = true;
	u31 = true;
	u32:Play(0.1, 1, 1);
	l__Hamon__29:Play();
	task.wait(0.5);
	l__Transparency__25:FireServer(l__Stand__7.ZoomArm, 0);
	l__Swing__9:Play();
	coroutine.resume(coroutine.create(function()
		local v15 = 1 - 1;
		while true do
			task.wait(0.03);
			hito(l__Stand__7.ZoomPunchHitbox1, l__Stand__7.ZoomPunchHitbox1.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 6, 30 + u2, 1, 0.1, l__HumanoidRootPart__18.CFrame.lookVector * -50, "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 255, 0), "rbxassetid://565207203", math.random(9, 11) / 7, math.random(9, 11) / 5);
			hito(l__Stand__7.ZoomPunchHitbox2, l__Stand__7.ZoomPunchHitbox2.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 6, 30 + u2, 1, 0.1, l__HumanoidRootPart__18.CFrame.lookVector * -50, "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 255, 0), "rbxassetid://565207203", math.random(9, 11) / 7, math.random(9, 11) / 5);
			hito(l__Stand__7.ZoomPunchHitbox3, l__Stand__7.ZoomPunchHitbox3.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 6, 30 + u2, 1, 0.1, l__HumanoidRootPart__18.CFrame.lookVector * -50, "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 255, 0), "rbxassetid://565207203", math.random(9, 11) / 7, math.random(9, 11) / 5);
			if 0 <= 1 then
				if v15 < 15 then

				else
					break;
				end;
			elseif 15 < v15 then

			else
				break;
			end;
			v15 = v15 + 1;		
		end;
	end));
	task.wait(0.65);
	l__Transparency__25:FireServer(l__Stand__7.ZoomArm, 1);
	u4 = false;
	task.wait(7.5);
	u31 = false;
end;
local u33 = false;
local u34 = true;
local l__Charge__35 = l__Torso__6.Charge;
local l__Jump2__36 = l__ReplicatedStorage__1.Jump2;
function breath()
	if u4 == true then
		return;
	end;
	if u33 == true then
		return;
	end;
	u33 = true;
	u34 = false;
	u4 = true;
	local u37 = true;
	local v16 = mouse.KeyUp:connect(function(p3)
		if p3 == "h" then
			u37 = false;
		end;
	end);
	l__Charge__35:Play();
	game.ReplicatedStorage.SuperArmor:FireServer(true);
	task.wait(1.5);
	l__Trail__12:FireServer(l__HumanoidRootPart__18.HamonLight, true);
	game.ReplicatedStorage.HamonOutline:FireServer(true);
	l__Jump2__36:FireServer(BrickColor.new("New Yeller"));
	l__Hamon__29:Play();
	while true do
		task.wait(0.1);
		while true do
			task.wait(0.03);
			if game.Lighting.TS.Value ~= false then

			else
				break;
			end;		
		end;
		u2 = u2 + 0.75;
		if u37 ~= false then

		else
			break;
		end;
		if not (20 <= u2) then

		else
			break;
		end;	
	end;
	l__Hamon__29:Stop();
	l__Charge__35:Stop();
	game.ReplicatedStorage.SuperArmor:FireServer(false);
	l__Trail__12:FireServer(l__HumanoidRootPart__18.HamonLight, false);
	u34 = true;
	coroutine.resume(coroutine.create(function()
		while true do
			task.wait(0.1);
			u2 = u2 - 0.05;
			if l__Stand__7.StandLarm.Energy.Enabled == true then
				if u2 <= 15 then

				end;
			end;
			if not (u2 <= 0) then

			else
				break;
			end;
			if u34 ~= false then

			else
				break;
			end;		
		end;
		game.ReplicatedStorage.HamonOutline:FireServer(false);
	end));
	u4 = false;
	task.wait(5);
	u33 = false;
end;
movementcooldown = false;
local l__StandJumpSFX__38 = l__Torso__6.StandJumpSFX;
function movement()
	if u4 == true then
		return;
	end;
	if movementcooldown == true then
		return;
	end;
	u4 = true;
	movementcooldown = true;
	l__StandJumpSFX__38:Play();
	l__Jump2__36:FireServer(BrickColor.new("New Yeller"));
	local v17 = Instance.new("BodyPosition");
	v17.Parent = l__HumanoidRootPart__14;
	v17.maxForce = Vector3.new(100000, 100000, 100000);
	if u2 <= 10 then
		v17.Position = l__Torso__6.CFrame * CFrame.new(0, 40, -35).p;
		task.wait(0.4);
		v17:Remove();
		u4 = false;
		task.wait(7.6);
		movementcooldown = false;
		return;
	end;
	v17.Position = l__Torso__6.CFrame * CFrame.new(0, 60, -70).p;
	task.wait(0.8);
	v17:Remove();
	u4 = false;
	task.wait(7.6);
	movementcooldown = false;
end;
local u39 = false;
local u40 = l__Humanoid__4:LoadAnimation(l__Stand__7.HamonSword);
local l__SwordSwing__41 = l__Torso__6.SwordSwing;
function hamonsword()
	if u4 == true then
		return;
	end;
	if u39 == true then
		return;
	end;
	u4 = true;
	u39 = true;
	u40:Play(0.1, 1, 1);
	local v18, v19, v20 = pairs(l__Stand__7.LuckandPluck:GetChildren());
	while true do
		local v21, v22 = v18(v19, v20);
		if v21 then

		else
			break;
		end;
		v20 = v21;
		if v22 ~= l__Stand__7.LuckandPluck.HamonBlade then
			l__Transparency__25:FireServer(v22, 0);
		end;	
	end;
	l__Transparency__25:FireServer(l__Stand__7.LuckandPluck.HamonBlade, 0.5);
	l__Trail__12:FireServer(l__Stand__7.LuckandPluck.Blade.Trail, true);
	task.wait(0.6);
	l__SwordSwing__41:Play();
	coroutine.resume(coroutine.create(function()
		local v23 = 1 - 1;
		while true do
			task.wait(0.03);
			hito3(l__Stand__7.LuckandPluck.Blade, 5.55, 35 + u2, 1, 0.25, l__HumanoidRootPart__18.CFrame.lookVector * 80);
			if 0 <= 1 then
				if v23 < 15 then

				else
					break;
				end;
			elseif 15 < v23 then

			else
				break;
			end;
			v23 = v23 + 1;		
		end;
	end));
	task.wait(0.6);
	u4 = false;
	local v24, v25, v26 = pairs(l__Stand__7.LuckandPluck:GetChildren());
	while true do
		local v27, v28 = v24(v25, v26);
		if v27 then

		else
			break;
		end;
		v26 = v27;
		l__Transparency__25:FireServer(v28, 1);	
	end;
	l__Trail__12:FireServer(l__Stand__7.LuckandPluck.Blade.Trail, false);
	task.wait(15);
	u39 = false;
end;
dodgecooldown = false;
local u42 = l__Humanoid__4:LoadAnimation(l__Stand__7.Roll);
local l__Dodge__43 = l__Torso__6.Dodge;
local l__Dodge__44 = l__ReplicatedStorage__1.Dodge;
function dodge()
	if u4 == true then
		return;
	end;
	if dodgecooldown == true then
		return;
	end;
	u4 = true;
	dodgecooldown = true;
	u42:Play(0.1, 1, 1);
	l__Dodge__43:Play();
	l__Dodge__44:FireServer();
	local v29 = Instance.new("BodyVelocity");
	v29.MaxForce = Vector3.new(100000, 0, 100000);
	v29.P = math.huge;
	v29.Velocity = l__HumanoidRootPart__14.CFrame.lookVector * 50;
	v29.Parent = l__Character__3.HumanoidRootPart;
	game.Debris:AddItem(v29, 0.25);
	task.wait(0.4);
	u4 = false;
	task.wait(1);
	dodgecooldown = false;
end;
local u45 = false;
local l__Taunt__46 = l__ReplicatedStorage__1.Taunt;
local l__Head__47 = l__Character__3.Head;
function taunt()
	if u45 == true then
		return;
	end;
	u45 = true;
	if math.random(1) == 1 then
		l__Taunt__46:FireServer(l__Head__47, "rbxassetid://3581207647", 2, 6.95, 0);
	end;
end;
local u48 = false;
local u49 = l__Humanoid__4:LoadAnimation(l__Stand__7.Pose1);
local u50 = l__Humanoid__4:LoadAnimation(l__Stand__7.Pose2);
local l__Menacing__51 = l__ReplicatedStorage__1.Menacing;
function posefunc()
	if u4 == false then
		if u48 == false then
			if u48 == false then
				u4 = true;
				u49:Play(0.3, 1, 1);
				spawn(function()
					task.wait(1.5);
					u49:Stop();
					u50:Play(0.1, 1, 1);
				end);
				l__Humanoid__4.WalkSpeed = 0;
				l__Humanoid__4.JumpPower = 0;
				task.wait(1.5);
				u48 = true;
				l__Menacing__51:FireServer(true);
				return;
			end;
		elseif u48 == true then
			u49:Stop(0.3);
			u50:Stop(0.3);
			if l__Disabled__22.Value == false then
				l__Humanoid__4.WalkSpeed = 16;
				l__Humanoid__4.JumpPower = 50;
			elseif l__Disabled__22.Value == true then
				l__Humanoid__4.WalkSpeed = 4;
				l__Humanoid__4.JumpPower = 10;
			elseif l__Character__3.TE.Value == true then
				l__Humanoid__4.WalkSpeed = 26;
				l__Humanoid__4.JumpPower = 50;
			end;
			u4 = false;
			u48 = false;
			l__Menacing__51:FireServer(false);
		end;
	elseif u48 == true then
		u49:Stop(0.3);
		u50:Stop(0.3);
		if l__Disabled__22.Value == false then
			l__Humanoid__4.WalkSpeed = 16;
			l__Humanoid__4.JumpPower = 50;
		elseif l__Disabled__22.Value == true then
			l__Humanoid__4.WalkSpeed = 4;
			l__Humanoid__4.JumpPower = 10;
		elseif l__Character__3.TE.Value == true then
			l__Humanoid__4.WalkSpeed = 26;
			l__Humanoid__4.JumpPower = 50;
		end;
		u4 = false;
		u48 = false;
		l__Menacing__51:FireServer(false);
	end;
end;
mouse.Button1Down:connect(function()
	if l__Torso__6.Anchored == true then
		return;
	end;
	if l__Disabled__22.Value == true then
		return;
	end;
	punch();
end);
mouse.KeyDown:connect(function(p4)
	if l__Torso__6.Anchored == true then
		return;
	end;
	if l__Disabled__22.Value == true then
		return;
	end;
	if p4 == "q" then
		sendochop();
	end;
	if p4 == "e" then
		barrage();
	end;
	if p4 == "r" then
		scarletoverdrive();
	end;
	if p4 == "t" then
		zoompunch();
	end;
	if p4 == "h" then
		breath();
	end;
	if p4 == "f" then
		hamonsword();
	end;
	if p4 == "p" then
		posefunc();
	end;
	if p4 == "x" then
		block();
	end;
	if p4 == "z" then
		movement();
	end;
	if p4 == "c" then
		dodge();
	end;
	if p4 == "n" then
		taunt();
	end;
end);
local l__HamonDamage__52 = l__ReplicatedStorage__1.HamonDamage;
function hito(p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17)
	local v30, v31, v32 = pairs(workspace.Entities:GetChildren());
	while true do
		local v33, v34 = v30(v31, v32);
		if v33 then

		else
			break;
		end;
		v32 = v33;
		if p5.Anchored == true then
			return;
		end;
		if v34:FindFirstChild("Humanoid") then
			if v34:FindFirstChild("HumanoidRootPart") then
				if v34 ~= l__Character__3 then
					if (v34:FindFirstChild("HumanoidRootPart").Position - p5.Position).magnitude < p7 then
						if v34:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p5.Anchored then
								return;
							end;
							local l__HumanoidRootPart__35 = v34:FindFirstChild("HumanoidRootPart");
							l__HamonDamage__52:FireServer(v34:FindFirstChild("Humanoid"), p6, p8, p10, p11, p12, p13, p14, p15, p16, p17);
							local v36 = Instance.new("StringValue");
							v36.Name = "alabo";
							v36.Parent = l__HumanoidRootPart__35;
							delay(p9, function()
								v36:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__SunlightYellow__53 = l__ReplicatedStorage__1.SunlightYellow;
function hito2(p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30)
	local v37, v38, v39 = pairs(workspace.Entities:GetChildren());
	while true do
		local v40, v41 = v37(v38, v39);
		if v40 then

		else
			break;
		end;
		v39 = v40;
		if p18.Anchored == true then
			return;
		end;
		if v41:FindFirstChild("Humanoid") then
			if v41:FindFirstChild("HumanoidRootPart") then
				if v41 ~= l__Character__3 then
					if (v41:FindFirstChild("HumanoidRootPart").Position - p18.Position).magnitude < p20 then
						if v41:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p18.Anchored then
								return;
							end;
							local l__HumanoidRootPart__42 = v41:FindFirstChild("HumanoidRootPart");
							l__SunlightYellow__53:FireServer(v41:FindFirstChild("Humanoid"), p18.Name, p21, p23, p24, p25, p26, p27, p28, p29, p30);
							local v43 = Instance.new("StringValue");
							v43.Name = "alabo";
							v43.Parent = l__HumanoidRootPart__42;
							delay(p22, function()
								v43:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__HamonSword__54 = l__ReplicatedStorage__1.HamonSword;
local l__Knock__55 = l__ReplicatedStorage__1.Knock;
function hito3(p31, p32, p33, p34, p35, p36, p37)
	local v44, v45, v46 = pairs(workspace.Entities:GetChildren());
	while true do
		local v47, v48 = v44(v45, v46);
		if v47 then

		else
			break;
		end;
		v46 = v47;
		if p31.Anchored == true then
			return;
		end;
		if v48:FindFirstChild("Humanoid") then
			if v48:FindFirstChild("HumanoidRootPart") then
				if v48 ~= l__Character__3 then
					if (v48:FindFirstChild("HumanoidRootPart").Position - p31.Position).magnitude < p32 then
						if v48:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p31.Anchored then
								return;
							end;
							local l__Humanoid__49 = v48:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__50 = v48:FindFirstChild("HumanoidRootPart");
							l__HamonSword__54:FireServer(l__Humanoid__49, p33, p35, p36, p37);
							l__Knock__55:FireServer(l__Humanoid__49);
							local v51 = Instance.new("StringValue");
							v51.Name = "alabo";
							v51.Parent = l__HumanoidRootPart__50;
							delay(p34, function()
								v51:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__ScarletOverdrive__56 = l__ReplicatedStorage__1.ScarletOverdrive;
function hito4(p38, p39, p40, p41, p42, p43, p44, p45, p46, p47, p48)
	local v52, v53, v54 = pairs(workspace.Entities:GetChildren());
	while true do
		local v55, v56 = v52(v53, v54);
		if v55 then

		else
			break;
		end;
		v54 = v55;
		if p38.Anchored == true then
			return;
		end;
		if v56:FindFirstChild("Humanoid") then
			if v56:FindFirstChild("HumanoidRootPart") then
				if v56 ~= l__Character__3 then
					if (v56:FindFirstChild("HumanoidRootPart").Position - p38.Position).magnitude < p40 then
						if v56:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p38.Anchored then
								return;
							end;
							local l__Humanoid__57 = v56:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__58 = v56:FindFirstChild("HumanoidRootPart");
							l__ScarletOverdrive__56:FireServer(l__Humanoid__57, p38.Name, p41, p43, p44, p45, p46, p47, p48);
							l__Knock__55:FireServer(l__Humanoid__57);
							local v59 = Instance.new("StringValue");
							v59.Name = "alabo";
							v59.Parent = l__HumanoidRootPart__58;
							delay(p42, function()
								v59:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;	
	end;
end;
function hito5(p49, p50, p51, p52, p53, p54, p55, p56, p57, p58, p59, p60, p61)
	local v60, v61, v62 = pairs(workspace.Entities:GetChildren());
	while true do
		local v63, v64 = v60(v61, v62);
		if v63 then

		else
			break;
		end;
		v62 = v63;
		if p49.Anchored == true then
			return;
		end;
		if v64:FindFirstChild("Humanoid") then
			if v64:FindFirstChild("HumanoidRootPart") then
				if v64 ~= l__Character__3 then
					if (v64:FindFirstChild("HumanoidRootPart").Position - p49.Position).magnitude < p51 then
						if v64:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p49.Anchored then
								return;
							end;
							local l__Humanoid__65 = v64:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__66 = v64:FindFirstChild("HumanoidRootPart");
							l__HamonDamage__52:FireServer(l__Humanoid__65, p50, p52, p54, p55, p56, p57, p58, p59, p60, p61);
							l__Knock__55:FireServer(l__Humanoid__65);
							local v67 = Instance.new("StringValue");
							v67.Name = "alabo";
							v67.Parent = l__HumanoidRootPart__66;
							delay(p53, function()
								v67:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__Anchor__57 = l__ReplicatedStorage__1.Anchor;
local u58 = l__Character__3["Right Leg"];
local u59 = l__Character__3["Left Leg"];
game.Lighting.TS.Changed:Connect(function()
	if game.Lighting.TS.Value == true then
		l__Anchor__57:FireServer(l__Torso__6, true);
		l__Anchor__57:FireServer(u13, true);
		l__Anchor__57:FireServer(u16, true);
		l__Anchor__57:FireServer(u58, true);
		l__Anchor__57:FireServer(u59, true);
		l__Anchor__57:FireServer(l__Head__47, true);
		return;
	end;
	if game.Lighting.TS.Value == false then
		l__Anchor__57:FireServer(l__Torso__6, false);
		l__Anchor__57:FireServer(u13, false);
		l__Anchor__57:FireServer(u16, false);
		l__Anchor__57:FireServer(u58, false);
		l__Anchor__57:FireServer(u59, false);
		l__Anchor__57:FireServer(l__Head__47, false);
	end;
end);
if game.Lighting.TS.Value == true then
	l__Anchor__57:FireServer(l__Torso__6, true);
	l__Anchor__57:FireServer(u13, true);
	l__Anchor__57:FireServer(u16, true);
	l__Anchor__57:FireServer(u58, true);
	l__Anchor__57:FireServer(u59, true);
	l__Anchor__57:FireServer(l__Head__47, true);
end;
l__ReplicatedStorage__1.BerserkClient.OnClientEvent:connect(function()
	game.Lighting.Ambient = Color3.fromRGB(0, 0, 122);
	game.Lighting.Berserk.Enabled = true;
	l__Humanoid__4.WalkSpeed = 4;
	l__Humanoid__4:SetStateEnabled(3, false);
	task.wait(2.5);
	l__Humanoid__4.WalkSpeed = 16;
	l__Humanoid__4:SetStateEnabled(3, true);
	game.Lighting.Ambient = Color3.fromRGB(150, 150, 150);
	game.Lighting.Berserk.Enabled = false;
end);
local l__Death__60 = l__ReplicatedStorage__1.Death;
l__Humanoid__4.HealthChanged:connect(function()
	if l__Humanoid__4.Health < 1 then
		l__Humanoid__4:SetStateEnabled(3, false);
		l__Humanoid__4:SetStateEnabled(15, false);
		l__Death__60:FireServer(false);
	end;
end);
local l__Knocked__61 = l__ReplicatedStorage__1.Knocked;
local l__GetUp__62 = l__ReplicatedStorage__1.GetUp;
l__ReplicatedStorage__1.KnockClient.OnClientEvent:connect(function(p62)
	l__Knocked__61:FireServer();
	l__Humanoid__4:SetStateEnabled(3, false);
	task.wait(1.25);
	if l__Humanoid__4.Health >= 1 then
		l__GetUp__62:FireServer();
		l__Humanoid__4:SetStateEnabled(3, true);
	end;
end);
l__Taunt__46.OnClientEvent:Connect(function()
	u45 = false;
end);
game:GetService("ReplicatedStorage").ChariotRequiemHandler.OnClientEvent:Connect(function(p63, p64)
	if p63 == "Confuse" then
		if u27 == true then
			return;
		end;
		scarletoverdrive();
	end;
end);
