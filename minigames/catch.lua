local T = {}



T.img = "sprites/button/button_reach.png" -- temporary image
T.imgPressed = "sprites/button/button_reach_pressed.png" -- temporary image



T.height = 1
T.width = math.sqrt(3) / 2 * T.height
T.gridSize = T.height / 60



function T:init(mapData)
	self.map = display.newGroup()
	for i, row in ipairs(mapData.data) do
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
		end

		self.map[i] = row
	end
end



return T