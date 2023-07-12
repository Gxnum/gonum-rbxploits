cd = false
function hit()
	if cd == false then
		cd = true
		game:GetService("ReplicatedStorage").rob:FireServer()
		wait()
		cd = false
	end
end

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(key)
	if key == "q" then
        hit()
    end
end) 

