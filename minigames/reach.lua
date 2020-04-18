T = {}

T.img = "sprites/button/button_reach.png"
T.imgPressed = "sprites/button/button_reach_pressed.png"

T.swipe = function(map, dx, dy, win)
	local player = map:findObject("player")
	local finish = map:findObject("finish")
	local walls = map:findLayer("walls")
	local traps = map:listTypes("trap")

	while true do

		-- check for win
		if (player.tileX == finish.tileX and player.tileY == finish.tileY) then
			win()
			return
		end


		-- check for barrier ahead

			-- check for unpassable trap
			for _, trap in pairs(traps) do
				if (player.tileX + dx == trap.tileX and player.tileY + dy == trap.tileY or
					player.tileX == trap.tileX and player.tileY == trap.tileY) then
						if (dx == 0 and not trap.isVerticalAllowed or
							dy == 0 and not trap.isHorisontalAllowed) then
								-- can not pass through
								return
						end
						break
				end
			end

			-- check for walls
			if (walls.tiles[player.tileY + dy][player.tileX + dx] ~= 0) then return end


		-- no barriers, can move now

			-- collapse trap
			for key, trap in pairs(traps) do
				if (player.tileX == trap.tileX and player.tileY == trap.tileY) then
					trap.fill = {
						type = "image",
						filename = "sprites/trap/trap_closed.png"
					}
					trap.isVerticalAllowed = false
					trap.isHorisontalAllowed = false
					break
				end
			end

			-- move
			player:translate(dx*map.tileWidth, dy*map.tileHeight)
			player.tileX = player.tileX + dx
			player.tileY = player.tileY + dy

	end

end

return T