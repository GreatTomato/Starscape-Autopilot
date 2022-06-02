
local UserInputService = game:GetService("UserInputService")
local virtualUser = game:GetService("VirtualUser")
virtualUser:CaptureController()
local me = game:GetService("Players").LocalPlayer
local waito me.PlayerGui.Overlays.Standard.System:WaitForChild("Destination")
if me.PlayerGui.Overlays.Standard.System.Destination.Visible then
local target
local children = workspace:GetChildren()
while (not me.PlayerGui.QuickWarp.Enabled) do
game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Space,false,game)
wait(0.01)
end
local childs2 = me.PlayerGui.QuickWarp:WaitForChild("Items")
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
		print(target.Arrow.Visible)
		Aligned = true
        game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.Space,false,game)
	end
	wait(0.001)
    x=0
    y=128
    mousemoverel(x,y)
end
end
