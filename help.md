# Small help page to guide you.
----------------------------------------
----------------------------------------------

## TeleportService: This service is used to teleport players from one place to another.
---------------------------
## teleportPlayer function: This function takes a player and a placeId as parameters and attempts to teleport the player to the specified place.
---------------------------
## onTouch function: This function is connected to the Touched event of the specified part (teleportPart). When a player's character touches this part, it identifies the player, gets their humanoid, and then calls the teleportPlayer function with the player and the desired placeId.
---------------------------
## teleportPart: This variable represents the part that triggers the teleportation. Make sure to set it to the correct part in your game.
---------------------------
## Replace the PlaceId: You need to replace the placeholder 1234567890 with the actual PlaceId of the destination place where you want to teleport players.