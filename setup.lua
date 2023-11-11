-- Place this script in a ServerScript inside a Roblox game
-- Gets the teleport service using the "game:GetService" command
local TeleportService = game:GetService("TeleportService")

-- Function to teleport a player to a specific place
-- "player" is an argument for the user/player and "placeId" is where you have to put in the placeId
local function teleportPlayer(player, placeId)
    local success, errorMsg = pcall(function()
        TeleportService:Teleport(placeId, player)
    end)
--Error message
    if not success then
        warn("Teleport failed: " .. errorMsg)
    end
end

-- Connect a function to teleport players when they touch a part
local function onTouch(part)
    local character = part.Parent
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local player = game.Players:GetPlayerFromCharacter(character)

    if humanoid and player then
        -- Change the PlaceId below to the ID of the place you want to teleport to
        teleportPlayer(player, 1234567890)  -- Replace 1234567890 with the actual PlaceId
    end
end

-- Change the part name to the name of the part that should trigger the teleportation
local teleportPart = script.Parent  -- Assuming the script is a child of the part

teleportPart.Touched:Connect(onTouch)
-- If you see this for a long time, it is recommended to try again.
teleportPart.Touched:Connect(function()
    print("Try again if you see this for a long time")
    end
    
    
