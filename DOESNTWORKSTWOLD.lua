-- Decompiled with the Synapse X Luau decompiler.

game.ReplicatedStorage.Stand:FireServer("ShadowTheWorldStand");
local l__ReplicatedStorage__1 = game:GetService("ReplicatedStorage");
local l__Anchor__2 = l__ReplicatedStorage__1.Anchor;
local l__Velocity__3 = l__ReplicatedStorage__1.Velocity;
local l__RTZ__4 = l__ReplicatedStorage__1.RTZ;
local l__STWRTZDMG__5 = l__ReplicatedStorage__1.STWRTZDMG;
local l__LocalPlayer__6 = game:GetService("Players").LocalPlayer;
while true do
	task.wait(0.03);
	if l__LocalPlayer__6.Character and l__LocalPlayer__6.Character.Humanoid then
		break;
	end;
end;
local l__Character__7 = l__LocalPlayer__6.Character;
local l__Humanoid__8 = l__Character__7.Humanoid;
mouse = l__LocalPlayer__6:GetMouse();
cam = workspace.CurrentCamera;
task.wait(0.03);
local l__Disabled__9 = l__Character__7:WaitForChild("Disabled");
local l__Stand__10 = l__Character__7:WaitForChild("Stand");
local l__StandHumanoidRootPart__11 = l__Stand__10:WaitForChild("StandHumanoidRootPart");
local l__face__12 = l__Stand__10:WaitForChild("Stand Head"):WaitForChild("face");
local l__Stand_Torso__13 = l__Stand__10:WaitForChild("Stand Torso");
local v14 = l__Character__7["Right Arm"];
local v15 = l__Character__7["Left Arm"];
local v16 = l__Character__7["Right Leg"];
local v17 = l__Character__7["Left Leg"];
local v18 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.KickBarrage);
local v19 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.TS);
local v20 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.Roller);
local v21 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.Pose1);
local v22 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.Roll);
local v23 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.IceShatter);
local v24 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.Grab);
local v25 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.RTZAnim);
local l__Rush__26 = l__StandHumanoidRootPart__11.Rush;
local l__Iceshatter__27 = l__StandHumanoidRootPart__11.Iceshatter;
local u1 = false;
local u2 = true;
local u3 = false;
local u4 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.Nothing);
local u5 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.Idle);
local l__StandAppear__6 = l__StandHumanoidRootPart__11.StandAppear;
local l__Transparency__7 = l__ReplicatedStorage__1.Transparency;
function standappear(p1)
	if u1 == true then
		return;
	end;
	if u2 == true then
		return;
	end;
	u2 = true;
	if u3 == false then
		u3 = true;
		u4:Stop();
		u5:Play(0.2, 1, 1);
		l__StandAppear__6:Play();
		local v28, v29, v30 = pairs(p1:GetChildren());
		while true do
			local v31, v32 = v28(v29, v30);
			if v31 then

			else
				break;
			end;
			v30 = v31;
			if v32 ~= l__StandHumanoidRootPart__11 then
				if v32 ~= p1.StandRarm then
					if v32 ~= p1.StandLarm then
						if v32.ClassName ~= "IntValue" then
							l__Transparency__7:FireServer(v32, 0);
						end;
					end;
				end;
			end;		
		end;
	elseif u3 == true then
		u3 = false;
		u5:Stop();
		u4:Play(0.2, 1, 1);
		local v33, v34, v35 = pairs(p1:GetChildren());
		while true do
			local v36, v37 = v33(v34, v35);
			if v36 then

			else
				break;
			end;
			v35 = v36;
			if v37 ~= l__StandHumanoidRootPart__11 then
				if v37 ~= p1.StandRarm then
					if v37 ~= p1.StandLarm then
						if v37.ClassName ~= "IntValue" then
							l__Transparency__7:FireServer(v37, 1);
						end;
					end;
				end;
			end;		
		end;
	end;
	task.wait(2.5);
	u2 = false;
end;
local u8 = false;
local l__VoicelineThing1__9 = l__StandHumanoidRootPart__11.VoicelineThing1;
local u10 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.AttackPose);
local u11 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.PunchUppercut);
local l__Trail__12 = l__ReplicatedStorage__1.Trail;
local l__Stand_Right_Arm__13 = l__Stand__10:WaitForChild("Stand Right Arm");
local l__StrongPunch__14 = l__ReplicatedStorage__1.StrongPunch;
function Uppercut()
	if u1 == true then
		return;
	end;
	if u8 == true then
		return;
	end;
	u8 = true;
	l__VoicelineThing1__9:Play();
	if game.Lighting.TS.Value == false then
		game.Lighting.STWEffect.Enabled = true;
		spawn(function()
			task.wait(0.4);
			game.Lighting.STWEffect.Enabled = false;
		end);
	end;
	l__StandAppear__6:Play();
	u1 = true;
	local v38, v39, v40 = pairs(l__Stand__10:GetChildren());
	while true do
		local v41, v42 = v38(v39, v40);
		if v41 then

		else
			break;
		end;
		v40 = v41;
		coroutine.resume(coroutine.create(function()
			local v43 = 1 - 1;
			while true do
				if v42 ~= l__StandHumanoidRootPart__11 then
					if v42.ClassName ~= "Sound" then
						if v42 ~= l__Stand__10.StandRarm then
							if v42 ~= l__Stand__10.StandLarm then
								if v42 ~= l__Stand__10["Stand Head"] then
									task.wait(0.03);
									l__Transparency__7:FireServer(v42, v42.Transparency - 0.2);
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v43 < 5 then

					else
						break;
					end;
				elseif 5 < v43 then

				else
					break;
				end;
				v43 = v43 + 1;			
			end;
			if v42 ~= l__StandHumanoidRootPart__11 then
				if v42 ~= l__Stand__10.StandRarm then
					if v42 ~= l__Stand__10.StandLarm then
						if v42 ~= l__Stand__10["Stand Head"] then
							l__Transparency__7:FireServer(v42, 0);
						end;
					end;
				end;
			end;
		end));	
	end;
	u10:Play();
	l__Humanoid__8.JumpPower = 0;
	u11:Play(0.1, 1, 1);
	l__Trail__12:FireServer(l__Stand_Right_Arm__13.Trail, true);
	l__StrongPunch__14:FireServer(Vector3.new(0.5, 0.5, 0.5), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Black"));
	coroutine.resume(coroutine.create(function()
		local v44 = 1 - 1;
		while true do
			task.wait(0.03);
			hito2(l__Stand_Right_Arm__13, l__Stand_Right_Arm__13.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 3, 30, 0.75, 0.25, l__StandHumanoidRootPart__11.CFrame.lookVector * 50, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 10);
			if 0 <= 1 then
				if v44 < 15 then

				else
					break;
				end;
			elseif 15 < v44 then

			else
				break;
			end;
			v44 = v44 + 1;		
		end;
	end));
	task.wait(0.65);
	u11:Stop();
	u1 = false;
	l__Trail__12:FireServer(l__Stand_Right_Arm__13.Trail, false);
	u10:Stop();
	l__Humanoid__8.JumpPower = 50;
	local v45, v46, v47 = pairs(l__Stand__10:GetChildren());
	while true do
		local v48, v49 = v45(v46, v47);
		if v48 then

		else
			break;
		end;
		v47 = v48;
		coroutine.resume(coroutine.create(function()
			local v50 = 1 - 1;
			while true do
				if v49 ~= l__StandHumanoidRootPart__11 then
					if v49.ClassName ~= "Sound" then
						if v49 ~= l__Stand__10.StandRarm then
							if v49 ~= l__Stand__10.StandLarm then
								if v49 ~= l__Stand__10["Stand Head"] then
									task.wait(0.03);
									l__Transparency__7:FireServer(v49, v49.Transparency + 0.2);
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v50 < 5 then

					else
						break;
					end;
				elseif 5 < v50 then

				else
					break;
				end;
				v50 = v50 + 1;			
			end;
			if v49 ~= l__StandHumanoidRootPart__11 then
				if v49 ~= l__Stand__10.StandRarm then
					if v49 ~= l__Stand__10.StandLarm then
						if v49 ~= l__Stand__10["Stand Head"] then
							l__Transparency__7:FireServer(v49, 1);
						end;
					end;
				end;
			end;
		end));	
	end;
	task.wait(2.5);
	u8 = false;
end;
local u15 = false;
local u16 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.BloodSuck);
local l__Punch__17 = l__StandHumanoidRootPart__11.Punch;
local l__Bloodsuck__18 = l__StandHumanoidRootPart__11.Bloodsuck;
local u19 = false;
function bloodsuck()
	if u1 == true then
		return;
	end;
	if u15 == true then
		return;
	end;
	u15 = true;
	u1 = true;
	l__Humanoid__8.JumpPower = 0;
	u16:Play(0.1, 1, 1);
	l__Trail__12:FireServer(l__Stand__10.StandRarm.Trail, true);
	task.wait(0.5);
	l__Punch__17:Play();
	l__Bloodsuck__18:Play();
	coroutine.resume(coroutine.create(function()
		local v51 = 1 - 1;
		while true do
			task.wait(0.03);
			hito3(l__Stand__10.StandRarm, 2.5, 30, 0.5, 0.25, l__StandHumanoidRootPart__11.CFrame.lookVector * 0);
			if 0 <= 1 then
				if v51 < 10 then

				else
					break;
				end;
			elseif 10 < v51 then

			else
				break;
			end;
			v51 = v51 + 1;		
		end;
	end));
	task.wait(0.65);
	if u19 == false then
		l__Humanoid__8.JumpPower = 50;
		u1 = false;
		l__Trail__12:FireServer(l__Stand__10.StandRarm.Trail, false);
	end;
	task.wait(10);
	u15 = false;
end;
local u20 = false;
local u21 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.Block);
local l__Block__22 = l__ReplicatedStorage__1.Block;
local l__Guard__23 = l__StandHumanoidRootPart__11.Guard;
function block()
	if u20 == true then
		return;
	end;
	if u1 == true then
		return;
	end;
	u1 = true;
	l__StandAppear__6:Play();
	local v52, v53, v54 = pairs(l__Stand__10:GetChildren());
	while true do
		local v55, v56 = v52(v53, v54);
		if v55 then

		else
			break;
		end;
		v54 = v55;
		coroutine.resume(coroutine.create(function()
			local v57 = 1 - 1;
			while true do
				if v56 ~= l__StandHumanoidRootPart__11 then
					if v56.ClassName ~= "Sound" then
						if v56 ~= l__Stand__10.StandRarm then
							if v56 ~= l__Stand__10.StandLarm then
								if v56 ~= l__Stand__10["Stand Head"] then
									task.wait(0.03);
									l__Transparency__7:FireServer(v56, v56.Transparency - 0.2);
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v57 < 5 then

					else
						break;
					end;
				elseif 5 < v57 then

				else
					break;
				end;
				v57 = v57 + 1;			
			end;
			if v56 ~= l__StandHumanoidRootPart__11 then
				if v56 ~= l__Stand__10.StandRarm then
					if v56 ~= l__Stand__10.StandLarm then
						if v56 ~= l__Stand__10["Stand Head"] then
							l__Transparency__7:FireServer(v56, 0);
						end;
					end;
				end;
			end;
		end));	
	end;
	local u24 = true;
	local v58 = mouse.KeyUp:connect(function(p2)
		if p2 == "x" then
			u24 = false;
		end;
	end);
	u21:Play(0.1, 1, 1);
	l__Block__22:FireServer(true);
	u20 = true;
	l__Guard__23:Play();
	l__Humanoid__8.JumpPower = 0;
	while true do
		task.wait(0.03);
		if u24 ~= false then

		else
			break;
		end;	
	end;
	local v59, v60, v61 = pairs(l__Stand__10:GetChildren());
	while true do
		local v62, v63 = v59(v60, v61);
		if v62 then

		else
			break;
		end;
		v61 = v62;
		coroutine.resume(coroutine.create(function()
			local v64 = 1 - 1;
			while true do
				if v63 ~= l__StandHumanoidRootPart__11 then
					if v63.ClassName ~= "Sound" then
						if v63 ~= l__Stand__10.StandRarm then
							if v63 ~= l__Stand__10.StandLarm then
								if v63 ~= l__Stand__10["Stand Head"] then
									task.wait(0.03);
									l__Transparency__7:FireServer(v63, v63.Transparency + 0.2);
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v64 < 5 then

					else
						break;
					end;
				elseif 5 < v64 then

				else
					break;
				end;
				v64 = v64 + 1;			
			end;
			if v63 ~= l__StandHumanoidRootPart__11 then
				if v63 ~= l__Stand__10.StandRarm then
					if v63 ~= l__Stand__10.StandLarm then
						if v63 ~= l__Stand__10["Stand Head"] then
							l__Transparency__7:FireServer(v63, 1);
						end;
					end;
				end;
			end;
		end));	
	end;
	l__Block__22:FireServer(false);
	u21:Stop(0.1);
	l__Humanoid__8.JumpPower = 50;
	u1 = false;
	task.wait(3);
	u20 = false;
end;
local u25 = false;
local u26 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.RightPunch);
local u27 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.LeftPunch);
local l__Stand_Left_Arm__28 = l__Stand__10:WaitForChild("Stand Left Arm");
function punch()
	if u1 == true then
		return;
	end;
	u1 = true;
	l__Punch__17:Play();
	u10:Play();
	l__StandAppear__6:Play();
	l__StandAppear__6.Volume = l__StandAppear__6.Volume - 1;
	local v65, v66, v67 = pairs(l__Stand__10:GetChildren());
	while true do
		local v68, v69 = v65(v66, v67);
		if v68 then

		else
			break;
		end;
		v67 = v68;
		coroutine.resume(coroutine.create(function()
			local v70 = 1 - 1;
			while true do
				if v69 ~= l__StandHumanoidRootPart__11 then
					if v69.ClassName ~= "Sound" then
						if v69 ~= l__Stand__10.StandRarm then
							if v69 ~= l__Stand__10.StandLarm then
								if v69 ~= l__Stand__10["Stand Head"] then
									task.wait(0.03);
									l__Transparency__7:FireServer(v69, v69.Transparency - 0.2);
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v70 < 5 then

					else
						break;
					end;
				elseif 5 < v70 then

				else
					break;
				end;
				v70 = v70 + 1;			
			end;
			if v69 ~= l__StandHumanoidRootPart__11 then
				if v69 ~= l__Stand__10.StandRarm then
					if v69 ~= l__Stand__10.StandLarm then
						if v69 ~= l__Stand__10["Stand Head"] then
							l__Transparency__7:FireServer(v69, 0);
						end;
					end;
				end;
			end;
		end));	
	end;
	l__Humanoid__8.JumpPower = 0;
	if u25 == false then
		u25 = true;
		u26:Play(0.1, 1, 1);
		l__Trail__12:FireServer(l__Stand_Right_Arm__13.Trail, true);
		task.wait(0.2);
		l__StandAppear__6.Volume = l__StandAppear__6.Volume + 1;
		local v71, v72, v73 = pairs(l__Stand__10:GetChildren());
		while true do
			local v74, v75 = v71(v72, v73);
			if v74 then

			else
				break;
			end;
			v73 = v74;
			coroutine.resume(coroutine.create(function()
				local v76 = 1 - 1;
				while true do
					if v75 ~= l__StandHumanoidRootPart__11 then
						if v75.ClassName ~= "Sound" then
							if v75 ~= l__Stand__10.StandRarm then
								if v75 ~= l__Stand__10.StandLarm then
									if v75 ~= l__Stand__10["Stand Head"] then
										task.wait(0.03);
										l__Transparency__7:FireServer(v75, v75.Transparency + 0.2);
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v76 < 5 then

						else
							break;
						end;
					elseif 5 < v76 then

					else
						break;
					end;
					v76 = v76 + 1;				
				end;
				if v75 ~= l__StandHumanoidRootPart__11 then
					if v75 ~= l__Stand__10.StandRarm then
						if v75 ~= l__Stand__10.StandLarm then
							if v75 ~= l__Stand__10["Stand Head"] then
								l__Transparency__7:FireServer(v75, 1);
							end;
						end;
					end;
				end;
			end));		
		end;
		coroutine.resume(coroutine.create(function()
			local v77 = 1 - 1;
			while true do
				task.wait(0.03);
				hito(l__Stand_Right_Arm__13, l__Stand_Right_Arm__13.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 11, 0.5, 0.25, l__StandHumanoidRootPart__11.CFrame.lookVector * 10, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 25);
				if 0 <= 1 then
					if v77 < 5 then

					else
						break;
					end;
				elseif 5 < v77 then

				else
					break;
				end;
				v77 = v77 + 1;			
			end;
		end));
	elseif u25 == true then
		u25 = false;
		u27:Play(0.1, 1, 1);
		l__Trail__12:FireServer(l__Stand_Left_Arm__28.Trail, true);
		task.wait(0.2);
		l__StandAppear__6.Volume = l__StandAppear__6.Volume + 1;
		local v78, v79, v80 = pairs(l__Stand__10:GetChildren());
		while true do
			local v81, v82 = v78(v79, v80);
			if v81 then

			else
				break;
			end;
			v80 = v81;
			coroutine.resume(coroutine.create(function()
				local v83 = 1 - 1;
				while true do
					if v82 ~= l__StandHumanoidRootPart__11 then
						if v82.ClassName ~= "Sound" then
							if v82 ~= l__Stand__10.StandRarm then
								if v82 ~= l__Stand__10.StandLarm then
									if v82 ~= l__Stand__10["Stand Head"] then
										task.wait(0.03);
										l__Transparency__7:FireServer(v82, v82.Transparency + 0.2);
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v83 < 5 then

						else
							break;
						end;
					elseif 5 < v83 then

					else
						break;
					end;
					v83 = v83 + 1;				
				end;
				if v82 ~= l__StandHumanoidRootPart__11 then
					if v82 ~= l__Stand__10.StandRarm then
						if v82 ~= l__Stand__10.StandLarm then
							if v82 ~= l__Stand__10["Stand Head"] then
								l__Transparency__7:FireServer(v82, 1);
							end;
						end;
					end;
				end;
			end));		
		end;
		coroutine.resume(coroutine.create(function()
			local v84 = 1 - 1;
			while true do
				task.wait(0.03);
				hito(l__Stand_Left_Arm__28, l__Stand_Left_Arm__28.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 11, 0.5, 0.25, l__StandHumanoidRootPart__11.CFrame.lookVector * 10, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 25);
				if 0 <= 1 then
					if v84 < 5 then

					else
						break;
					end;
				elseif 5 < v84 then

				else
					break;
				end;
				v84 = v84 + 1;			
			end;
		end));
	end;
	task.wait(0.35);
	u10:Stop();
	l__Humanoid__8.JumpPower = 50;
	u1 = false;
	l__Trail__12:FireServer(l__Stand_Right_Arm__13.Trail, false);
	l__Trail__12:FireServer(l__Stand_Left_Arm__28.Trail, false);
end;
local u29 = false;
local u30 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.StrongPunch);
function strongpunch()
	if u1 == true then
		return;
	end;
	if u29 == true then
		return;
	end;
	u1 = true;
	u29 = true;
	u10:Play();
	l__VoicelineThing1__9:Play();
	if game.Lighting.TS.Value == false then
		game.Lighting.STWEffect.Enabled = true;
		spawn(function()
			task.wait(0.7);
			game.Lighting.STWEffect.Enabled = false;
		end);
	end;
	l__StandAppear__6:Play();
	local v85, v86, v87 = pairs(l__Stand__10:GetChildren());
	while true do
		local v88, v89 = v85(v86, v87);
		if v88 then

		else
			break;
		end;
		v87 = v88;
		coroutine.resume(coroutine.create(function()
			local v90 = 1 - 1;
			while true do
				if v89 ~= l__StandHumanoidRootPart__11 then
					if v89.ClassName ~= "Sound" then
						if v89 ~= l__Stand__10.StandRarm then
							if v89 ~= l__Stand__10.StandLarm then
								if v89 ~= l__Stand__10["Stand Head"] then
									task.wait(0.03);
									l__Transparency__7:FireServer(v89, v89.Transparency - 0.2);
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v90 < 5 then

					else
						break;
					end;
				elseif 5 < v90 then

				else
					break;
				end;
				v90 = v90 + 1;			
			end;
			if v89 ~= l__StandHumanoidRootPart__11 then
				if v89 ~= l__Stand__10.StandRarm then
					if v89 ~= l__Stand__10.StandLarm then
						if v89 ~= l__Stand__10["Stand Head"] then
							l__Transparency__7:FireServer(v89, 0);
						end;
					end;
				end;
			end;
		end));	
	end;
	l__Humanoid__8.JumpPower = 0;
	u30:Play(0.1, 1, 1);
	l__Trail__12:FireServer(l__Stand_Right_Arm__13.Trail, true);
	l__Trail__12:FireServer(l__Stand_Left_Arm__28.Trail, true);
	task.wait(0.3);
	coroutine.resume(coroutine.create(function()
		local v91 = 1 - 1;
		while true do
			task.wait(0.03);
			hito2(l__Stand_Right_Arm__13, l__Stand_Right_Arm__13.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 20, 0.75, 0.25, Vector3.new(0, -5, 0), "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 20);
			hito2(l__Stand_Left_Arm__28, l__Stand_Left_Arm__28.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 20, 0.75, 0.25, Vector3.new(0, -5, 0), "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 20);
			if 0 <= 1 then
				if v91 < 20 then

				else
					break;
				end;
			elseif 20 < v91 then

			else
				break;
			end;
			v91 = v91 + 1;		
		end;
	end));
	task.wait(0.5);
	l__Trail__12:FireServer(l__Stand_Right_Arm__13.Trail, false);
	l__Trail__12:FireServer(l__Stand_Left_Arm__28.Trail, false);
	local v92, v93, v94 = pairs(l__Stand__10:GetChildren());
	while true do
		local v95, v96 = v92(v93, v94);
		if v95 then

		else
			break;
		end;
		v94 = v95;
		coroutine.resume(coroutine.create(function()
			local v97 = 1 - 1;
			while true do
				if v96 ~= l__StandHumanoidRootPart__11 then
					if v96.ClassName ~= "Sound" then
						if v96 ~= l__Stand__10.StandRarm then
							if v96 ~= l__Stand__10.StandLarm then
								if v96 ~= l__Stand__10["Stand Head"] then
									task.wait(0.03);
									l__Transparency__7:FireServer(v96, v96.Transparency + 0.2);
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v97 < 5 then

					else
						break;
					end;
				elseif 5 < v97 then

				else
					break;
				end;
				v97 = v97 + 1;			
			end;
			if v96 ~= l__StandHumanoidRootPart__11 then
				if v96 ~= l__Stand__10.StandRarm then
					if v96 ~= l__Stand__10.StandLarm then
						if v96 ~= l__Stand__10["Stand Head"] then
							l__Transparency__7:FireServer(v96, 1);
						end;
					end;
				end;
			end;
		end));	
	end;
	task.wait(0.2);
	u10:Stop();
	l__Humanoid__8.JumpPower = 50;
	u1 = false;
	task.wait(5);
	u29 = false;
end;
local u31 = false;
local u32 = false;
local l__HumanoidRootPart__33 = l__Character__7.HumanoidRootPart;
local l__Donut__34 = l__ReplicatedStorage__1.Donut;
function donut()
	if u1 == true then
		return;
	end;
	if u31 == true then
		return;
	end;
	if u32 == true then
		return;
	end;
	if game.Lighting.TS.Value == true then
		return;
	end;
	if game.Lighting.TSing.Value == true then
		return;
	end;
	if u3 == false then
		return;
	end;
	if mouse.Target then
		if mouse.Target.Parent:FindFirstChild("Humanoid") then
			if (mouse.Target.Parent:FindFirstChild("HumanoidRootPart").Position - l__HumanoidRootPart__33.Position).magnitude < 40 then
				u31 = true;
				l__Donut__34:FireServer(mouse.Target.Parent, 50);
				task.wait(20);
				u31 = false;
			end;
		end;
	end;
end;
local u35 = false;
local u36 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.KnifeThrow);
local l__STWKnife__37 = l__ReplicatedStorage__1.STWKnife;
local u38 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.TSKnifeThrow);
function knifethrow()
	if u1 == true then
		return;
	end;
	if u35 == true then
		return;
	end;
	if game.Lighting.TS.Value == false then
		u35 = true;
		u1 = true;
		u36:Play(0.1, 1, 1);
		l__Transparency__7:FireServer(l__Character__7.HoldSTWKnife:GetChildren(), 0, true);
		task.wait(0.5);
		spawn(function()
			l__STWKnife__37:FireServer();
			l__Punch__17:Play();
		end);
		l__Transparency__7:FireServer(l__Character__7.HoldSTWKnife:GetChildren(), 1, false);
		task.wait(0.5);
		u1 = false;
		if l__Character__7.TS.Value == false then
			task.wait(1);
			u35 = false;
			return;
		end;
		if l__Character__7.TS.Value == true then
			u35 = false;
			return;
		end;
	else
		u35 = true;
		u1 = true;
		u38:Play(0.1, 1, 1);
		l__StandAppear__6:Play();
		local v98, v99, v100 = pairs(l__Stand__10:GetChildren());
		while true do
			local v101, v102 = v98(v99, v100);
			if v101 then

			else
				break;
			end;
			v100 = v101;
			coroutine.resume(coroutine.create(function()
				local v103 = 1 - 1;
				while true do
					if v102 ~= l__StandHumanoidRootPart__11 then
						if v102.ClassName ~= "Sound" then
							if v102 ~= l__Stand__10.StandRarm then
								if v102 ~= l__Stand__10.StandLarm then
									if v102 ~= l__Stand__10["Stand Head"] then
										task.wait(0.03);
										l__Transparency__7:FireServer(v102, v102.Transparency - 0.2);
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v103 < 5 then

						else
							break;
						end;
					elseif 5 < v103 then

					else
						break;
					end;
					v103 = v103 + 1;				
				end;
				if v102 ~= l__StandHumanoidRootPart__11 then
					if v102 ~= l__Stand__10.StandRarm then
						if v102 ~= l__Stand__10.StandLarm then
							if v102 ~= l__Stand__10["Stand Head"] then
								l__Transparency__7:FireServer(v102, 0);
							end;
						end;
					end;
				end;
			end));		
		end;
		l__Transparency__7:FireServer(l__Character__7.HoldSTWKnife:GetChildren(), 1, false);
		task.wait(0.5);
		l__STWKnife__37:FireServer();
		l__Punch__17:Play();
		l__STWKnife__37:FireServer();
		l__Punch__17:Play();
		l__STWKnife__37:FireServer();
		l__Punch__17:Play();
		l__STWKnife__37:FireServer();
		l__Punch__17:Play();
		l__STWKnife__37:FireServer();
		l__Punch__17:Play();
		l__STWKnife__37:FireServer();
		l__Punch__17:Play();
		l__STWKnife__37:FireServer();
		l__Punch__17:Play();
		l__STWKnife__37:FireServer();
		l__Punch__17:Play();
		l__Transparency__7:FireServer(l__Character__7.HoldSTWKnife:GetChildren(), 1, false);
		task.wait(0.5);
		u1 = false;
		local v104, v105, v106 = pairs(l__Stand__10:GetChildren());
		while true do
			local v107, v108 = v104(v105, v106);
			if v107 then

			else
				break;
			end;
			v106 = v107;
			coroutine.resume(coroutine.create(function()
				local v109 = 1 - 1;
				while true do
					if v108 ~= l__StandHumanoidRootPart__11 then
						if v108.ClassName ~= "Sound" then
							if v108 ~= l__Stand__10.StandRarm then
								if v108 ~= l__Stand__10.StandLarm then
									if v108 ~= l__Stand__10["Stand Head"] then
										task.wait(0.03);
										l__Transparency__7:FireServer(v108, v108.Transparency + 0.2);
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v109 < 5 then

						else
							break;
						end;
					elseif 5 < v109 then

					else
						break;
					end;
					v109 = v109 + 1;				
				end;
				if v108 ~= l__StandHumanoidRootPart__11 then
					if v108 ~= l__Stand__10.StandRarm then
						if v108 ~= l__Stand__10.StandLarm then
							if v108 ~= l__Stand__10["Stand Head"] then
								l__Transparency__7:FireServer(v108, 1);
							end;
						end;
					end;
				end;
			end));		
		end;
		if l__Character__7.TS.Value == false then
			task.wait(1.5);
			u35 = false;
			return;
		end;
		if l__Character__7.TS.Value == true then
			u35 = false;
		end;
	end;
end;
local u39 = false;
local u40 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.Lunge);
local l__Voice1__41 = l__StandHumanoidRootPart__11.Voice1;
function freeze()
	if u1 == true then
		return;
	end;
	if u39 == true then
		return;
	end;
	u39 = true;
	u1 = true;
	l__Humanoid__8.JumpPower = 0;
	u40:Play(0.1, 1, 1);
	l__Trail__12:FireServer(l__Stand__10.StandRarm.Trail, true);
	l__Trail__12:FireServer(l__Stand__10.StandLarm.Trail, true);
	l__Voice1__41:Play();
	task.wait(0.5);
	l__Punch__17:Play();
	coroutine.resume(coroutine.create(function()
		local v110 = 1 - 1;
		while true do
			task.wait(0.03);
			hito4(l__Stand__10.StandRarm, 2.5, 75, 1, 0.75, l__StandHumanoidRootPart__11.CFrame.lookVector * 50);
			hito4(l__Stand__10.StandLarm, 2.5, 75, 1, 0.75, l__StandHumanoidRootPart__11.CFrame.lookVector * 50);
			if 0 <= 1 then
				if v110 < 15 then

				else
					break;
				end;
			elseif 15 < v110 then

			else
				break;
			end;
			v110 = v110 + 1;		
		end;
	end));
	task.wait(0.65);
	if u19 == false then
		u1 = false;
		l__Humanoid__8.JumpPower = 50;
		l__Trail__12:FireServer(l__Stand__10.StandRarm.Trail, false);
		l__Trail__12:FireServer(l__Stand__10.StandLarm.Trail, false);
	end;
	task.wait(25);
	u39 = false;
end;
local u42 = false;
local u43 = nil;
local l__STWRTZNoDec__44 = l__ReplicatedStorage__1.STWRTZNoDec;
local u45 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.FleshBuds);
function fleshbuds()
	if u1 == true then
		return;
	end;
	if u42 == true then
		return;
	end;
	u1 = true;
	u42 = true;
	u43 = "nodmg";
	l__STWRTZNoDec__44:FireServer(true);
	game:GetService("ReplicatedStorage").FleshBud:FireServer();
	u45:Play();
	task.wait(0.4);
	l__Humanoid__8.WalkSpeed = 5;
	l__Humanoid__8.JumpPower = 0;
	task.wait(2);
	l__STWRTZNoDec__44:FireServer(false);
	u1 = false;
	l__Humanoid__8.WalkSpeed = 18;
	l__Humanoid__8.JumpPower = 50;
	task.wait(9);
	u42 = false;
end;
local u46 = false;
function tsteleport()
	if u1 == true then
		return;
	end;
	if u46 == true then
		return;
	end;
	local l__p__111 = mouse.Hit.p;
	if (l__Character__7.HumanoidRootPart.Position - l__p__111).magnitude < 35 then
		u46 = true;
		l__Character__7.HumanoidRootPart.CFrame = CFrame.new(l__p__111) + Vector3.new(0, 2, 0);
		l__VoicelineThing1__9:Play();
		if game.Lighting.TS.Value == false then
			game.Lighting.STWEffect.Enabled = true;
			spawn(function()
				task.wait(0.2);
				game.Lighting.STWEffect.Enabled = false;
			end);
		end;
		task.wait(5);
		u46 = false;
	end;
end;
local u47 = false;
local u48 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.StandJump);
local l__StandJumpSFX__49 = l__StandHumanoidRootPart__11.StandJumpSFX;
local l__Jump__50 = l__ReplicatedStorage__1.Jump;
function movement()
	if u1 == true then
		return;
	end;
	if u47 == true then
		return;
	end;
	if u3 == false then
		return;
	end;
	u47 = true;
	u1 = true;
	u48:Play(0.1, 1, 1);
	l__StandJumpSFX__49:Play();
	l__Jump__50:FireServer(BrickColor.new("Institutional white"));
	local v112 = Instance.new("BodyPosition", l__HumanoidRootPart__33);
	v112.maxForce = Vector3.new(100000, 100000, 100000);
	v112.Position = l__HumanoidRootPart__33.CFrame * CFrame.new(0, 50, -75).p;
	game.Debris:AddItem(v112, 1);
	task.wait(1);
	u1 = false;
	task.wait(14);
	u47 = false;
end;
local u51 = false;
local u52 = l__Humanoid__8:LoadAnimation(l__StandHumanoidRootPart__11.SpaceRipper);
local l__StingyEyes__53 = l__StandHumanoidRootPart__11.StingyEyes;
local l__SpaceRipperStingyEyes__54 = l__ReplicatedStorage__1.SpaceRipperStingyEyes;
function spaceripperstingyeyes()
	if u51 == true then
		return;
	end;
	if u1 == true then
		return;
	end;
	u1 = true;
	u51 = true;
	u52:Play(0.1, 1, 1);
	task.wait(0.6);
	l__StingyEyes__53:Play();
	l__SpaceRipperStingyEyes__54:FireServer();
	task.wait(0.3);
	u1 = false;
	task.wait(7.5);
	u51 = false;
end;
local u55 = true;
local u56 = false;
local l__Timestop__57 = l__ReplicatedStorage__1.Timestop;
local l__Untimestop__58 = l__ReplicatedStorage__1.Untimestop;
function timestop()
	if u1 == true then
		return;
	end;
	if u55 == true then
		return;
	end;
	if u32 == true then
		return;
	end;
	if game.Lighting.GlobalTSCooldown.Value == true then
		return;
	end;
	if game.Lighting.Timestopping.Value == true then
		return;
	end;
	if game.Lighting.TS.Value == true then
		return;
	end;
	if game.Lighting.TSing.Value == true then
		return;
	end;
	if game.Lighting.TS.Value == true then
		return;
	end;
	u1 = true;
	u55 = true;
	u32 = true;
	u56 = true;
	u1 = false;
	l__Timestop__57:FireServer(2, "ShadowDio");
	l__Humanoid__8.WalkSpeed = 18;
	l__Humanoid__8.JumpPower = 50;
	task.wait(2);
	l__Untimestop__58:FireServer();
	u56 = false;
	u32 = false;
	task.wait(25);
	u55 = false;
end;
l__Humanoid__8.Died:Connect(function()
	if u56 == true then
		untimestop();
	end;
end);
function untimestop()
	l__Untimestop__58:FireServer();
end;
local u59 = false;
local l__STWChair__60 = l__ReplicatedStorage__1.STWChair;
local l__Theme__61 = l__StandHumanoidRootPart__11.Theme;
local l__Menacing__62 = l__ReplicatedStorage__1.Menacing;
function posefunc()
	if u1 == false then
		if u59 == false then
			if u59 == false then
				u1 = true;
				v21:Play(0.2, 1, 1);
				l__STWChair__60:FireServer(true);
				l__StandAppear__6:Play();
				l__Theme__61:Play();
				pcall(function()
					local v113, v114, v115 = pairs(l__Stand__10:GetChildren());
					while true do
						local v116, v117 = v113(v114, v115);
						if v116 then

						else
							break;
						end;
						v115 = v116;
						coroutine.resume(coroutine.create(function()
							local v118 = 1 - 1;
							while true do
								if v117 ~= l__StandHumanoidRootPart__11 then
									if v117.ClassName ~= "Sound" then
										if v117 ~= l__Stand__10.StandRarm then
											if v117 ~= l__Stand__10.StandLarm then
												if v117 ~= l__Stand__10["Stand Head"] then
													if not v117:IsA("BasePart") then
														if not v117:IsA("UnionOperation") then
															if not v117:IsA("MeshPart") then
																return;
															end;
														end;
													end;
													task.wait(0.03);
													l__Transparency__7:FireServer(v117, v117.Transparency - 0.2);
												end;
											end;
										end;
									end;
								end;
								if 0 <= 1 then
									if v118 < 5 then

									else
										break;
									end;
								elseif 5 < v118 then

								else
									break;
								end;
								v118 = v118 + 1;							
							end;
							if v117 ~= l__StandHumanoidRootPart__11 then
								if v117 ~= l__Stand__10.StandRarm then
									if v117 ~= l__Stand__10.StandLarm then
										if v117 ~= l__Stand__10["Stand Head"] then
											if not v117:IsA("BasePart") then
												if not v117:IsA("UnionOperation") then
													if not v117:IsA("MeshPart") then
														return;
													end;
												end;
											end;
											l__Transparency__7:FireServer(v117, 0);
										end;
									end;
								end;
							end;
						end));					
					end;
				end);
				l__Humanoid__8.WalkSpeed = 0;
				l__Humanoid__8.JumpPower = 0;
				task.wait(2);
				v21:AdjustSpeed(0);
				u59 = true;
				l__Menacing__62:FireServer(true);
				return;
			end;
		elseif u59 == true then
			print("yeah");
			pcall(function()
				local v119, v120, v121 = pairs(l__Stand__10:GetChildren());
				while true do
					local v122, v123 = v119(v120, v121);
					if v122 then

					else
						break;
					end;
					v121 = v122;
					coroutine.resume(coroutine.create(function()
						local v124 = 1 - 1;
						while true do
							if v123 ~= l__StandHumanoidRootPart__11 then
								if v123.ClassName ~= "Sound" then
									if v123 ~= l__Stand__10.StandRarm then
										if v123 ~= l__Stand__10.StandLarm then
											if v123 ~= l__Stand__10["Stand Head"] then
												if not v123:IsA("BasePart") then
													if not v123:IsA("UnionOperation") then
														if not v123:IsA("MeshPart") then
															return;
														end;
													end;
												end;
												task.wait(0.03);
												l__Transparency__7:FireServer(v123, v123.Transparency + 0.2);
											end;
										end;
									end;
								end;
							end;
							if 0 <= 1 then
								if v124 < 5 then

								else
									break;
								end;
							elseif 5 < v124 then

							else
								break;
							end;
							v124 = v124 + 1;						
						end;
						if v123 ~= l__StandHumanoidRootPart__11 then
							if v123 ~= l__Stand__10.StandRarm then
								if v123 ~= l__Stand__10.StandLarm then
									if v123 ~= l__Stand__10["Stand Head"] then
										if not v123:IsA("BasePart") then
											if not v123:IsA("UnionOperation") then
												if not v123:IsA("MeshPart") then
													return;
												end;
											end;
										end;
										l__Transparency__7:FireServer(v123, 1);
									end;
								end;
							end;
						end;
					end));				
				end;
			end);
			v21:AdjustSpeed(-1);
			l__Theme__61:Stop();
			u59 = false;
			task.wait(3);
			if l__Disabled__9.Value == false then
				l__Humanoid__8.WalkSpeed = 18;
				l__Humanoid__8.JumpPower = 50;
			elseif l__Disabled__9.Value == true then
				l__Humanoid__8.WalkSpeed = 4;
				l__Humanoid__8.JumpPower = 10;
			end;
			l__STWChair__60:FireServer(false);
			u1 = false;
			l__Menacing__62:FireServer(false);
		end;
	elseif u59 == true then
		print("yeah");
		pcall(function()
			v119, v120, v121 = pairs(l__Stand__10:GetChildren());
			while true do
				v122, v123 = v119(v120, v121);
				if v122 then

				else
					break;
				end;
				v121 = v122;
				coroutine.resume(coroutine.create(function()
					v124 = 1 - 1;
					while true do
						if v123 ~= l__StandHumanoidRootPart__11 then
							if v123.ClassName ~= "Sound" then
								if v123 ~= l__Stand__10.StandRarm then
									if v123 ~= l__Stand__10.StandLarm then
										if v123 ~= l__Stand__10["Stand Head"] then
											if not v123:IsA("BasePart") then
												if not v123:IsA("UnionOperation") then
													if not v123:IsA("MeshPart") then
														return;
													end;
												end;
											end;
											task.wait(0.03);
											l__Transparency__7:FireServer(v123, v123.Transparency + 0.2);
										end;
									end;
								end;
							end;
						end;
						if 0 <= 1 then
							if v124 < 5 then

							else
								break;
							end;
						elseif 5 < v124 then

						else
							break;
						end;
						v124 = v124 + 1;					
					end;
					if v123 ~= l__StandHumanoidRootPart__11 then
						if v123 ~= l__Stand__10.StandRarm then
							if v123 ~= l__Stand__10.StandLarm then
								if v123 ~= l__Stand__10["Stand Head"] then
									if not v123:IsA("BasePart") then
										if not v123:IsA("UnionOperation") then
											if not v123:IsA("MeshPart") then
												return;
											end;
										end;
									end;
									l__Transparency__7:FireServer(v123, 1);
								end;
							end;
						end;
					end;
				end));			
			end;
		end);
		v21:AdjustSpeed(-1);
		l__Theme__61:Stop();
		u59 = false;
		task.wait(3);
		if l__Disabled__9.Value == false then
			l__Humanoid__8.WalkSpeed = 18;
			l__Humanoid__8.JumpPower = 50;
		elseif l__Disabled__9.Value == true then
			l__Humanoid__8.WalkSpeed = 4;
			l__Humanoid__8.JumpPower = 10;
		end;
		l__STWChair__60:FireServer(false);
		u1 = false;
		l__Menacing__62:FireServer(false);
	end;
end;
local l__RoadRoller__63 = l__StandHumanoidRootPart__11.RoadRoller;
function roadroller()
	if u1 == true then
		return;
	end;
	if standappear == true then
		return;
	end;
	u1 = true;
	v20:Play();
	l__RoadRoller__63:Play();
	local v125, v126, v127 = pairs(l__Character__7.Steamroller:GetChildren());
	while true do
		local v128, v129 = v125(v126, v127);
		if v128 then

		else
			break;
		end;
		v127 = v128;
		coroutine.resume(coroutine.create(function()
			local v130 = 1 - 1;
			while true do
				if v129.ClassName == "UnionOperation" then
					task.wait(0.03);
					l__Transparency__7:FireServer(v129, v129.Transparency - 0.2);
				end;
				if 0 <= 1 then
					if v130 < 5 then

					else
						break;
					end;
				elseif 5 < v130 then

				else
					break;
				end;
				v130 = v130 + 1;			
			end;
			l__Transparency__7:FireServer(v129, 0);
		end));	
	end;
	task.wait(0.03);
	u1 = false;
	local v131, v132, v133 = pairs(l__Character__7.Steamroller:GetChildren());
	while true do
		local v134, v135 = v131(v132, v133);
		if v134 then

		else
			break;
		end;
		v133 = v134;
		coroutine.resume(coroutine.create(function()
			local v136 = 1 - 1;
			while true do
				if v135.ClassName == "UnionOperation" then
					task.wait(0.03);
					l__Transparency__7:FireServer(v135, v135.Transparency + 0.2);
				end;
				if 0 <= 1 then
					if v136 < 5 then

					else
						break;
					end;
				elseif 5 < v136 then

				else
					break;
				end;
				v136 = v136 + 1;			
			end;
			l__Transparency__7:FireServer(v135, 1);
		end));	
	end;
end;
dodgecooldown = false;
local l__Dodge__64 = l__StandHumanoidRootPart__11.Dodge;
local l__Dodge__65 = l__ReplicatedStorage__1.Dodge;
function dodge()
	if u1 == true then
		return;
	end;
	if dodgecooldown == true then
		return;
	end;
	u1 = true;
	dodgecooldown = true;
	v22:Play();
	l__Dodge__64:Play();
	l__Dodge__65:FireServer();
	local v137 = Instance.new("BodyVelocity");
	v137.MaxForce = Vector3.new(100000, 0, 100000);
	v137.P = math.huge;
	v137.Velocity = l__HumanoidRootPart__33.CFrame.lookVector * 50;
	v137.Parent = l__Character__7.HumanoidRootPart;
	game.Debris:AddItem(v137, 0.25);
	task.wait(0.4);
	u1 = false;
	task.wait(3);
	dodgecooldown = false;
end;
local u66 = false;
local l__Taunt__67 = l__ReplicatedStorage__1.Taunt;
local l__Head__68 = l__Character__7.Head;
function taunt()
	if u66 == true then
		return;
	end;
	u66 = true;
	local v138 = math.random(1, 2);
	if v138 == 1 then
		l__Taunt__67:FireServer(l__Head__68, "rbxassetid://4577516140", 4, 5.2, 0);
		return;
	end;
	if v138 == 2 then
		l__Taunt__67:FireServer(l__Head__68, "rbxassetid://4577531054", 4, 5.2, 0);
	end;
end;
local u69 = false;
local u70 = false;
local l__STWRTZ__71 = l__ReplicatedStorage__1.STWRTZ;
local u72 = false;
function STWRTZ()
	if u69 == true then
		return;
	end;
	if u70 == false then

	elseif u70 == true then
		if u72 == true then
			return;
		else
			u1 = false;
			u70 = false;
			u43 = "nodmg";
			u69 = true;
			v25:Stop(0.1);
			l__STWRTZ__71:FireServer(false);
			task.wait(12);
			u69 = false;
			return;
		end;
	else
		return;
	end;
	if u1 == true then
		return;
	end;
	u70 = true;
	u1 = true;
	v25:Play(0.1, 1, 1);
	u43 = "takedmg";
	l__STWRTZ__71:FireServer(true);
	task.wait(5);
	if u70 == false then
		return;
	end;
	u69 = true;
	l__STWRTZ__71:FireServer(false);
	v25:Stop(0.1);
	u43 = "nodmg";
	u1 = false;
	u70 = false;
	task.wait(12);
	u69 = false;
end;
local l__Torso__73 = l__Character__7.Torso;
mouse.Button1Down:connect(function()
	if l__Torso__73.Anchored == true then
		return;
	end;
	if l__Disabled__9.Value == true then
		return;
	end;
	punch();
end);
mouse.KeyDown:connect(function(p3)
	if l__Torso__73.Anchored == true then
		return;
	end;
	if l__Disabled__9.Value == true then
		return;
	end;
	if p3 == "e" then
		Uppercut();
	end;
	if p3 == "r" then
		strongpunch();
	end;
	if p3 == "q" then
		knifethrow();
	end;
	if p3 == "t" then
		spaceripperstingyeyes();
	end;
	if p3 == "b" then
		bloodsuck();
	end;
	if p3 == "y" then
		fleshbuds();
	end;
	if p3 == "x" then
		block();
	end;
	if p3 == "v" then
		tsteleport();
	end;
	if p3 == "h" then
		STWRTZ();
	end;
	if p3 == "f" then
		if game.Lighting.TS.Value == false then
			timestop();
		elseif game.Lighting.TS.Value == true then
			untimestop();
		end;
	end;
	if p3 == "z" then
		movement();
	end;
	if p3 == "c" then
		dodge();
	end;
	if p3 == "p" then
		posefunc();
	end;
	if p3 == "n" then
		taunt();
	end;
end);
local l__Damage__74 = l__ReplicatedStorage__1.Damage;
function hito(p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16)
	if l__Disabled__9.Value == true then
		return;
	end;
	local v139, v140, v141 = pairs(workspace.Entities:GetChildren());
	while true do
		local v142, v143 = v139(v140, v141);
		if v142 then

		else
			break;
		end;
		if p4.Anchored == true then
			return;
		end;
		if v143:FindFirstChild("Humanoid") then
			if v143:FindFirstChild("HumanoidRootPart") then
				if v143 ~= l__Character__7 then
					if (v143:FindFirstChild("HumanoidRootPart").Position - p4.Position).magnitude < p6 then
						if v143:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p4.Anchored then
								return;
							end;
							local l__HumanoidRootPart__144 = v143:FindFirstChild("HumanoidRootPart");
							l__Damage__74:FireServer(v143:FindFirstChild("Humanoid"), p5, p7, p9, p10, p11, p12, p13, p14, p15, p16);
							local v145 = Instance.new("StringValue");
							v145.Name = "alabo";
							v145.Parent = l__HumanoidRootPart__144;
							delay(p8, function()
								v145:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;
		if v143:FindFirstChild("Stand") then
			if v143.Stand:FindFirstChild("Stand Torso") then
				if v143 ~= l__Character__7 then
					if v143 ~= l__Character__7[l__Stand__10.Name] then
						if (v143.Stand:FindFirstChild("Stand Torso").Position - p4.Position).magnitude < p6 then
							if v143:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
								if p4.Anchored then
									return;
								end;
								local l__HumanoidRootPart__146 = v143:FindFirstChild("HumanoidRootPart");
								l__Damage__74:FireServer(v143:FindFirstChild("Humanoid"), p5, p7, p9, p10, p11, p12, p13, p14, p15, p16);
								local v147 = Instance.new("StringValue");
								v147.Name = "alabo";
								v147.Parent = l__HumanoidRootPart__146;
								delay(p8, function()
									v147:Destroy();
								end);
							end;
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__Knock__75 = l__ReplicatedStorage__1.Knock;
function hito2(p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29)
	if l__Disabled__9.Value == true then
		return;
	end;
	local v148, v149, v150 = pairs(workspace.Entities:GetChildren());
	while true do
		local v151, v152 = v148(v149, v150);
		if v151 then

		else
			break;
		end;
		if p17.Anchored == true then
			return;
		end;
		if v152:FindFirstChild("Humanoid") then
			if v152:FindFirstChild("HumanoidRootPart") then
				if v152 ~= l__Character__7 then
					if (v152:FindFirstChild("HumanoidRootPart").Position - p17.Position).magnitude < p19 then
						if v152:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p17.Anchored then
								return;
							end;
							local l__Humanoid__153 = v152:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__154 = v152:FindFirstChild("HumanoidRootPart");
							l__Damage__74:FireServer(l__Humanoid__153, p18, p20, p22, p23, p24, p25, p26, p27, p28, p29);
							l__Knock__75:FireServer(l__Humanoid__153);
							local v155 = Instance.new("StringValue");
							v155.Name = "alabo";
							v155.Parent = l__HumanoidRootPart__154;
							delay(p21, function()
								v155:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;
		if v152:FindFirstChild("Stand") then
			if v152.Stand:FindFirstChild("Stand Torso") then
				if v152 ~= l__Character__7 then
					if v152 ~= l__Character__7[l__Stand__10.Name] then
						if (v152.Stand:FindFirstChild("Stand Torso").Position - p17.Position).magnitude < p19 then
							if v152:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
								if p17.Anchored then
									return;
								end;
								local l__Humanoid__156 = v152:FindFirstChild("Humanoid");
								local l__HumanoidRootPart__157 = v152:FindFirstChild("HumanoidRootPart");
								l__Damage__74:FireServer(l__Humanoid__156, p18, p20, p22, p23, p24, p25, p26, p27, p28, p29);
								l__Knock__75:FireServer(l__Humanoid__156);
								local v158 = Instance.new("StringValue");
								v158.Name = "alabo";
								v158.Parent = l__HumanoidRootPart__157;
								delay(p21, function()
									v158:Destroy();
								end);
							end;
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__VampireDamage__76 = l__ReplicatedStorage__1.VampireDamage;
function hito3(p30, p31, p32, p33, p34, p35, p36)
	local v159, v160, v161 = pairs(workspace.Entities:GetChildren());
	while true do
		local v162, v163 = v159(v160, v161);
		if v162 then

		else
			break;
		end;
		v161 = v162;
		if p30.Anchored == true then
			return;
		end;
		if v163:FindFirstChild("Humanoid") then
			if v163:FindFirstChild("HumanoidRootPart") then
				if v163 ~= l__Character__7 then
					if (v163:FindFirstChild("HumanoidRootPart").Position - p30.Position).magnitude < p31 then
						if v163:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p30.Anchored then
								return;
							end;
							local l__Humanoid__164 = v163:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__165 = v163:FindFirstChild("HumanoidRootPart");
							l__VampireDamage__76:FireServer(l__Humanoid__164, p32, p34, p35, p36);
							l__Knock__75:FireServer(l__Humanoid__164);
							local v166 = Instance.new("StringValue");
							v166.Name = "alabo";
							v166.Parent = l__HumanoidRootPart__165;
							delay(p33, function()
								v166:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__VampireFreeze__77 = l__ReplicatedStorage__1.VampireFreeze;
function hito4(p37, p38, p39, p40, p41, p42, p43)
	local v167, v168, v169 = pairs(workspace.Entities:GetChildren());
	while true do
		local v170, v171 = v167(v168, v169);
		if v170 then

		else
			break;
		end;
		v169 = v170;
		if p37.Anchored == true then
			return;
		end;
		if v171:FindFirstChild("Humanoid") then
			if v171:FindFirstChild("HumanoidRootPart") then
				if v171 ~= l__Character__7 then
					if (v171:FindFirstChild("HumanoidRootPart").Position - p37.Position).magnitude < p38 then
						if v171:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p37.Anchored then
								return;
							end;
							local l__Humanoid__172 = v171:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__173 = v171:FindFirstChild("HumanoidRootPart");
							l__VampireFreeze__77:FireServer(l__Humanoid__172, p39, p41, p42, p43);
							local v174 = Instance.new("StringValue");
							v174.Name = "alabo";
							v174.Parent = l__HumanoidRootPart__173;
							delay(p40, function()
								v174:Destroy();
							end);
							task.wait(1);
							l__Knock__75:FireServer(l__Humanoid__172);
						end;
					end;
				end;
			end;
		end;	
	end;
end;
function hito5(p44, p45, p46, p47, p48, p49, p50, p51, p52, p53, p54, p55, p56)
	if l__Disabled__9.Value == true then
		return;
	end;
	local v175, v176, v177 = pairs(workspace.Entities:GetChildren());
	while true do
		local v178, v179 = v175(v176, v177);
		if v178 then

		else
			break;
		end;
		if p44.Anchored == true then
			return;
		end;
		if v179:FindFirstChild("Humanoid") then
			if v179:FindFirstChild("HumanoidRootPart") then
				if v179 ~= l__Character__7 then
					if (v179:FindFirstChild("HumanoidRootPart").Position - p44.Position).magnitude < p46 then
						if v179:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p44.Anchored then
								return;
							end;
							local l__Humanoid__180 = v179:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__181 = v179:FindFirstChild("HumanoidRootPart");
							l__Damage__74:FireServer(l__Humanoid__180, p45, p47, p49, p50, p51, p52, p53, p54, p55, p56);
							l__Knock__75:FireServer(l__Humanoid__180);
							local v182 = Instance.new("StringValue");
							v182.Name = "alabo";
							v182.Parent = l__HumanoidRootPart__181;
							delay(p48, function()
								v182:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;
		if v179:FindFirstChild("Stand") then
			if v179.Stand:FindFirstChild("Stand Torso") then
				if v179 ~= l__Character__7 then
					if v179 ~= l__Character__7[l__Stand__10.Name] then
						if (v179.Stand:FindFirstChild("Stand Torso").Position - p44.Position).magnitude < p46 then
							if v179:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
								if p44.Anchored then
									return;
								end;
								local l__Humanoid__183 = v179:FindFirstChild("Humanoid");
								local l__HumanoidRootPart__184 = v179:FindFirstChild("HumanoidRootPart");
								l__Damage__74:FireServer(l__Humanoid__183, p45, p47, p49, p50, p51, p52, p53, p54, p55, p56);
								l__Knock__75:FireServer(l__Humanoid__183);
								local v185 = Instance.new("StringValue");
								v185.Name = "alabo";
								v185.Parent = l__HumanoidRootPart__184;
								delay(p48, function()
									v185:Destroy();
								end);
							end;
						end;
					end;
				end;
			end;
		end;	
	end;
end;
l__ReplicatedStorage__1.BerserkClient.OnClientEvent:connect(function()
	game.Lighting.Ambient = Color3.fromRGB(0, 0, 122);
	game.Lighting.Berserk.Enabled = true;
	l__Humanoid__8.WalkSpeed = 4;
	l__Humanoid__8:SetStateEnabled(3, false);
	task.wait(2.5);
	l__Humanoid__8.WalkSpeed = 18;
	l__Humanoid__8:SetStateEnabled(3, true);
	game.Lighting.Ambient = Color3.fromRGB(150, 150, 150);
	game.Lighting.Berserk.Enabled = false;
end);
local l__Die__78 = l__StandHumanoidRootPart__11.Die;
local l__Death__79 = l__ReplicatedStorage__1.Death;
l__Humanoid__8.HealthChanged:connect(function()
	if l__Humanoid__8.Health < 1 then
		for v186, v187 in pairs(l__Stand__10:GetChildren()) do
			coroutine.resume(coroutine.create(function()
				for v188 = 1, 5 do
					if v187 ~= l__StandHumanoidRootPart__11 and v187.ClassName ~= "Sound" then
						task.wait(0.03);
						l__Transparency__7:FireServer(v187, v187.Transparency + 0.2);
						l__Transparency__7:FireServer(l__face__12, v187.Transparency + 0.2);
					end;
				end;
				if v187 ~= l__StandHumanoidRootPart__11 then
					l__Transparency__7:FireServer(v187, 1);
					l__Transparency__7:FireServer(l__face__12, 1);
				end;
			end));
		end;
		l__Humanoid__8:SetStateEnabled(3, false);
		l__Humanoid__8:SetStateEnabled(15, false);
		l__Die__78:Play();
		l__Death__79:FireServer(false);
	end;
end);
local l__Knocked__80 = l__ReplicatedStorage__1.Knocked;
local l__GetUp__81 = l__ReplicatedStorage__1.GetUp;
l__ReplicatedStorage__1.KnockClient.OnClientEvent:connect(function(p57)
	if l__Character__7.Block.Value == true then
		return;
	end;
	l__Knocked__80:FireServer();
	l__Humanoid__8:SetStateEnabled(3, false);
	task.wait(1.25);
	if l__Humanoid__8.Health >= 1 then
		l__GetUp__81:FireServer();
		l__Humanoid__8:SetStateEnabled(3, true);
	end;
end);
l__Taunt__67.OnClientEvent:Connect(function()
	u66 = false;
end);
l__VampireDamage__76.OnClientEvent:Connect(function()
	v24:Play(0.1, 1, 1);
	u19 = true;
	u1 = true;
	l__Bloodsuck__18:Play();
	task.wait(2);
	v24:Stop(0.2);
	u1 = false;
	l__Humanoid__8.JumpPower = 50;
	l__Trail__12:FireServer(l__Stand__10.StandRarm.Trail, false);
	u19 = false;
end);
local l__Voice2__82 = l__StandHumanoidRootPart__11.Voice2;
l__VampireFreeze__77.OnClientEvent:Connect(function()
	l__Humanoid__8.WalkSpeed = 0;
	u19 = true;
	task.wait(1);
	v23:Play(0.1, 1, 1);
	l__Voice2__82:Play();
	task.wait(1);
	l__Humanoid__8.WalkSpeed = 18;
	u1 = false;
	l__Humanoid__8.JumpPower = 50;
	l__Trail__12:FireServer(l__Stand__10.StandRarm.Trail, false);
	l__Trail__12:FireServer(l__Stand__10.StandLarm.Trail, false);
	u19 = false;
end);
task.wait(10);
u55 = false;
local l__HeavyPunch__83 = l__StandHumanoidRootPart__11.HeavyPunch;
local l__counterteleport__84 = l__StandHumanoidRootPart__11.counterteleport;
game.ReplicatedStorage.STWRTZClient.OnClientEvent:connect(function(p58)
	if u43 ~= "takedmg" then
		if u43 == "nodmg" then
			v25:Stop();
			l__counterteleport__84:Play();
			local l__Character__189 = p58.Character;
			local l__Humanoid__190 = l__Character__189.Humanoid;
			game.ReplicatedStorage.STWRTZ:FireServer(false);
			l__VoicelineThing1__9:Play();
			v25:Stop(0.1);
			u72 = true;
			u11:Play(0.1, 1, 1);
			if game.Lighting.TS.Value == false then
				game.Lighting.STWEffect.Enabled = true;
				spawn(function()
					task.wait(0.7);
					game.Lighting.STWEffect.Enabled = false;
				end);
			end;
			l__LocalPlayer__6.Character.HumanoidRootPart.CFrame = l__Character__189.HumanoidRootPart.CFrame - l__Character__189.HumanoidRootPart.CFrame.lookVector * 5;
			u1 = false;
			u70 = false;
			u69 = true;
			task.wait(5);
			u72 = false;
			task.wait(7);
			u69 = false;
		end;
		return;
	end;
	v25:Stop();
	l__HeavyPunch__83:Play();
	local l__Character__191 = p58.Character;
	game.ReplicatedStorage.STWRTZDMG:FireServer(l__Character__191.Humanoid);
	game.ReplicatedStorage.STWRTZ:FireServer(false);
	l__VoicelineThing1__9:Play();
	v25:Stop(0.1);
	u72 = true;
	u11:Play(0.1, 1, 1);
	if game.Lighting.TS.Value == false then
		game.Lighting.STWEffect.Enabled = true;
		spawn(function()
			task.wait(0.7);
			game.Lighting.STWEffect.Enabled = false;
		end);
	end;
	l__LocalPlayer__6.Character.HumanoidRootPart.CFrame = l__Character__191.HumanoidRootPart.CFrame - l__Character__191.HumanoidRootPart.CFrame.lookVector * 5;
	u1 = false;
	u70 = false;
	u69 = true;
	task.wait(5);
	u72 = false;
	task.wait(7);
	u69 = false;
end);
