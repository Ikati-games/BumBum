local T = {}



T.img = "sprites/button/button_reach.png"
T.imgPressed = "sprites/button/button_reach_pressed.png"



function T:init()
	self.player = self.map:findObject("player")
	self.finish = self.map:findObject("finish")
	self.walls = self.map:findLayer("walls")
	self.traps = self.map:listTypes("trap")
	self.janitors = self.map:listTypes("janitor")
	self.collectible = self.map:findObject("collectible")
end



-- returns true, if moved or false otherwise
function T:moveIfPossible(who, dx, dy, janitorKey)

	-- check for janitor
	for key, janitor in pairs(self.janitors) do
		if (who.tileX + dx == janitor.tileX and who.tileY + dy == janitor.tileY) then
			if who == self.player then
				-- only player can push janitor
				self:moveTillEnd(janitor, dx, dy, key)
			end
			return -- stop before janitor
		end
	end

	-- check for unpassable trap
	for key, trap in pairs(self.traps) do
		if (who.tileX + dx == trap.tileX and who.tileY + dy == trap.tileY or
			who.tileX == trap.tileX and who.tileY == trap.tileY) then
				if (dx == 0 and not trap.isVerticalAllowed or
					dy == 0 and not trap.isHorizontalAllowed) then
						-- can not pass through
						if janitorKey then
							trap:removeSelf()
							trap = nil
							self.traps[key] = nil
							who:removeSelf()
							who = nil
							self.janitors[janitorKey] = nil
						end
						return false
				end
		end
	end

	-- check for walls
	if (self.walls.tiles[who.tileY + dy] == nil or self.walls.tiles[who.tileY + dy][who.tileX + dx] ~= 0) then return false end

	-- collapse trap if needed
	if who == self.player then
		for key, trap in pairs(self.traps) do
			if (who.tileX == trap.tileX and who.tileY == trap.tileY) then
				trap.fill = {
					type = "image",
					filename = "sprites/trap/trap_closed.png"
				}
				trap.isVerticalAllowed = false
				trap.isHorizontalAllowed = false
				break
			end
		end
	end

	-- move
	who:translate(dx*self.map.tileWidth, dy*self.map.tileHeight)
	who.tileX = who.tileX + dx
	who.tileY = who.tileY + dy

	return true
end



function T:moveTillEnd(who, dx, dy, janitorKey)

	while true do

		if who == self.player then

			-- check for collectible
			if (self.collectible and who.tileX == self.collectible.tileX and who.tileY == self.collectible.tileY) then
				self.collectibleCollected = true
				self.collectible:removeSelf()
				self.collectible = nil
			end

			-- check for win
			if (who.tileX == self.finish.tileX and who.tileY == self.finish.tileY) then
				self.win()
				return
			end

		end

		-- try to move
		if (not self:moveIfPossible(who, dx, dy, janitorKey)) then
			return
		end

	end

end



function T:swipe(dx, dy)
	self:moveTillEnd(self.player, dx, dy)
end



return T