local tiled = require("libs.ponytiled")
local T = {}



T.img = "sprites/button/button_reach.png"
T.imgPressed = "sprites/button/button_reach_pressed.png"



function T:init(mapData)
	self.map = tiled.new(mapData, path)

	self.player = self.map:findObject("player")
	self.finish = self.map:findObject("finish")
	self.walls = self.map:findLayer("walls")
	self.traps = self.map:listTypes("trap")
	self.janitors = self.map:listTypes("janitor")
	self.collectible = self.map:findObject("collectible")
	self.gates = self.map:listTypes("gate")
	self.plates = self.map:listTypes("plate")
end



function T:togglePlate(tileX, tileY)
	for _, plate in pairs(self.plates) do
		if (tileX == plate.tileX and tileY == plate.tileY) then
			plate.isPressed = not plate.isPressed
			plate.fill = {
				type = "image",
				filename = "sprites/plate/plate"..(plate.isPressed and "_pressed" or "")..".png"
			}
			playSound("plate"..(plate.isPressed and "Press" or "Release"))

			for _, gate in pairs(self.gates) do
				gate.isOpen = not gate.isOpen
				gate.fill = {
					type = "image",
					filename = "sprites/gate/gate_"..gate.allign..(gate.isOpen and "_open" or "")..".png"
				}
			end
		end
	end
end



function T:moveTillEnd(who, dx, dy, janitorKey)

	local stop = false

	while not stop do

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
			stop = true
			break
		end

		-- janitors stop before finish
		if (janitorKey and who.tileX + dx == self.finish.tileX and who.tileY + dy == self.finish.tileY) then
			stop = true
			break
		end

		-- check for janitor
		for key, janitor in pairs(self.janitors) do
			if (who.tileX + dx == janitor.tileX and who.tileY + dy == janitor.tileY) then
				if who == self.player then
					-- only player can push janitor
					playSound("janitor")
					self:moveTillEnd(janitor, dx, dy, key)
				end
				stop = true
				break -- stop before janitor
			end
		end
		if (stop) then break end

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
							stop = true
							break
					end
					if (dx == 0 and not trap.isVerticalAllowed or
						dy == 0 and not trap.isHorizontalAllowed) then
							-- can not pass through
							stop = true
							break
					end
			end
		end
		if (stop) then break end

		-- check for walls
		if (self.walls.tiles[who.tileY + dy] == nil or self.walls.tiles[who.tileY + dy][who.tileX + dx] ~= 0) then
			stop = true
			break
		end

		-- check for unpassable gate
		for _, gate in pairs(self.gates) do
			if (who.tileX + dx == gate.tileX and who.tileY + dy == gate.tileY) then
				if not gate.isOpen then
					-- can not pass through
					stop = true
					break
				end
			end
		end
		if (stop) then break end

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

		-- check for pressed/released plates
		self:togglePlate(who.tileX, who.tileY)
		self:togglePlate(who.tileX + dx, who.tileY + dy)

		-- move
		playSound("step")
		who:translate(dx*self.map.tileWidth, dy*self.map.tileHeight)
		who.tileX = who.tileX + dx
		who.tileY = who.tileY + dy

	end

end



function T:swipe(dx, dy)
	self:moveTillEnd(self.player, dx, dy)

	-- first level tutorial
	local finger = self.map:findObject("finger")
	if (finger and dx == 1 and dy == 0) then
		finger:removeSelf()
		finger = nil
	end
end



return T