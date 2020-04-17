T = {}

T.img = "sprites/button/button_reach.png"
T.imgPressed = "sprites/button/button_reach_pressed.png"

T.swipe = function(map, dx, dy)
	player = map:findObject("player")
	walls = map:findLayer("walls")
	
	while true do
		nextTileX = math.floor((player.x + dx*player.width/2 + dx) / map.tileWidth)
		nextTileY = math.floor((player.y + dy*player.height/2 + dy) / map.tileHeight)
		if (walls.tiles[nextTileY][nextTileX] ~= 0) then break end

		player:translate(dx*map.tileWidth, dy*map.tileHeight)
	end
end

return T