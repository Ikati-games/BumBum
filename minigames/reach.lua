T = {}

T.img = "sprites/button/button_reach.png"
T.imgPressed = "sprites/button/button_reach_pressed.png"

function T:swipe(dx, dy)
	local player = self.map:findObject("player")
	local finish = self.map:findObject("finish")
	local walls = self.map:findLayer("walls")
	local traps = self.map:listTypes("trap")
	local janitors = self.map:listTypes("janitor")
	local collectible = self.map:findObject("collectible")

	while true do

		-- look at current cell

			-- check for collectible
			if (collectible and player.tileX == collectible.tileX and player.tileY == collectible.tileY) then
				self.collectibleCollected = true
				collectible:removeSelf()
				collectible = nil
			end

			-- check for win
			if (player.tileX == finish.tileX and player.tileY == finish.tileY) then
				self.win()
				return
			end


		-- check for barrier ahead

			-- check for janitor
			for _, janitor in pairs(janitors) do
				if (player.tileX + dx == janitor.tileX and player.tileY + dy == janitor.tileY) then
					-- push janitor
					while true do

						-- check for traps
						for _, trap in pairs(traps) do
							if (janitor.tileX + dx == trap.tileX and janitor.tileY + dy == trap.tileY) then
									if (dx == 0 and not trap.isVerticalAllowed or
										dy == 0 and not trap.isHorizontalAllowed) then
											-- can not pass through, break trap
											trap:removeSelf()
											trap = nil
											janitor:removeSelf()
											janitor = nil
											return -- stop player
									end
							end
						end

						-- check for walls
						if (walls.tiles[janitor.tileY + dy] == nil or walls.tiles[janitor.tileY + dy][janitor.tileX + dx] ~= 0) then return end

						-- move
						janitor:translate(dx*self.map.tileWidth, dy*self.map.tileHeight)
						janitor.tileX = janitor.tileX + dx
						janitor.tileY = janitor.tileY + dy

					end
				end
			end

			-- check for unpassable trap
			for _, trap in pairs(traps) do
				if (player.tileX + dx == trap.tileX and player.tileY + dy == trap.tileY or
					player.tileX == trap.tileX and player.tileY == trap.tileY) then
						if (dx == 0 and not trap.isVerticalAllowed or
							dy == 0 and not trap.isHorizontalAllowed) then
								-- can not pass through
								return
						end
				end
			end

			-- check for walls
			if (walls.tiles[player.tileY + dy] == nil or walls.tiles[player.tileY + dy][player.tileX + dx] ~= 0) then return end


		-- no barriers, can move now

			-- collapse trap
			for key, trap in pairs(traps) do
				if (player.tileX == trap.tileX and player.tileY == trap.tileY) then
					trap.fill = {
						type = "image",
						filename = "sprites/trap/trap_closed.png"
					}
					trap.isVerticalAllowed = false
					trap.isHorizontalAllowed = false
					break
				end
			end

			-- move
			player:translate(dx*self.map.tileWidth, dy*self.map.tileHeight)
			player.tileX = player.tileX + dx
			player.tileY = player.tileY + dy

	end

end

return T