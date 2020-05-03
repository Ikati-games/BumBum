local T = {}



T.img = "sprites/button/button_catch.png"
T.imgPressed = "sprites/button/button_catch_pressed.png"



T.height = 21
T.width = math.sqrt(3) / 2 * T.height
T.gridSize = T.height / 60
T.rotated = true

if T.rotated then
	T.width, T.height = T.height, T.width
end



function T.getRandomMapData(seed)
	math.randomseed(seed)

	-- select random pattern
	local patterns = {
		{
			data = {
				{3,3,1,1,1,1,1,1,1,},
				 {3,1,1,1,1,1,1,1,1,},
				{3,1,1,1,1,1,1,1,1,1,},
				 {1,1,1,2,2,2,2,1,1,1,},
				{1,1,1,2,2,2,2,2,1,1,1,},
				 {1,1,1,2,2,2,2,1,1,1,},
				{3,1,1,1,1,1,1,1,1,1,},
				 {3,1,1,1,1,1,1,1,1,},
				{3,3,1,1,1,1,1,1,1,},
			},
			[1] = {
				min = 10,
				max = 20,
			},
			[2] = {
				min = 1,
				max = 2,
			},
		},
		{
			data = {
				{3,3,1,1,1,1,1,1,1,},
				 {3,1,1,1,1,1,1,1,1,},
				{3,1,1,2,1,1,1,2,1,1,},
				 {1,1,2,1,1,1,1,2,1,1,},
				{1,1,2,1,1,3,1,1,2,1,1,},
				 {1,1,2,1,1,1,1,2,1,1,},
				{3,1,1,2,1,1,1,2,1,1,},
				 {3,1,1,1,1,1,1,1,1,},
				{3,3,1,1,1,1,1,1,1,},
			},
			[1] = {
				min = 10,
				max = 20,
			},
			[2] = {
				min = 1,
				max = 1,
			},
		},
	}
	local pattern = patterns[math.random(#patterns)]
	patterns = nil

	-- will be result of the function
	local mapData = pattern.data

	-- gather all cells info
	local cells = {}
	for i in pairs(mapData) do
		for j in pairs(mapData[i]) do
			if (not cells[mapData[i][j]]) then
				cells[mapData[i][j]] = {}
			end
			local cellsOfCurrentType = cells[mapData[i][j]]
			cellsOfCurrentType[#cellsOfCurrentType + 1] = {i = i, j = j}
		end
	end

	-- remove all except first N random cells
	for cellType in pairs(cells) do
		if (pattern[cellType]) then
			shuffle(cells[cellType])
			local k = math.random(pattern[cellType].min, pattern[cellType].max) + 1
			while true do
				local cellToRemove = cells[cellType][k]
				if not cellToRemove then break end
				mapData[cellToRemove.i][cellToRemove.j] = 0
				k = k + 1
			end
		end
	end

	-- done
	return mapData
end



function T:addSprite(hex, spriteId)
	local spritePath = ({
		[1] = "sprites/bum/bum.png",
		[2] = "sprites/janitor/janitor.png",
	})[spriteId]
	if (spritePath == nil) then return end

	local sheet = graphics.newImageSheet(spritePath, {
		width = 16,
		height = 16,
		numFrames = 2,
	})

	local image = display.newSprite(self.map, sheet, {
	    {
	        name = "animation",
	        start = 1,
	        count = 2,
	        time = 500,
	        loopCount = 0
	    },
	})
	image.x = hex.x
	image.y = hex.y

	image:play("animation")

	return image
end



local function neighbours(coords)
	local d = (coords.i % 2 == 0) and 1 or -1
	return {
		{i = coords.i,		j = coords.j - 1}, 
		{i = coords.i,		j = coords.j + 1}, 
		{i = coords.i - 1,	j = coords.j}, 
		{i = coords.i + 1,	j = coords.j},
		{i = coords.i - 1,	j = coords.j + d}, 
		{i = coords.i + 1,	j = coords.j + d}, 
	}
end



function T:makeMove(hex, i, j)
	if (self.mapData[i][j] ~= 0) then return end
	
	self:addSprite(hex, 1)
	self.mapData[i][j] = 1

	local win = true

	-- for each janitor, perform bfs search and make a move
	for key, janitor in pairs(self.janitors) do

		local costArray = {}
		for i in ipairs(self.mapData) do
			costArray[i] = {}
			for j in ipairs(self.mapData[i]) do
				if self.mapData[i][j] ~= 3 then
					costArray[i][j] = -1
				end
			end
		end
		costArray[janitor.i][janitor.j] = 0

		local queue = {{i = janitor.i, j = janitor.j}}
		local queueLowest = 1
		local queueHighest = 1

		local breakToNextJanitor = false
		while not breakToNextJanitor and queueLowest <= queueHighest do
			-- pop
			local currentCoords = queue[queueLowest]
			queue[queueLowest] = nil
			queueLowest = queueLowest + 1

			for _, nextCoords in pairs(neighbours(currentCoords)) do
				if (costArray[nextCoords.i] == nil or costArray[nextCoords.i][nextCoords.j] == nil) then
					-- out of bounds, restore path
					local currentCost = costArray[currentCoords.i][currentCoords.j]
					if (currentCost == 0) then 
						-- janitor escaped, game losed
						self:lose()
						return
					end
					while currentCost > 1 do
						for _, nextCoords in pairs(neighbours(currentCoords)) do
							if (costArray[nextCoords.i] and costArray[nextCoords.i][nextCoords.j] == currentCost - 1) then
								currentCost = currentCost - 1
								currentCoords = nextCoords
							end
						end
					end

					-- move to the found cell
					win = false
					local hex = self.hexes[currentCoords.i][currentCoords.j]
					self.mapData[janitor.i][janitor.j] = 0
					self.mapData[currentCoords.i][currentCoords.j] = 2
					janitor.sprite.x = hex.x
					janitor.sprite.y = hex.y
					self.janitors[key].i = currentCoords.i
					self.janitors[key].j = currentCoords.j
					breakToNextJanitor = true
					break
				elseif (costArray[nextCoords.i][nextCoords.j] == -1 and self.mapData[nextCoords.i][nextCoords.j] == 0) then
					costArray[nextCoords.i][nextCoords.j] = costArray[currentCoords.i][currentCoords.j] + 1

					-- put
					queue[queueHighest + 1] = {i = nextCoords.i, j = nextCoords.j}
					queueHighest = queueHighest + 1
				end
			end
		end
	end

	if win then
		playSound("janitor")
		self:win()
	end
end



function T:init(mapData)
	self.mapData = {}
	self.janitors = {}
	self.hexes = {}
	self.map = display.newGroup()
	for i, row in ipairs(mapData) do
		self.mapData[i] = {}
		self.hexes[i] = {}

		for j, cell in ipairs(row) do
			self.mapData[i][j] = mapData[i][j]

			local hex
			if (T.rotated) then
				hex = display.newPolygon(
					self.map,
					T.width / 2 + (T.width / 4 * 3 + T.gridSize) * (i - 1), -- x
					((i % 2 == 0) and (T.height + T.gridSize / 2) or (T.height / 2)) + (T.height + T.gridSize) * (j - 1), -- y
					{ -- hexagon vertices
						T.width / 4,		0,
						T.width * 3 / 4,	0,
						T.width,			T.height / 2,
						T.width * 3 / 4,	T.height,
						T.width / 4,		T.height,
						0,					T.height / 2,
					}
				)
			else
				hex = display.newPolygon(
					self.map,
					((i % 2 == 0) and (T.width + T.gridSize / 2) or (T.width / 2)) + (T.width + T.gridSize) * (j - 1), -- x
					T.height / 2 + (T.height / 4 * 3 + T.gridSize) * (i - 1), -- y
					{ -- hexagon vertices
						0,					T.height / 4,
						T.width / 2,		0,
						T.width,			T.height / 4,
						T.width,			T.height * 3 / 4,
						T.width / 2,		T.height,
						0,					T.height * 3 / 4,
					}
				)
			end
			if cell ~= 3 then -- 3 is void
				hex:setFillColor(0.6, 0.6, 0.6)
				hex:addEventListener("tap", function(event) self:makeMove(hex, i, j) end)
			else
				hex.alpha = 0
			end
			hex:toBack()
			self.hexes[i][j] = hex

			local sprite = self:addSprite(hex, cell)
			if (cell == 2) then -- 2 is janitor
				self.janitors[#self.janitors + 1] = {i = i, j = j, sprite = sprite}
			end
		end
	end
end



return T