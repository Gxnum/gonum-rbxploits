-- Decompiled with the Synapse X Luau decompiler.

local l__ReplicatedStorage__1 = game:GetService("ReplicatedStorage");
local l__Velocity__2 = l__ReplicatedStorage__1.Velocity;
local l__STWRTZDMG__3 = l__ReplicatedStorage__1.STWRTZDMG;
local l__LocalPlayer__4 = game:GetService("Players").LocalPlayer;
while true do
	wait();
	if l__LocalPlayer__4.Character and l__LocalPlayer__4.Character.Humanoid then
		break;
	end;
end;
local l__Character__5 = l__LocalPlayer__4.Character;
local l__Humanoid__6 = l__Character__5.Humanoid;
mouse = l__LocalPlayer__4:GetMouse();
cam = workspace.CurrentCamera;
l__ReplicatedStorage__1.Stand:FireServer("ShadowTheWorld", 18, 235);
local l__Disabled__7 = l__Character__5:WaitForChild("Disabled");
local l__Stand__8 = l__Character__5:WaitForChild("Stand");
local l__StandHumanoidRootPart__9 = l__Stand__8:WaitForChild("StandHumanoidRootPart");
local l__Stand_Head__10 = l__Stand__8:WaitForChild("Stand Head");
local l__face__11 = l__Stand_Head__10:WaitForChild("face");
local v12 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.KickBarrage);
local v13 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.TS);
local v14 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.Roller);
local v15 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.Pose1);
local v16 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.Pose2);
local v17 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.Roll);
local v18 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.IceShatter);
local v19 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.Grab);
local v20 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.FleshBuds);
local v21 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.RTZAnim);
local l__HeavyPunch__22 = l__StandHumanoidRootPart__9.HeavyPunch;
local l__Rush__23 = l__StandHumanoidRootPart__9.Rush;
local l__Iceshatter__24 = l__StandHumanoidRootPart__9.Iceshatter;
local u1 = false;
local u2 = true;
local u3 = false;
local u4 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.Nothing);
local u5 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.Idle);
local l__StandAppear__6 = l__StandHumanoidRootPart__9.StandAppear;
local l__Stand_Torso__7 = l__Stand__8:WaitForChild("Stand Torso");
local l__Transparency__8 = l__ReplicatedStorage__1.Transparency;
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
		local v25, v26, v27 = pairs(p1:GetChildren());
		while true do
			local v28, v29 = v25(v26, v27);
			if v28 then

			else
				break;
			end;
			v27 = v28;
			coroutine.resume(coroutine.create(function()
				local v30 = 1 - 1;
				while true do
					if v29 ~= l__StandHumanoidRootPart__9 then
						if v29.ClassName ~= "Sound" then
							if v29 ~= p1.StandRarm then
								if v29 ~= p1.StandLarm then
									if v29 ~= p1["Stand Head"] then
										if v29 ~= l__Stand_Torso__7 then
											wait();
											l__Transparency__8:FireServer(v29, v29.Transparency - 0.2);
										end;
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v30 < 5 then

						else
							break;
						end;
					elseif 5 < v30 then

					else
						break;
					end;
					v30 = v30 + 1;				
				end;
				if v29 ~= l__StandHumanoidRootPart__9 then
					if v29 ~= p1.StandRarm then
						if v29 ~= p1.StandLarm then
							if v29 ~= l__Stand_Torso__7 then
								l__Transparency__8:FireServer(v29, 0);
							end;
						end;
					end;
				end;
			end));		
		end;
	elseif u3 == true then
		u3 = false;
		u5:Stop();
		u4:Play(0.2, 1, 1);
		local v31, v32, v33 = pairs(p1:GetChildren());
		while true do
			local v34, v35 = v31(v32, v33);
			if v34 then

			else
				break;
			end;
			v33 = v34;
			coroutine.resume(coroutine.create(function()
				local v36 = 1 - 1;
				while true do
					if v35 ~= l__StandHumanoidRootPart__9 then
						if v35.ClassName ~= "Sound" then
							if v35 ~= p1.StandRarm then
								if v35 ~= p1.StandLarm then
									if v35 ~= p1["Stand Head"] then
										if v35 ~= l__Stand_Torso__7 then
											wait();
											l__Transparency__8:FireServer(v35, v35.Transparency + 0.2);
										end;
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v36 < 5 then

						else
							break;
						end;
					elseif 5 < v36 then

					else
						break;
					end;
					v36 = v36 + 1;				
				end;
				if v35 ~= l__StandHumanoidRootPart__9 then
					if v35 ~= p1.StandRarm then
						if v35 ~= p1.StandLarm then
							if v35 ~= l__Stand_Torso__7 then
								l__Transparency__8:FireServer(v35, 1);
							end;
						end;
					end;
				end;
			end));		
		end;
	end;
	wait(2.5);
	u2 = false;
end;
local u9 = false;
local l__VoicelineThing1__10 = l__StandHumanoidRootPart__9.VoicelineThing1;
local u11 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.AttackPose);
local u12 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.PunchUppercut);
local l__Trail__13 = l__ReplicatedStorage__1.Trail;
local l__Stand_Right_Arm__14 = l__Stand__8:WaitForChild("Stand Right Arm");
local l__StrongPunch__15 = l__ReplicatedStorage__1.StrongPunch;
function Uppercut()
	if u1 == true then
		return;
	end;
	if u9 == true then
		return;
	end;
	u9 = true;
	l__VoicelineThing1__10:Play();
	if game.Lighting.TS.Value == false then
		game.Lighting.STWEffect.Enabled = true;
		spawn(function()
			wait(0.4);
			game.Lighting.STWEffect.Enabled = false;
		end);
	end;
	l__StandAppear__6:Play();
	local v37, v38, v39 = pairs(l__Stand__8:GetChildren());
	while true do
		local v40, v41 = v37(v38, v39);
		if v40 then

		else
			break;
		end;
		v39 = v40;
		coroutine.resume(coroutine.create(function()
			local v42 = 1 - 1;
			while true do
				if v41 ~= l__StandHumanoidRootPart__9 then
					if v41.ClassName ~= "Sound" then
						if v41 ~= l__Stand__8.StandRarm then
							if v41 ~= l__Stand__8.StandLarm then
								if v41 ~= l__Stand__8["Stand Head"] then
									if v41 ~= l__Stand_Torso__7 then
										wait();
										l__Transparency__8:FireServer(v41, v41.Transparency - 0.2);
									end;
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v42 < 5 then

					else
						break;
					end;
				elseif 5 < v42 then

				else
					break;
				end;
				v42 = v42 + 1;			
			end;
			if v41 ~= l__StandHumanoidRootPart__9 then
				if v41 ~= l__Stand__8.StandRarm then
					if v41 ~= l__Stand__8.StandLarm then
						if v41 ~= l__Stand__8["Stand Head"] then
							if v41 ~= l__Stand_Torso__7 then
								l__Transparency__8:FireServer(v41, 0);
							end;
						end;
					end;
				end;
			end;
		end));	
	end;
	u11:Play();
	u1 = true;
	l__Humanoid__6.JumpPower = 0;
	u12:Play(0.1, 1, 1);
	l__Trail__13:FireServer(l__Stand_Right_Arm__14.Trail, true);
	l__StrongPunch__15:FireServer(Vector3.new(0.5, 0.5, 0.5), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Lilac"));
	coroutine.resume(coroutine.create(function()
		local v43 = 1 - 1;
		while true do
			wait();
			hito2(l__Stand_Right_Arm__14, l__Stand_Right_Arm__14.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 3, 65, 0.75, 0.25, l__StandHumanoidRootPart__9.CFrame.lookVector * 50, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 10);
			if 0 <= 1 then
				if v43 < 15 then

				else
					break;
				end;
			elseif 15 < v43 then

			else
				break;
			end;
			v43 = v43 + 1;		
		end;
	end));
	wait(0.65);
	u12:Stop();
	u1 = false;
	l__Trail__13:FireServer(l__Stand_Right_Arm__14.Trail, false);
	u11:Stop();
	l__Humanoid__6.JumpPower = 50;
	local v44, v45, v46 = pairs(l__Stand__8:GetChildren());
	while true do
		local v47, v48 = v44(v45, v46);
		if v47 then

		else
			break;
		end;
		v46 = v47;
		coroutine.resume(coroutine.create(function()
			local v49 = 1 - 1;
			while true do
				if v48 ~= l__StandHumanoidRootPart__9 then
					if v48.ClassName ~= "Sound" then
						if v48 ~= l__Stand__8.StandRarm then
							if v48 ~= l__Stand__8.StandLarm then
								if v48 ~= l__Stand__8["Stand Head"] then
									if v48 ~= l__Stand_Torso__7 then
										wait();
										l__Transparency__8:FireServer(v48, v48.Transparency + 0.2);
									end;
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v49 < 5 then

					else
						break;
					end;
				elseif 5 < v49 then

				else
					break;
				end;
				v49 = v49 + 1;			
			end;
			if v48 ~= l__StandHumanoidRootPart__9 then
				if v48 ~= l__Stand__8.StandRarm then
					if v48 ~= l__Stand__8.StandLarm then
						if v48 ~= l__Stand__8["Stand Head"] then
							if v48 ~= l__Stand_Torso__7 then
								l__Transparency__8:FireServer(v48, 1);
							end;
						end;
					end;
				end;
			end;
		end));	
	end;
	wait(2.5);
	u9 = false;
end;
local u16 = false;
local u17 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.BloodSuck);
local l__Punch__18 = l__StandHumanoidRootPart__9.Punch;
local l__Bloodsuck__19 = l__StandHumanoidRootPart__9.Bloodsuck;
local u20 = false;
function bloodsuck()
	if u1 == true then
		return;
	end;
	if u16 == true then
		return;
	end;
	u16 = true;
	u1 = true;
	l__Humanoid__6.JumpPower = 0;
	u17:Play(0.1, 1, 1);
	l__Trail__13:FireServer(l__Stand__8.StandRarm.Trail, true);
	wait(0.5);
	l__Punch__18:Play();
	l__Bloodsuck__19:Play();
	coroutine.resume(coroutine.create(function()
		local v50 = 1 - 1;
		while true do
			wait();
			hito3(l__Stand__8.StandRarm, 2.5, 75, 0.5, 0.25, l__StandHumanoidRootPart__9.CFrame.lookVector * 0);
			if 0 <= 1 then
				if v50 < 10 then

				else
					break;
				end;
			elseif 10 < v50 then

			else
				break;
			end;
			v50 = v50 + 1;		
		end;
	end));
	wait(0.65);
	if u20 == false then
		l__Humanoid__6.JumpPower = 50;
		u1 = false;
		l__Trail__13:FireServer(l__Stand__8.StandRarm.Trail, false);
	end;
	wait(10);
	u16 = false;
end;
local u21 = false;
local u22 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.Block);
local l__Block__23 = l__ReplicatedStorage__1.Block;
local l__Guard__24 = l__StandHumanoidRootPart__9.Guard;
function block()
	if u21 == true then
		return;
	end;
	if u1 == true then
		return;
	end;
	u1 = true;
	l__StandAppear__6:Play();
	local v51, v52, v53 = pairs(l__Stand__8:GetChildren());
	while true do
		local v54, v55 = v51(v52, v53);
		if v54 then

		else
			break;
		end;
		v53 = v54;
		coroutine.resume(coroutine.create(function()
			local v56 = 1 - 1;
			while true do
				if v55 ~= l__StandHumanoidRootPart__9 then
					if v55.ClassName ~= "Sound" then
						if v55 ~= l__Stand__8.StandRarm then
							if v55 ~= l__Stand__8.StandLarm then
								if v55 ~= l__Stand__8["Stand Head"] then
									if v55 ~= l__Stand_Torso__7 then
										wait();
										l__Transparency__8:FireServer(v55, v55.Transparency - 0.2);
									end;
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v56 < 5 then

					else
						break;
					end;
				elseif 5 < v56 then

				else
					break;
				end;
				v56 = v56 + 1;			
			end;
			if v55 ~= l__StandHumanoidRootPart__9 then
				if v55 ~= l__Stand__8.StandRarm then
					if v55 ~= l__Stand__8.StandLarm then
						if v55 ~= l__Stand__8["Stand Head"] then
							if v55 ~= l__Stand_Torso__7 then
								l__Transparency__8:FireServer(v55, 0);
							end;
						end;
					end;
				end;
			end;
		end));	
	end;
	local u25 = true;
	local v57 = mouse.KeyUp:connect(function(p2)
		if p2 == "x" then
			u25 = false;
		end;
	end);
	u22:Play(0.1, 1, 1);
	l__Block__23:FireServer(true);
	u21 = true;
	l__Guard__24:Play();
	l__Humanoid__6.JumpPower = 0;
	while true do
		wait();
		if u25 ~= false then

		else
			break;
		end;	
	end;
	local v58, v59, v60 = pairs(l__Stand__8:GetChildren());
	while true do
		local v61, v62 = v58(v59, v60);
		if v61 then

		else
			break;
		end;
		v60 = v61;
		coroutine.resume(coroutine.create(function()
			local v63 = 1 - 1;
			while true do
				if v62 ~= l__StandHumanoidRootPart__9 then
					if v62.ClassName ~= "Sound" then
						if v62 ~= l__Stand__8.StandRarm then
							if v62 ~= l__Stand__8.StandLarm then
								if v62 ~= l__Stand__8["Stand Head"] then
									if v62 ~= l__Stand_Torso__7 then
										wait();
										l__Transparency__8:FireServer(v62, v62.Transparency + 0.2);
									end;
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v63 < 5 then

					else
						break;
					end;
				elseif 5 < v63 then

				else
					break;
				end;
				v63 = v63 + 1;			
			end;
			if v62 ~= l__StandHumanoidRootPart__9 then
				if v62 ~= l__Stand__8.StandRarm then
					if v62 ~= l__Stand__8.StandLarm then
						if v62 ~= l__Stand__8["Stand Head"] then
							if v62 ~= l__Stand_Torso__7 then
								l__Transparency__8:FireServer(v62, 1);
							end;
						end;
					end;
				end;
			end;
		end));	
	end;
	l__Block__23:FireServer(false);
	u22:Stop(0.1);
	l__Humanoid__6.JumpPower = 50;
	u1 = false;
	wait(3);
	u21 = false;
end;
local u26 = false;
local u27 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.RightPunch);
local u28 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.LeftPunch);
local l__Stand_Left_Arm__29 = l__Stand__8:WaitForChild("Stand Left Arm");
function punch()
	if u1 == true then
		return;
	end;
	u1 = true;
	l__Punch__18:Play();
	u11:Play();
	l__StandAppear__6:Play();
	l__StandAppear__6.Volume = l__StandAppear__6.Volume - 1;
	local v64, v65, v66 = pairs(l__Stand__8:GetChildren());
	while true do
		local v67, v68 = v64(v65, v66);
		if v67 then

		else
			break;
		end;
		v66 = v67;
		coroutine.resume(coroutine.create(function()
			local v69 = 1 - 1;
			while true do
				if v68 ~= l__StandHumanoidRootPart__9 then
					if v68.ClassName ~= "Sound" then
						if v68 ~= l__Stand__8.StandRarm then
							if v68 ~= l__Stand__8.StandLarm then
								if v68 ~= l__Stand__8["Stand Head"] then
									if v68 ~= l__Stand__8["Stand Torso"] then
										wait();
										l__Transparency__8:FireServer(v68, v68.Transparency - 0.2);
									end;
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v69 < 5 then

					else
						break;
					end;
				elseif 5 < v69 then

				else
					break;
				end;
				v69 = v69 + 1;			
			end;
			if v68 ~= l__StandHumanoidRootPart__9 then
				if v68 ~= l__Stand__8.StandRarm then
					if v68 ~= l__Stand__8.StandLarm then
						if v68 ~= l__Stand__8["Stand Head"] then
							if v68 ~= l__Stand__8["Stand Torso"] then
								l__Transparency__8:FireServer(v68, 0);
							end;
						end;
					end;
				end;
			end;
		end));	
	end;
	l__Humanoid__6.JumpPower = 0;
	if u26 == false then
		u26 = true;
		u27:Play(0.1, 1, 1);
		l__Trail__13:FireServer(l__Stand_Right_Arm__14.Trail, true);
		wait(0.2);
		l__StandAppear__6.Volume = l__StandAppear__6.Volume + 1;
		local v70, v71, v72 = pairs(l__Stand__8:GetChildren());
		while true do
			local v73, v74 = v70(v71, v72);
			if v73 then

			else
				break;
			end;
			v72 = v73;
			coroutine.resume(coroutine.create(function()
				local v75 = 1 - 1;
				while true do
					if v74 ~= l__StandHumanoidRootPart__9 then
						if v74.ClassName ~= "Sound" then
							if v74 ~= l__Stand__8.StandRarm then
								if v74 ~= l__Stand__8.StandLarm then
									if v74 ~= l__Stand__8["Stand Head"] then
										if v74 ~= l__Stand__8["Stand Torso"] then
											wait();
											l__Transparency__8:FireServer(v74, v74.Transparency + 0.2);
										end;
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v75 < 5 then

						else
							break;
						end;
					elseif 5 < v75 then

					else
						break;
					end;
					v75 = v75 + 1;				
				end;
				if v74 ~= l__StandHumanoidRootPart__9 then
					if v74 ~= l__Stand__8.StandRarm then
						if v74 ~= l__Stand__8.StandLarm then
							if v74 ~= l__Stand__8["Stand Head"] then
								if v74 ~= l__Stand__8["Stand Torso"] then
									l__Transparency__8:FireServer(v74, 1);
								end;
							end;
						end;
					end;
				end;
			end));		
		end;
		coroutine.resume(coroutine.create(function()
			local v76 = 1 - 1;
			while true do
				wait();
				hito(l__Stand_Right_Arm__14, l__Stand_Right_Arm__14.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 11, 0.5, 0.25, l__StandHumanoidRootPart__9.CFrame.lookVector * 10, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 25);
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
		end));
	elseif u26 == true then
		u26 = false;
		u28:Play(0.1, 1, 1);
		l__Trail__13:FireServer(l__Stand_Left_Arm__29.Trail, true);
		wait(0.2);
		l__StandAppear__6.Volume = l__StandAppear__6.Volume + 1;
		local v77, v78, v79 = pairs(l__Stand__8:GetChildren());
		while true do
			local v80, v81 = v77(v78, v79);
			if v80 then

			else
				break;
			end;
			v79 = v80;
			coroutine.resume(coroutine.create(function()
				local v82 = 1 - 1;
				while true do
					if v81 ~= l__StandHumanoidRootPart__9 then
						if v81.ClassName ~= "Sound" then
							if v81 ~= l__Stand__8.StandRarm then
								if v81 ~= l__Stand__8.StandLarm then
									if v81 ~= l__Stand__8["Stand Head"] then
										if v81 ~= l__Stand__8["Stand Torso"] then
											wait();
											l__Transparency__8:FireServer(v81, v81.Transparency + 0.2);
										end;
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v82 < 5 then

						else
							break;
						end;
					elseif 5 < v82 then

					else
						break;
					end;
					v82 = v82 + 1;				
				end;
				if v81 ~= l__StandHumanoidRootPart__9 then
					if v81 ~= l__Stand__8.StandRarm then
						if v81 ~= l__Stand__8.StandLarm then
							if v81 ~= l__Stand__8["Stand Head"] then
								if v81 ~= l__Stand__8["Stand Torso"] then
									l__Transparency__8:FireServer(v81, 1);
								end;
							end;
						end;
					end;
				end;
			end));		
		end;
		coroutine.resume(coroutine.create(function()
			local v83 = 1 - 1;
			while true do
				wait();
				hito(l__Stand_Left_Arm__29, l__Stand_Left_Arm__29.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 11, 0.5, 0.25, l__StandHumanoidRootPart__9.CFrame.lookVector * 10, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 25);
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
		end));
	end;
	wait(0.35);
	u11:Stop();
	l__Humanoid__6.JumpPower = 50;
	u1 = false;
	l__Trail__13:FireServer(l__Stand_Right_Arm__14.Trail, false);
	l__Trail__13:FireServer(l__Stand_Left_Arm__29.Trail, false);
end;
local u30 = false;
local u31 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.StrongPunch);
function strongpunch()
	if u1 == true then
		return;
	end;
	if u30 == true then
		return;
	end;
	u1 = true;
	u30 = true;
	u11:Play();
	l__VoicelineThing1__10:Play();
	if game.Lighting.TS.Value == false then
		game.Lighting.STWEffect.Enabled = true;
		spawn(function()
			wait(0.7);
			game.Lighting.STWEffect.Enabled = false;
		end);
	end;
	l__StandAppear__6:Play();
	local v84, v85, v86 = pairs(l__Stand__8:GetChildren());
	while true do
		local v87, v88 = v84(v85, v86);
		if v87 then

		else
			break;
		end;
		v86 = v87;
		coroutine.resume(coroutine.create(function()
			local v89 = 1 - 1;
			while true do
				if v88 ~= l__StandHumanoidRootPart__9 then
					if v88.ClassName ~= "Sound" then
						if v88 ~= l__Stand__8.StandRarm then
							if v88 ~= l__Stand__8.StandLarm then
								if v88 ~= l__Stand__8["Stand Head"] then
									if v88 ~= l__Stand__8["Stand Torso"] then
										wait();
										l__Transparency__8:FireServer(v88, v88.Transparency - 0.2);
									end;
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v89 < 5 then

					else
						break;
					end;
				elseif 5 < v89 then

				else
					break;
				end;
				v89 = v89 + 1;			
			end;
			if v88 ~= l__StandHumanoidRootPart__9 then
				if v88 ~= l__Stand__8.StandRarm then
					if v88 ~= l__Stand__8.StandLarm then
						if v88 ~= l__Stand__8["Stand Head"] then
							if v88 ~= l__Stand__8["Stand Torso"] then
								l__Transparency__8:FireServer(v88, 0);
							end;
						end;
					end;
				end;
			end;
		end));	
	end;
	l__Humanoid__6.JumpPower = 0;
	u31:Play(0.1, 1, 1);
	l__Trail__13:FireServer(l__Stand_Right_Arm__14.Trail, true);
	coroutine.resume(coroutine.create(function()
		local v90 = 1 - 1;
		while true do
			wait();
			hito(l__Stand_Right_Arm__14, l__Stand_Right_Arm__14.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 45, 0.2, 0.25, l__StandHumanoidRootPart__9.CFrame.lookVector * 2.5, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 50);
			hito(l__Stand_Left_Arm__29, l__Stand_Left_Arm__29.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 45, 0.2, 0.25, l__StandHumanoidRootPart__9.CFrame.lookVector * 2.5, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 50);
			if 0 <= 1 then
				if v90 < 20 then

				else
					break;
				end;
			elseif 20 < v90 then

			else
				break;
			end;
			v90 = v90 + 1;		
		end;
	end));
	wait(0.5);
	l__StrongPunch__15:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Lilac"));
	wait(0.5);
	local v91, v92, v93 = pairs(l__Stand__8:GetChildren());
	while true do
		local v94, v95 = v91(v92, v93);
		if v94 then

		else
			break;
		end;
		v93 = v94;
		coroutine.resume(coroutine.create(function()
			local v96 = 1 - 1;
			while true do
				if v95 ~= l__StandHumanoidRootPart__9 then
					if v95.ClassName ~= "Sound" then
						if v95 ~= l__Stand__8.StandRarm then
							if v95 ~= l__Stand__8.StandLarm then
								if v95 ~= l__Stand__8["Stand Head"] then
									if v95 ~= l__Stand__8["Stand Torso"] then
										wait();
										l__Transparency__8:FireServer(v95, v95.Transparency + 0.2);
									end;
								end;
							end;
						end;
					end;
				end;
				if 0 <= 1 then
					if v96 < 5 then

					else
						break;
					end;
				elseif 5 < v96 then

				else
					break;
				end;
				v96 = v96 + 1;			
			end;
			if v95 ~= l__StandHumanoidRootPart__9 then
				if v95 ~= l__Stand__8.StandRarm then
					if v95 ~= l__Stand__8.StandLarm then
						if v95 ~= l__Stand__8["Stand Head"] then
							if v95 ~= l__Stand__8["Stand Torso"] then
								l__Transparency__8:FireServer(v95, 1);
							end;
						end;
					end;
				end;
			end;
		end));	
	end;
	l__Trail__13:FireServer(l__Stand_Right_Arm__14.Trail, false);
	u11:Stop();
	l__Humanoid__6.JumpPower = 50;
	u1 = false;
	wait(5);
	u30 = false;
end;
local u32 = false;
local u33 = false;
local l__HumanoidRootPart__34 = l__Character__5.HumanoidRootPart;
local l__Donut__35 = l__ReplicatedStorage__1.Donut;
function donut()
	if u1 == true then
		return;
	end;
	if u32 == true then
		return;
	end;
	if u33 == true then
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
			if (mouse.Target.Parent:FindFirstChild("HumanoidRootPart").Position - l__HumanoidRootPart__34.Position).magnitude < 40 then
				u32 = true;
				l__Donut__35:FireServer(mouse.Target.Parent, 150);
				wait(20);
				u32 = false;
			end;
		end;
	end;
end;
local u36 = false;
local u37 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.KnifeThrow);
local l__STWKnife__38 = l__ReplicatedStorage__1.STWKnife;
local u39 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.TSKnifeThrow);
function knifethrow()
	if u1 == true then
		return;
	end;
	if u36 == true then
		return;
	end;
	if game.Lighting.TS.Value == false then
		u36 = true;
		u1 = true;
		u37:Play(0.1, 1, 1);
		l__Transparency__8:FireServer(l__Character__5.HoldSTWKnife:GetChildren(), 0, true);
		wait(0.5);
		spawn(function()
			l__STWKnife__38:FireServer();
			l__Punch__18:Play();
		end);
		l__Transparency__8:FireServer(l__Character__5.HoldSTWKnife:GetChildren(), 1, false);
		wait(0.5);
		u1 = false;
		if l__Character__5.TS.Value == false then
			wait(1);
			u36 = false;
			return;
		end;
		if l__Character__5.TS.Value == true then
			u36 = false;
			return;
		end;
	else
		u36 = true;
		u1 = true;
		u39:Play(0.1, 1, 1);
		l__StandAppear__6:Play();
		local v97, v98, v99 = pairs(l__Stand__8:GetChildren());
		while true do
			local v100, v101 = v97(v98, v99);
			if v100 then

			else
				break;
			end;
			v99 = v100;
			coroutine.resume(coroutine.create(function()
				local v102 = 1 - 1;
				while true do
					if v101 ~= l__StandHumanoidRootPart__9 then
						if v101.ClassName ~= "Sound" then
							if v101 ~= l__Stand__8.StandRarm then
								if v101 ~= l__Stand__8.StandLarm then
									if v101 ~= l__Stand__8["Stand Head"] then
										if v101 ~= l__Stand__8["Stand Torso"] then
											wait();
											l__Transparency__8:FireServer(v101, v101.Transparency - 0.2);
										end;
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v102 < 5 then

						else
							break;
						end;
					elseif 5 < v102 then

					else
						break;
					end;
					v102 = v102 + 1;				
				end;
				if v101 ~= l__StandHumanoidRootPart__9 then
					if v101 ~= l__Stand__8.StandRarm then
						if v101 ~= l__Stand__8.StandLarm then
							if v101 ~= l__Stand__8["Stand Head"] then
								if v101 ~= l__Stand__8["Stand Torso"] then
									l__Transparency__8:FireServer(v101, 0);
								end;
							end;
						end;
					end;
				end;
			end));		
		end;
		l__Transparency__8:FireServer(l__Character__5.HoldSTWKnife:GetChildren(), 1, false);
		wait(0.5);
		l__STWKnife__38:FireServer();
		l__Punch__18:Play();
		l__STWKnife__38:FireServer();
		l__Punch__18:Play();
		l__STWKnife__38:FireServer();
		l__Punch__18:Play();
		l__STWKnife__38:FireServer();
		l__Punch__18:Play();
		l__STWKnife__38:FireServer();
		l__Punch__18:Play();
		l__STWKnife__38:FireServer();
		l__Punch__18:Play();
		l__STWKnife__38:FireServer();
		l__Punch__18:Play();
		l__STWKnife__38:FireServer();
		l__Punch__18:Play();
		l__Transparency__8:FireServer(l__Character__5.HoldSTWKnife:GetChildren(), 1, false);
		wait(0.5);
		u1 = false;
		local v103, v104, v105 = pairs(l__Stand__8:GetChildren());
		while true do
			local v106, v107 = v103(v104, v105);
			if v106 then

			else
				break;
			end;
			v105 = v106;
			coroutine.resume(coroutine.create(function()
				local v108 = 1 - 1;
				while true do
					if v107 ~= l__StandHumanoidRootPart__9 then
						if v107.ClassName ~= "Sound" then
							if v107 ~= l__Stand__8.StandRarm then
								if v107 ~= l__Stand__8.StandLarm then
									if v107 ~= l__Stand__8["Stand Head"] then
										if v107 ~= l__Stand__8["Stand Torso"] then
											wait();
											l__Transparency__8:FireServer(v107, v107.Transparency + 0.2);
										end;
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v108 < 5 then

						else
							break;
						end;
					elseif 5 < v108 then

					else
						break;
					end;
					v108 = v108 + 1;				
				end;
				if v107 ~= l__StandHumanoidRootPart__9 then
					if v107 ~= l__Stand__8.StandRarm then
						if v107 ~= l__Stand__8.StandLarm then
							if v107 ~= l__Stand__8["Stand Head"] then
								if v107 ~= l__Stand__8["Stand Torso"] then
									l__Transparency__8:FireServer(v107, 1);
								end;
							end;
						end;
					end;
				end;
			end));		
		end;
		if l__Character__5.TS.Value == false then
			wait(1.5);
			u36 = false;
			return;
		end;
		if l__Character__5.TS.Value == true then
			u36 = false;
		end;
	end;
end;
local u40 = false;
local u41 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.Lunge);
local l__Voice1__42 = l__StandHumanoidRootPart__9.Voice1;
function freeze()
	if u1 == true then
		return;
	end;
	if u40 == true then
		return;
	end;
	u40 = true;
	u1 = true;
	l__Humanoid__6.JumpPower = 0;
	u41:Play(0.1, 1, 1);
	l__Trail__13:FireServer(l__Stand__8.StandRarm.Trail, true);
	l__Trail__13:FireServer(l__Stand__8.StandLarm.Trail, true);
	l__Voice1__42:Play();
	wait(0.5);
	l__Punch__18:Play();
	coroutine.resume(coroutine.create(function()
		local v109 = 1 - 1;
		while true do
			wait();
			hito4(l__Stand__8.StandRarm, 2.5, 125, 1, 0.75, l__StandHumanoidRootPart__9.CFrame.lookVector * 50);
			hito4(l__Stand__8.StandLarm, 2.5, 125, 1, 0.75, l__StandHumanoidRootPart__9.CFrame.lookVector * 50);
			if 0 <= 1 then
				if v109 < 15 then

				else
					break;
				end;
			elseif 15 < v109 then

			else
				break;
			end;
			v109 = v109 + 1;		
		end;
	end));
	wait(0.65);
	if u20 == false then
		u1 = false;
		l__Humanoid__6.JumpPower = 50;
		l__Trail__13:FireServer(l__Stand__8.StandRarm.Trail, false);
		l__Trail__13:FireServer(l__Stand__8.StandLarm.Trail, false);
	end;
	wait(25);
	u40 = false;
end;
local u43 = false;
function fleshbuds()
	if u1 == true then
		return;
	end;
	if u43 == true then
		return;
	end;
	u1 = true;
	u43 = true;
	l__Humanoid__6.WalkSpeed = 0;
	l__Humanoid__6.JumpPower = 0;
	game:GetService("ReplicatedStorage").FleshBud:FireServer();
	u1 = false;
	l__Humanoid__6.WalkSpeed = 18;
	l__Humanoid__6.JumpPower = 50;
	wait(5);
	u43 = false;
end;
local u44 = false;
function tsteleport()
	if u1 == true then
		return;
	end;
	if u44 == true then
		return;
	end;
	local l__p__110 = mouse.Hit.p;
	if (l__Character__5.HumanoidRootPart.Position - l__p__110).magnitude < 35 then
		u44 = true;
		l__Character__5.HumanoidRootPart.CFrame = CFrame.new(l__p__110) + Vector3.new(0, 2, 0);
		l__VoicelineThing1__10:Play();
		if game.Lighting.TS.Value == false then
			game.Lighting.STWEffect.Enabled = true;
			spawn(function()
				wait(0.2);
				game.Lighting.STWEffect.Enabled = false;
			end);
		end;
		wait(5);
		u44 = false;
	end;
end;
local u45 = false;
local u46 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.StandJump);
local l__StandJumpSFX__47 = l__StandHumanoidRootPart__9.StandJumpSFX;
local l__Jump__48 = l__ReplicatedStorage__1.Jump;
function movement()
	if u1 == true then
		return;
	end;
	if u45 == true then
		return;
	end;
	if u3 == false then
		return;
	end;
	u45 = true;
	u1 = true;
	u46:Play(0.1, 1, 1);
	l__StandJumpSFX__47:Play();
	l__Jump__48:FireServer(BrickColor.new("Institutional white"));
	local v111 = Instance.new("BodyPosition", l__HumanoidRootPart__34);
	v111.maxForce = Vector3.new(100000, 100000, 100000);
	v111.Position = l__HumanoidRootPart__34.CFrame * CFrame.new(0, 50, -75).p;
	game.Debris:AddItem(v111, 1);
	wait(1);
	u1 = false;
	wait(14);
	u45 = false;
end;
local u49 = false;
local u50 = l__Humanoid__6:LoadAnimation(l__StandHumanoidRootPart__9.SpaceRipper);
local l__StingyEyes__51 = l__StandHumanoidRootPart__9.StingyEyes;
local l__SpaceRipperStingyEyes__52 = l__ReplicatedStorage__1.SpaceRipperStingyEyes;
function spaceripperstingyeyes()
	if u49 == true then
		return;
	end;
	if u1 == true then
		return;
	end;
	u1 = true;
	u49 = true;
	u50:Play(0.1, 1, 1);
	wait(0.6);
	l__StingyEyes__51:Play();
	l__SpaceRipperStingyEyes__52:FireServer();
	wait(0.3);
	u1 = false;
	wait(3);
	u49 = false;
end;
local u53 = true;
local u54 = false;
local l__Timestop2__55 = l__ReplicatedStorage__1.Timestop2;
local l__Untimestop__56 = l__ReplicatedStorage__1.Untimestop;
function timestop()
	if u1 == true then
		return;
	end;
	if u53 == true then
		return;
	end;
	if u33 == true then
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
	u53 = true;
	u33 = true;
	u54 = true;
	u1 = false;
	l__Timestop2__55:FireServer(2, "shadowdio");
	l__Humanoid__6.WalkSpeed = 18;
	l__Humanoid__6.JumpPower = 50;
	wait(2);
	l__Untimestop__56:FireServer();
	u54 = false;
	u33 = false;
	wait(25);
	u53 = false;
end;
l__Humanoid__6.Died:Connect(function()
	if u54 == true then
		untimestop();
	end;
end);
function untimestop()
	l__Untimestop__56:FireServer();
end;
local u57 = false;
local l__Theme__58 = l__StandHumanoidRootPart__9.Theme;
local l__Menacing__59 = l__ReplicatedStorage__1.Menacing;
function posefunc()
	if u1 == false then
		if u57 == false then
			if u57 == false then
				u1 = true;
				v15:Play(0.1, 1, 1);
				l__StandAppear__6:Play();
				local v112, v113, v114 = pairs(l__Stand__8:GetChildren());
				while true do
					local v115, v116 = v112(v113, v114);
					if v115 then

					else
						break;
					end;
					v114 = v115;
					coroutine.resume(coroutine.create(function()
						local v117 = 1 - 1;
						while true do
							if v116 ~= l__StandHumanoidRootPart__9 then
								if v116.ClassName ~= "Sound" then
									if v116 ~= l__Stand__8.StandRarm then
										if v116 ~= l__Stand__8.StandLarm then
											if v116 ~= l__Stand__8["Stand Head"] then
												if v116 ~= l__Stand__8["Stand Torso"] then
													wait();
													l__Transparency__8:FireServer(v116, v116.Transparency - 0.2);
												end;
											end;
										end;
									end;
								end;
							end;
							if 0 <= 1 then
								if v117 < 5 then

								else
									break;
								end;
							elseif 5 < v117 then

							else
								break;
							end;
							v117 = v117 + 1;						
						end;
						if v116 ~= l__StandHumanoidRootPart__9 then
							if v116 ~= l__Stand__8.StandRarm then
								if v116 ~= l__Stand__8.StandLarm then
									if v116 ~= l__Stand__8["Stand Head"] then
										if v116 ~= l__Stand__8["Stand Torso"] then
											l__Transparency__8:FireServer(v116, 0);
										end;
									end;
								end;
							end;
						end;
					end));				
				end;
				spawn(function()
					wait(1.4);
					v15:Stop();
					v16:Play();
				end);
				l__Humanoid__6.WalkSpeed = 0;
				l__Humanoid__6.JumpPower = 0;
				l__Theme__58:Play();
				wait(1.4);
				u57 = true;
				l__Menacing__59:FireServer(true);
				return;
			end;
		elseif u57 == true then
			local v118, v119, v120 = pairs(l__Stand__8:GetChildren());
			while true do
				local v121, v122 = v118(v119, v120);
				if v121 then

				else
					break;
				end;
				v120 = v121;
				coroutine.resume(coroutine.create(function()
					local v123 = 1 - 1;
					while true do
						if v122 ~= l__StandHumanoidRootPart__9 then
							if v122.ClassName ~= "Sound" then
								if v122 ~= l__Stand__8.StandRarm then
									if v122 ~= l__Stand__8.StandLarm then
										if v122 ~= l__Stand__8["Stand Head"] then
											if v122 ~= l__Stand__8["Stand Torso"] then
												wait();
												l__Transparency__8:FireServer(v122, v122.Transparency + 0.2);
											end;
										end;
									end;
								end;
							end;
						end;
						if 0 <= 1 then
							if v123 < 5 then

							else
								break;
							end;
						elseif 5 < v123 then

						else
							break;
						end;
						v123 = v123 + 1;					
					end;
					if v122 ~= l__StandHumanoidRootPart__9 then
						if v122 ~= l__Stand__8.StandRarm then
							if v122 ~= l__Stand__8.StandLarm then
								if v122 ~= l__Stand__8["Stand Head"] then
									if v122 ~= l__Stand__8["Stand Torso"] then
										l__Transparency__8:FireServer(v122, 1);
									end;
								end;
							end;
						end;
					end;
				end));			
			end;
			v15:Stop(0.3);
			v16:Stop(0.3);
			l__Theme__58:Stop();
			if l__Disabled__7.Value == false then
				l__Humanoid__6.WalkSpeed = 18;
				l__Humanoid__6.JumpPower = 50;
			elseif l__Disabled__7.Value == true then
				l__Humanoid__6.WalkSpeed = 4;
				l__Humanoid__6.JumpPower = 10;
			end;
			u1 = false;
			u57 = false;
			l__Menacing__59:FireServer(false);
		end;
	elseif u57 == true then
		v118, v119, v120 = pairs(l__Stand__8:GetChildren());
		while true do
			v121, v122 = v118(v119, v120);
			if v121 then

			else
				break;
			end;
			v120 = v121;
			coroutine.resume(coroutine.create(function()
				v123 = 1 - 1;
				while true do
					if v122 ~= l__StandHumanoidRootPart__9 then
						if v122.ClassName ~= "Sound" then
							if v122 ~= l__Stand__8.StandRarm then
								if v122 ~= l__Stand__8.StandLarm then
									if v122 ~= l__Stand__8["Stand Head"] then
										if v122 ~= l__Stand__8["Stand Torso"] then
											wait();
											l__Transparency__8:FireServer(v122, v122.Transparency + 0.2);
										end;
									end;
								end;
							end;
						end;
					end;
					if 0 <= 1 then
						if v123 < 5 then

						else
							break;
						end;
					elseif 5 < v123 then

					else
						break;
					end;
					v123 = v123 + 1;				
				end;
				if v122 ~= l__StandHumanoidRootPart__9 then
					if v122 ~= l__Stand__8.StandRarm then
						if v122 ~= l__Stand__8.StandLarm then
							if v122 ~= l__Stand__8["Stand Head"] then
								if v122 ~= l__Stand__8["Stand Torso"] then
									l__Transparency__8:FireServer(v122, 1);
								end;
							end;
						end;
					end;
				end;
			end));		
		end;
		v15:Stop(0.3);
		v16:Stop(0.3);
		l__Theme__58:Stop();
		if l__Disabled__7.Value == false then
			l__Humanoid__6.WalkSpeed = 18;
			l__Humanoid__6.JumpPower = 50;
		elseif l__Disabled__7.Value == true then
			l__Humanoid__6.WalkSpeed = 4;
			l__Humanoid__6.JumpPower = 10;
		end;
		u1 = false;
		u57 = false;
		l__Menacing__59:FireServer(false);
	end;
end;
local l__RoadRoller__60 = l__StandHumanoidRootPart__9.RoadRoller;
function roadroller()
	if u1 == true then
		return;
	end;
	if standappear == true then
		return;
	end;
	u1 = true;
	v14:Play();
	l__RoadRoller__60:Play();
	local v124, v125, v126 = pairs(l__Character__5.Steamroller:GetChildren());
	while true do
		local v127, v128 = v124(v125, v126);
		if v127 then

		else
			break;
		end;
		v126 = v127;
		coroutine.resume(coroutine.create(function()
			local v129 = 1 - 1;
			while true do
				if v128.ClassName == "UnionOperation" then
					wait();
					l__Transparency__8:FireServer(v128, v128.Transparency - 0.2);
				end;
				if 0 <= 1 then
					if v129 < 5 then

					else
						break;
					end;
				elseif 5 < v129 then

				else
					break;
				end;
				v129 = v129 + 1;			
			end;
			l__Transparency__8:FireServer(v128, 0);
		end));	
	end;
	wait();
	u1 = false;
	local v130, v131, v132 = pairs(l__Character__5.Steamroller:GetChildren());
	while true do
		local v133, v134 = v130(v131, v132);
		if v133 then

		else
			break;
		end;
		v132 = v133;
		coroutine.resume(coroutine.create(function()
			local v135 = 1 - 1;
			while true do
				if v134.ClassName == "UnionOperation" then
					wait();
					l__Transparency__8:FireServer(v134, v134.Transparency + 0.2);
				end;
				if 0 <= 1 then
					if v135 < 5 then

					else
						break;
					end;
				elseif 5 < v135 then

				else
					break;
				end;
				v135 = v135 + 1;			
			end;
			l__Transparency__8:FireServer(v134, 1);
		end));	
	end;
end;
dodgecooldown = false;
local l__Dodge__61 = l__StandHumanoidRootPart__9.Dodge;
local l__Dodge__62 = l__ReplicatedStorage__1.Dodge;
function dodge()
	if u1 == true then
		return;
	end;
	if dodgecooldown == true then
		return;
	end;
	u1 = true;
	dodgecooldown = true;
	v17:Play();
	l__Dodge__61:Play();
	l__Dodge__62:FireServer();
	local v136 = Instance.new("BodyVelocity");
	v136.MaxForce = Vector3.new(100000, 0, 100000);
	v136.P = math.huge;
	v136.Velocity = l__HumanoidRootPart__34.CFrame.lookVector * 50;
	v136.Parent = l__Character__5.HumanoidRootPart;
	game.Debris:AddItem(v136, 0.25);
	wait(0.4);
	u1 = false;
	wait(3);
	dodgecooldown = false;
end;
local u63 = false;
local l__Taunt__64 = l__ReplicatedStorage__1.Taunt;
local l__Head__65 = l__Character__5.Head;
function taunt()
	if u63 == true then
		return;
	end;
	u63 = true;
	local v137 = math.random(1, 2);
	if v137 == 1 then
		l__Taunt__64:FireServer(l__Head__65, "rbxassetid://3899314918", 7, 5.2, 0);
		return;
	end;
	if v137 == 2 then
		l__Taunt__64:FireServer(l__Head__65, "rbxassetid://3899312914", 5, 5.2, 0);
	end;
end;
local u66 = false;
local l__STWRTZ__67 = l__ReplicatedStorage__1.STWRTZ;
local u68 = 0;
function STWRTZ()
	if u1 == true then
		return;
	end;
	if u66 == false then
		v21:Play(0.1, 1, 1);
		l__Humanoid__6.JumpPower = 0;
		l__Humanoid__6.WalkSpeed = 0;
		l__STWRTZ__67:FireServer(true);
		print("stwrtz has been made true.");
		wait(1.5);
		u66 = true;
		return;
	end;
	if u66 == true then
		v21:Stop(0.1);
		l__STWRTZ__67:FireServer(false);
		print("stwrtz has been made false.");
		l__Humanoid__6.JumpPower = 50;
		l__Humanoid__6.WalkSpeed = 18;
		u68 = 0;
		u1 = false;
		wait(0);
		u66 = false;
	end;
end;
local l__Torso__69 = l__Character__5.Torso;
mouse.Button1Down:connect(function()
	if l__Torso__69.Anchored == true then
		return;
	end;
	if l__Disabled__7.Value == true then
		return;
	end;
	punch();
end);
mouse.KeyDown:connect(function(p3)
	if l__Torso__69.Anchored == true then
		return;
	end;
	if l__Disabled__7.Value == true then
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
	if p3 == "g" then
		posefunc();
	end;
	if p3 == "n" then
		taunt();
	end;
end);
local l__Damage__70 = l__ReplicatedStorage__1.Damage;
function hito(p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16)
	if l__Disabled__7.Value == true then
		return;
	end;
	local v138, v139, v140 = pairs(workspace:GetChildren());
	while true do
		local v141, v142 = v138(v139, v140);
		if v141 then

		else
			break;
		end;
		if p4.Anchored == true then
			return;
		end;
		if v142:FindFirstChild("Humanoid") then
			if v142:FindFirstChild("HumanoidRootPart") then
				if v142 ~= l__Character__5 then
					if (v142:FindFirstChild("HumanoidRootPart").Position - p4.Position).magnitude < p6 then
						if v142:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p4.Anchored then
								return;
							end;
							local l__HumanoidRootPart__143 = v142:FindFirstChild("HumanoidRootPart");
							l__Damage__70:FireServer(v142:FindFirstChild("Humanoid"), p5, p7, p9, p10, p11, p12, p13, p14, p15, p16);
							local v144 = Instance.new("StringValue");
							v144.Name = "alabo";
							v144.Parent = l__HumanoidRootPart__143;
							delay(p8, function()
								v144:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;
		if v142:FindFirstChild("Stand") then
			if v142.Stand:FindFirstChild("Stand Torso") then
				if v142 ~= l__Character__5 then
					if v142 ~= l__Character__5[l__Stand__8.Name] then
						if (v142.Stand:FindFirstChild("Stand Torso").Position - p4.Position).magnitude < p6 then
							if v142:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
								if p4.Anchored then
									return;
								end;
								local l__HumanoidRootPart__145 = v142:FindFirstChild("HumanoidRootPart");
								l__Damage__70:FireServer(v142:FindFirstChild("Humanoid"), p5, p7, p9, p10, p11, p12, p13, p14, p15, p16);
								local v146 = Instance.new("StringValue");
								v146.Name = "alabo";
								v146.Parent = l__HumanoidRootPart__145;
								delay(p8, function()
									v146:Destroy();
								end);
							end;
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__Knock__71 = l__ReplicatedStorage__1.Knock;
function hito2(p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29)
	if l__Disabled__7.Value == true then
		return;
	end;
	local v147, v148, v149 = pairs(workspace:GetChildren());
	while true do
		local v150, v151 = v147(v148, v149);
		if v150 then

		else
			break;
		end;
		if p17.Anchored == true then
			return;
		end;
		if v151:FindFirstChild("Humanoid") then
			if v151:FindFirstChild("HumanoidRootPart") then
				if v151 ~= l__Character__5 then
					if (v151:FindFirstChild("HumanoidRootPart").Position - p17.Position).magnitude < p19 then
						if v151:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p17.Anchored then
								return;
							end;
							local l__Humanoid__152 = v151:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__153 = v151:FindFirstChild("HumanoidRootPart");
							l__Damage__70:FireServer(l__Humanoid__152, p18, p20, p22, p23, p24, p25, p26, p27, p28, p29);
							l__Knock__71:FireServer(l__Humanoid__152);
							local v154 = Instance.new("StringValue");
							v154.Name = "alabo";
							v154.Parent = l__HumanoidRootPart__153;
							delay(p21, function()
								v154:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;
		if v151:FindFirstChild("Stand") then
			if v151.Stand:FindFirstChild("Stand Torso") then
				if v151 ~= l__Character__5 then
					if v151 ~= l__Character__5[l__Stand__8.Name] then
						if (v151.Stand:FindFirstChild("Stand Torso").Position - p17.Position).magnitude < p19 then
							if v151:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
								if p17.Anchored then
									return;
								end;
								local l__Humanoid__155 = v151:FindFirstChild("Humanoid");
								local l__HumanoidRootPart__156 = v151:FindFirstChild("HumanoidRootPart");
								l__Damage__70:FireServer(l__Humanoid__155, p18, p20, p22, p23, p24, p25, p26, p27, p28, p29);
								l__Knock__71:FireServer(l__Humanoid__155);
								local v157 = Instance.new("StringValue");
								v157.Name = "alabo";
								v157.Parent = l__HumanoidRootPart__156;
								delay(p21, function()
									v157:Destroy();
								end);
							end;
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__VampireDamage__72 = l__ReplicatedStorage__1.VampireDamage;
function hito3(p30, p31, p32, p33, p34, p35, p36)
	local v158, v159, v160 = pairs(workspace:GetChildren());
	while true do
		local v161, v162 = v158(v159, v160);
		if v161 then

		else
			break;
		end;
		v160 = v161;
		if p30.Anchored == true then
			return;
		end;
		if v162:FindFirstChild("Humanoid") then
			if v162:FindFirstChild("HumanoidRootPart") then
				if v162 ~= l__Character__5 then
					if (v162:FindFirstChild("HumanoidRootPart").Position - p30.Position).magnitude < p31 then
						if v162:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p30.Anchored then
								return;
							end;
							local l__Humanoid__163 = v162:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__164 = v162:FindFirstChild("HumanoidRootPart");
							l__VampireDamage__72:FireServer(l__Humanoid__163, p32, p34, p35, p36);
							l__Knock__71:FireServer(l__Humanoid__163);
							local v165 = Instance.new("StringValue");
							v165.Name = "alabo";
							v165.Parent = l__HumanoidRootPart__164;
							delay(p33, function()
								v165:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__VampireFreeze__73 = l__ReplicatedStorage__1.VampireFreeze;
function hito4(p37, p38, p39, p40, p41, p42, p43)
	local v166, v167, v168 = pairs(workspace:GetChildren());
	while true do
		local v169, v170 = v166(v167, v168);
		if v169 then

		else
			break;
		end;
		v168 = v169;
		if p37.Anchored == true then
			return;
		end;
		if v170:FindFirstChild("Humanoid") then
			if v170:FindFirstChild("HumanoidRootPart") then
				if v170 ~= l__Character__5 then
					if (v170:FindFirstChild("HumanoidRootPart").Position - p37.Position).magnitude < p38 then
						if v170:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p37.Anchored then
								return;
							end;
							local l__Humanoid__171 = v170:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__172 = v170:FindFirstChild("HumanoidRootPart");
							l__VampireFreeze__73:FireServer(l__Humanoid__171, p39, p41, p42, p43);
							local v173 = Instance.new("StringValue");
							v173.Name = "alabo";
							v173.Parent = l__HumanoidRootPart__172;
							delay(p40, function()
								v173:Destroy();
							end);
							wait(1);
							l__Knock__71:FireServer(l__Humanoid__171);
						end;
					end;
				end;
			end;
		end;	
	end;
end;
function hito5(p44, p45, p46, p47, p48, p49, p50, p51, p52, p53, p54, p55, p56)
	if l__Disabled__7.Value == true then
		return;
	end;
	local v174, v175, v176 = pairs(workspace:GetChildren());
	while true do
		local v177, v178 = v174(v175, v176);
		if v177 then

		else
			break;
		end;
		if p44.Anchored == true then
			return;
		end;
		if v178:FindFirstChild("Humanoid") then
			if v178:FindFirstChild("HumanoidRootPart") then
				if v178 ~= l__Character__5 then
					if (v178:FindFirstChild("HumanoidRootPart").Position - p44.Position).magnitude < p46 then
						if v178:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p44.Anchored then
								return;
							end;
							local l__Humanoid__179 = v178:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__180 = v178:FindFirstChild("HumanoidRootPart");
							l__Damage__70:FireServer(l__Humanoid__179, p45, p47, p49, p50, p51, p52, p53, p54, p55, p56);
							l__Knock__71:FireServer(l__Humanoid__179);
							local v181 = Instance.new("StringValue");
							v181.Name = "alabo";
							v181.Parent = l__HumanoidRootPart__180;
							delay(p48, function()
								v181:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;
		if v178:FindFirstChild("Stand") then
			if v178.Stand:FindFirstChild("Stand Torso") then
				if v178 ~= l__Character__5 then
					if v178 ~= l__Character__5[l__Stand__8.Name] then
						if (v178.Stand:FindFirstChild("Stand Torso").Position - p44.Position).magnitude < p46 then
							if v178:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
								if p44.Anchored then
									return;
								end;
								local l__Humanoid__182 = v178:FindFirstChild("Humanoid");
								local l__HumanoidRootPart__183 = v178:FindFirstChild("HumanoidRootPart");
								l__Damage__70:FireServer(l__Humanoid__182, p45, p47, p49, p50, p51, p52, p53, p54, p55, p56);
								l__Knock__71:FireServer(l__Humanoid__182);
								local v184 = Instance.new("StringValue");
								v184.Name = "alabo";
								v184.Parent = l__HumanoidRootPart__183;
								delay(p48, function()
									v184:Destroy();
								end);
							end;
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__Anchor__74 = l__ReplicatedStorage__1.Anchor;
local u75 = l__Character__5["Right Arm"];
local u76 = l__Character__5["Left Arm"];
local u77 = l__Character__5["Right Leg"];
local u78 = l__Character__5["Left Leg"];
game.Lighting.TS.Changed:Connect(function()
	if game.Lighting.TS.Value == true then
		if u33 == true then
			return;
		else
			l__Anchor__74:FireServer(l__Stand_Torso__7, true);
			l__Anchor__74:FireServer(l__Stand_Right_Arm__14, true);
			l__Anchor__74:FireServer(l__Stand_Left_Arm__29, true);
			l__Anchor__74:FireServer(l__Stand_Head__10, true);
			l__Anchor__74:FireServer(l__Torso__69, true);
			l__Anchor__74:FireServer(u75, true);
			l__Anchor__74:FireServer(u76, true);
			l__Anchor__74:FireServer(u77, true);
			l__Anchor__74:FireServer(u78, true);
			l__Anchor__74:FireServer(l__Head__65, true);
			return;
		end;
	end;
	if game.Lighting.TS.Value == false then
		l__Anchor__74:FireServer(l__Stand_Torso__7, false);
		l__Anchor__74:FireServer(l__Stand_Right_Arm__14, false);
		l__Anchor__74:FireServer(l__Stand_Left_Arm__29, false);
		l__Anchor__74:FireServer(l__Stand_Head__10, false);
		l__Anchor__74:FireServer(l__Torso__69, false);
		l__Anchor__74:FireServer(u75, false);
		l__Anchor__74:FireServer(u76, false);
		l__Anchor__74:FireServer(u77, false);
		l__Anchor__74:FireServer(u78, false);
		l__Anchor__74:FireServer(l__Head__65, false);
	end;
end);
if game.Lighting.TS.Value == true then
	l__Anchor__74:FireServer(l__Stand_Torso__7, true);
	l__Anchor__74:FireServer(l__Stand_Right_Arm__14, true);
	l__Anchor__74:FireServer(l__Stand_Left_Arm__29, true);
	l__Anchor__74:FireServer(l__Stand_Head__10, true);
	l__Anchor__74:FireServer(l__Torso__69, true);
	l__Anchor__74:FireServer(u75, true);
	l__Anchor__74:FireServer(u76, true);
	l__Anchor__74:FireServer(u77, true);
	l__Anchor__74:FireServer(u78, true);
	l__Anchor__74:FireServer(l__Head__65, true);
end;
if game.Lighting.TimeAccel.Enabled == true then
	l__Humanoid__6.WalkSpeed = 5;
	l__Humanoid__6.JumpPower = 0;
elseif game.Lighting.TimeAccel.Enabled == false then
	l__Humanoid__6.WalkSpeed = 18;
	l__Humanoid__6.JumpPower = 50;
end;
l__ReplicatedStorage__1.BerserkClient.OnClientEvent:connect(function()
	game.Lighting.Ambient = Color3.fromRGB(0, 0, 122);
	game.Lighting.Berserk.Enabled = true;
	l__Humanoid__6.WalkSpeed = 4;
	l__Humanoid__6:SetStateEnabled(3, false);
	wait(2.5);
	l__Humanoid__6.WalkSpeed = 18;
	l__Humanoid__6:SetStateEnabled(3, true);
	game.Lighting.Ambient = Color3.fromRGB(150, 150, 150);
	game.Lighting.Berserk.Enabled = false;
end);
local l__Die__79 = l__StandHumanoidRootPart__9.Die;
local l__Death__80 = l__ReplicatedStorage__1.Death;
l__Humanoid__6.HealthChanged:connect(function()
	if l__Humanoid__6.Health < 1 then
		for v185, v186 in pairs(l__Stand__8:GetChildren()) do
			coroutine.resume(coroutine.create(function()
				for v187 = 1, 5 do
					if v186 ~= l__StandHumanoidRootPart__9 and v186.ClassName ~= "Sound" then
						wait();
						l__Transparency__8:FireServer(v186, v186.Transparency + 0.2);
						l__Transparency__8:FireServer(l__face__11, v186.Transparency + 0.2);
					end;
				end;
				if v186 ~= l__StandHumanoidRootPart__9 then
					l__Transparency__8:FireServer(v186, 1);
					l__Transparency__8:FireServer(l__face__11, 1);
				end;
			end));
		end;
		l__Humanoid__6:SetStateEnabled(3, false);
		l__Humanoid__6:SetStateEnabled(15, false);
		l__Die__79:Play();
		l__Death__80:FireServer(false);
	end;
end);
local l__Knocked__81 = l__ReplicatedStorage__1.Knocked;
local l__GetUp__82 = l__ReplicatedStorage__1.GetUp;
l__ReplicatedStorage__1.KnockClient.OnClientEvent:connect(function(p57)
	if l__Character__5.Block.Value == true then
		return;
	end;
	l__Knocked__81:FireServer();
	l__Humanoid__6:SetStateEnabled(3, false);
	wait(1.25);
	if l__Humanoid__6.Health >= 1 then
		l__GetUp__82:FireServer();
		l__Humanoid__6:SetStateEnabled(3, true);
	end;
end);
l__Taunt__64.OnClientEvent:Connect(function()
	u63 = false;
end);
l__VampireDamage__72.OnClientEvent:Connect(function()
	v19:Play(0.1, 1, 1);
	u20 = true;
	u1 = true;
	l__Bloodsuck__19:Play();
	wait(2);
	v19:Stop(0.2);
	u1 = false;
	l__Humanoid__6.JumpPower = 50;
	l__Trail__13:FireServer(l__Stand__8.StandRarm.Trail, false);
	u20 = false;
end);
local l__Voice2__83 = l__StandHumanoidRootPart__9.Voice2;
l__VampireFreeze__73.OnClientEvent:Connect(function()
	l__Humanoid__6.WalkSpeed = 0;
	u20 = true;
	wait(1);
	v18:Play(0.1, 1, 1);
	l__Voice2__83:Play();
	wait(1);
	l__Humanoid__6.WalkSpeed = 18;
	u1 = false;
	l__Humanoid__6.JumpPower = 50;
	l__Trail__13:FireServer(l__Stand__8.StandRarm.Trail, false);
	l__Trail__13:FireServer(l__Stand__8.StandLarm.Trail, false);
	u20 = false;
end);
wait(10);
u53 = false;
