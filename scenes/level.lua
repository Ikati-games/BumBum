local composer = require("composer")
local C = require("constants")
local tiled = require "libs.ponytiled"



local scene = composer.newScene()
scene:addEventListener("create", function(event)

	-- load and draw map

	local path = "levels/"..event.params.minigameId
	local package_path = path:gsub("/", ".").."."..event.params.levelId
	local mapData = require(package_path)
	local map = tiled.new(mapData, path)


	-- put map to center

	map.xScale = display.contentWidth / map.width
	map.yScale = map.xScale
	map.x = display.contentCenterX - map.width * map.xScale / 2
	map.y = display.contentCenterY - map.height * map.yScale / 2


	-- add minigame mechanics

	local minigameMechanics = require("minigames."..event.params.minigameId)

	Runtime:addEventListener("touch", function(event)
		if (event.phase == "ended" and T.swipe) then
			local dx = event.x - event.xStart
			local dy = event.y - event.yStart

			if (math.max(math.abs(dx), math.abs(dy)) < C.minSwipeSize) then return end

			local dCoords = {x = 0, y = 0}
			local direction = (math.abs(dx) > math.abs(dy)) and "x" or "y"
			local value = (math.abs(dx) > math.abs(dy)) and dx or dy
			dCoords[direction] = (value > 0) and 1 or -1

			minigameMechanics.swipe(map, dCoords.x, dCoords.y)
		end
	end)

end)
return scene
