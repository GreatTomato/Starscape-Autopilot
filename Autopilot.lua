--loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
local UserInputService = game:GetService("UserInputService")
local virtualUser = game:GetService("VirtualUser")
virtualUser:CaptureController()
local me = game:GetService("Players").LocalPlayer
local waito me.PlayerGui.Overlays.Standard.System:WaitForChild("Destination")
if me.PlayerGui.Overlays.Standard.System.Destination.Visible then

--game:GetService("UserInputService").InputEnded:connect(function(Input)
    --if Input.KeyCode == Enum.KeyCode.Q then
        --nona()--put ur stuff here
local target
local children = workspace:GetChildren()
--for i = 1, #children do
--	local child = children[i]
--	print(child.Name .. " is child number " .. i)
--end
while (not me.PlayerGui.QuickWarp.Enabled) do
game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Space,false,game)
wait(0.01)
end

local childs2 = me.PlayerGui.QuickWarp:WaitForChild("Items")
--wait(2)
local children = me.PlayerGui.QuickWarp.Items:GetChildren()
for i=1,#children do
	if (children[i].Name == "Target") then
		if (children[i].Icon.ImageColor3 == Color3.fromRGB(255,255,80)) then
			target = children[i];
			break
		end
	end
end
local Aligned = false
while(not Aligned) do
	if (target.Label.TextTransparency == 0) then
		--print("Finally")
		print(target.Arrow.Visible)
		Aligned = true
        game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.Space,false,game)
        --virtualUser:SetKeyUp(" ")
	end
	wait(0.001)
    x=0
    y=128
    mousemoverel(x,y)
	--print("No")
end
  end
--end
