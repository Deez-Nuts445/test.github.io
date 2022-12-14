local a = {}

-- Get the local player
local player = game.Players.LocalPlayer
-- Get all of the players in the game
local players = game.Players:GetPlayers()

function a.GetClosestPlayer()
  
  local function createNotif(title,text,icon,duration,btn1,btn2,cb)
		game.StarterGui:SetCore("SendNotification", {
			Title = title; 
			Text = text;
			Icon = icon; 
			Duration = duration;
            Button1 = btn1;
            Button2 = btn2;
            Callback = cb
		})
	end
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
  createNotif(closestPlayer,"With a distance of "..minDistance,0,5)
	end
end

return a
