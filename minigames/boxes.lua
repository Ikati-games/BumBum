local tiled = require("libs.ponytiled")
local T = {}



T.img = "sprites/button/button_boxes.png"
T.imgPressed = "sprites/button/button_boxes_pressed.png"

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
	self.boxes = self.map:listTypes("box")
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
		end
	end

	local allPlatesPressed = true
	for _, plate in pairs(self.plates) do
		if not plate.isPressed then
			allPlatesPressed = false
			break
		end
	end

	if allPlatesPressed then
		for _, gate in pairs(self.gates) do
			gate.isOpen = true
			gate.fill = {
				type = "image",
				filename = "sprites/gate/gate_"..gate.allign.."_open.png"
			}
		end
	else
		for _, gate in pairs(self.gates) do
			gate.isOpen = false
			gate.fill = {
				type = "image",
				filename = "sprites/gate/gate_"..gate.allign..".png"
			}
		end
	end
end

function T:move(who, dx, dy, entityKey, entityType)
	
	local destX = who.tileX + dx
	local destY = who.tileY + dy


	-- check for collectible
	if (who == self.player and self.collectible and destX == self.collectible.tileX and destY == self.collectible.tileY) then
		playSound("collect")
		self.collectibleCollected = true
		self.collectible:removeSelf()
		self.collectible = nil
	end

	-- check for win
	if (who == self.player and destX == self.finish.tileX and destY == self.finish.tileY) then
		playSound("reach_win")
		self.win()
	end

	-- check for janitor
	if who == self.player then
		for key, janitor in pairs(self.janitors) do
			if (destX == janitor.tileX and destY == janitor.tileY) then
				-- only player can push janitor
				playSound("janitor")
				local res = self:move(janitor, dx, dy, key, "janitor")

				if not res then return false end
			end
		end
	end

	-- check for box
	if who == self.player then
		for key, box in pairs(self.boxes) do
			if (destX == box.tileX and destY == box.tileY) then
				-- only player can push janitor
				local res = self:move(box, dx, dy, key, "box")
				
				if not res then return false end
			end
		end
	end

	-- check for unpassable trap
	for key, trap in pairs(self.traps) do
		if (destX == trap.tileX and destY == trap.tileY or
			who.tileX == trap.tileX and who.tileY == trap.tileY) then
				if (entityType == "janitor" and not trap.isVerticalAllowed and not trap.isHorizontalAllowed) then
						-- janitor removes trap and themself
						playSound("trap")
						trap:removeSelf()
						trap = nil
						self.traps[key] = nil
						who:removeSelf()
						who = nil
						self.janitors[janitorKey] = nil
						break
				end
				if (dx == 0 and not trap.isVerticalAllowed or
					dy == 0 and not trap.isHorizontalAllowed) then
						-- can not pass through
						return false
				end
		end
	end

	-- check for walls
	if (self.walls.tiles[destY] == nil or self.walls.tiles[destY][destX] ~= 0) then
		return false
	end

	-- check for unpassable gate
	for _, gate in pairs(self.gates) do
		if (destX == gate.tileX and destY == gate.tileY) then
			if not gate.isOpen then
				-- can not pass through
				return false
			end
		end
	end

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
	self:togglePlate(destX, destY)

	-- move
	playSound("step")
	who:translate(dx*self.map.tileWidth, dy*self.map.tileHeight)
	who.tileX = destX
	who.tileY = destY
	return true
end

function T:swipe(dx, dy)
	self:move(self.player, dx, dy)
end

return T