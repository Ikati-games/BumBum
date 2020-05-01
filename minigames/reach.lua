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



function T:moveTillEnd(who, dx, dy, janitorKey)

	while true do

		-- check for collectible
		if (who == self.player and self.collectible and who.tileX == self.collectible.tileX and who.tileY == self.collectible.tileY) then
			playSound("collect")
			self.collectibleCollected = true
			self.collectible:removeSelf()
			self.collectible = nil
		end

		-- check for win
		if (who == self.player and who.tileX == self.finish.tileX and who.tileY == self.finish.tileY) then
			playSound("reach_win")
			self.win()
			return
		end

		-- janitors stop before finish
		if (janitorKey and who.tileX + dx == self.finish.tileX and who.tileY + dy == self.finish.tileY) then
			return
		end

		-- check for janitor
		for key, janitor in pairs(self.janitors) do
			if (who.tileX + dx == janitor.tileX and who.tileY + dy == janitor.tileY) then
				if who == self.player then
					-- only player can push janitor
					playSound("janitor")
					self:moveTillEnd(janitor, dx, dy, key)
				end
				return -- stop before janitor
			end
		end

		-- check for unpassable trap
		for key, trap in pairs(self.traps) do
			if (who.tileX + dx == trap.tileX and who.tileY + dy == trap.tileY or
				who.tileX == trap.tileX and who.tileY == trap.tileY) then
					if (janitorKey and not trap.isVerticalAllowed and not trap.isHorizontalAllowed) then
							-- janitor removes trap and themself
							playSound("trap")
							trap:removeSelf()
							trap = nil
							self.traps[key] = nil
							who:removeSelf()
							who = nil
							self.janitors[janitorKey] = nil
							return
					end
					if (dx == 0 and not trap.isVerticalAllowed or
						dy == 0 and not trap.isHorizontalAllowed) then
							-- can not pass through
							return
					end
			end
		end

		-- check for walls
		if (self.walls.tiles[who.tileY + dy] == nil or self.walls.tiles[who.tileY + dy][who.tileX + dx] ~= 0) then return end

		-- collapse trap if needed
		if who == self.player then
			for key, trap in pairs(self.traps) do
				if (who.tileX == trap.tileX and who.tileY == trap.tileY) then
					playSound("trap")
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
		playSound("step")
		who:translate(dx*self.map.tileWidth, dy*self.map.tileHeight)
		who.tileX = who.tileX + dx
		who.tileY = who.tileY + dy

	end

end



function T:swipe(dx, dy)
	self:moveTillEnd(self.player, dx, dy)

	local finger = self.map:findObject("finger")
	if (finger and dx == 1 and dy == 0) then
		finger:removeSelf()
		finger = nil
	end
end



return T