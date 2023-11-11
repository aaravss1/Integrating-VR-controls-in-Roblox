-- This script assumes you have a VR Rig with appropriate parts (e.g., Humanoid, VR controllers)
-- Movement setup
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local vrService = game:GetService("VRService")
local vrEnabled = vrService.VREnabled

if vrEnabled then
    -- VR-specific setup
    local leftController = character:WaitForChild("LeftHand")  -- Replace with the actual left controller part
    local rightController = character:WaitForChild("RightHand") -- Replace with the actual right controller part
    
    -- Example: Handle movement based on controller input
    vrService.InputChanged:Connect(function(input, gameProcessed)
        if not gameProcessed and input.UserInputType == Enum.UserInputType.Thumbstick then
            -- Assuming thumbstick input for movement
            local thumbstickValue = input.Position
            local movementVector = Vector3.new(thumbstickValue.x, 0, thumbstickValue.y)
            humanoid:Move(movementVector * 5)  -- Adjust speed as needed
        end
    end)
end
-------------------------------------------------------------------------------------------------------
