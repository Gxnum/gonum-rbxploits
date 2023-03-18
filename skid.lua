local args = {
    [1] = game:GetService("Players").normalguy00996544.Character.Humanoid,
    [2] = CFrame.new(-6214.2763671875, 582.3088989257812, -457.6213073730469) * CFrame.Angles(-3.1415927410125732, -0.13978280127048492, -3.1415927410125732),
    [3] = 100,
    [4] = 3,
    [5] = Vector3.new(-83.76251983642578, 1.0000213384628296, -267.17755126953125),
    [6] = "rbxassetid://0",
    [7] = 0.2,
    [8] = nil --[[Color3]],
    [9] = "rbxassetid://6308606116",
    [10] = 1,
    [11] = 2
}
for _ = 1, 999999999 do
    wait(0.3)
    game:GetService("ReplicatedStorage").Damage:FireServer(unpack(args))
end 