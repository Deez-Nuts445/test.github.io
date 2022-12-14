local a = {}

-- Get the local player
local player = game.Players.LocalPlayer
-- Get all of the players in the game
local players = game.Players:GetPlayers()

function a.GetClosestPlayer()
  -- Set the minimum distance to a large number
  local minDistance = math.huge
  -- Set the closest player to nil
  local closestPlayer = nil
  -- Loop through all of the players
  for _, otherPlayer in pairs(players) do
    -- Skip the local player
    if otherPlayer == player then
      continue
    end
    -- Get the distance between the local player and the other player
    local distance = (player.Character.PrimaryPart.Position - otherPlayer.Character.PrimaryPart.Position).magnitude
    -- If the distance is less than the minimum distance, set the closest player to the other player and update the minimum distance
    if distance < minDistance then
      closestPlayer = otherPlayer
      minDistance = distance
    end
  end
  -- returns minDistance and closest player
  return closestPlayer,"With a distance of "..minDistance
	end
end

return a
