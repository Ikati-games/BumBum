local T = {}



T.img = "sprites/button/button_catch.png"
T.imgPressed = "sprites/button/button_catch_pressed.png"



T.height = 1
T.width = math.sqrt(3) / 2 * T.height
T.gridSize = T.height / 60
T.bumSize = T.height * 70 / 100



function T:addSprite(hex, spriteId)
	local spritePath = ({
		[1] = "sprites/bum/bum.png",
		[2] = "sprites/janitor/janitor.png",
	})[spriteId]
	local bum = display.newImageRect(self.map, spritePath, T.bumSize, T.bumSize)
	bum.x = hex.x
	bum.y = hex.y
end



function T:init(mapData)
	self.sprites = {}
	self.map = display.newGroup()
	for i, row in ipairs(mapData) do
		for j, cell in ipairs(row) do
			local hex = display.newPolygon(
				self.map, 
				((i % 2 == 0) and (T.width + T.gridSize / 2) or (T.width / 2)) + (T.width + T.gridSize) * (j - 1), -- x
				T.height / 2 + (T.height / 4 * 3 + T.gridSize) * (i - 1), -- y
				{ -- hexagon vertices
					0,				T.height / 4,
					T.width / 2,	0,
					T.width,		T.height / 4,
					T.width,		T.height * 3 / 4,
					T.width / 2,	T.height,
					0,				T.height * 3 / 4,
				}
			)

			-- TODO: add background

			if (cell ~= 0) then
				self:addSprite(hex, cell)
			end

			hex:addEventListener("tap", function(event)
				if (self.sprites[i][j] == 0) then
					self:addSprite(hex, 1)
					self.sprites[i][j] = 1
				end
			end)
		end

		self.sprites[i] = row
	end
end



return T