local tiled = require("libs.ponytiled")



function win(minigameId, levelId)
	composer.showOverlay("scenes.win_overlay", {
		isModal = true,
		params = {
			minigameId = minigameId,
			levelId = levelId,
		}
	})
end



local scene = composer.newScene()
scene:addEventListener("show", function(event)

	-- declare variables

	local minigameId = event.params.minigameId
	local levelId = event.params.levelId
	local path = "levels/"..minigameId
	local package_path = path:gsub("/", ".").."."..levelId


	-- load and draw map

	display.newText(scene.view, string.format("%s-%d", minigameId, levelId), display.contentCenterX, C.menuButtonInterval)
	local mapData = require(package_path)
	local map = tiled.new(mapData, path)
	scene.view:insert(map)


	-- put map to center

	map.xScale = display.contentWidth / map.width
	map.yScale = map.xScale
	map.x = display.contentCenterX - map.width * map.xScale / 2
	map.y = display.contentCenterY - map.height * map.yScale / 2


	-- add minigame mechanics

	local minigameMechanics = require("minigames."..minigameId)

	map:addEventListener("touch", function(event)
		if (event.phase == "ended" and T.swipe) then
			local dx = event.x - event.xStart
			local dy = event.y - event.yStart

			if (math.max(math.abs(dx), math.abs(dy)) < C.minSwipeSize) then return end

			local dCoords = {x = 0, y = 0}
			local direction = (math.abs(dx) > math.abs(dy)) and "x" or "y"
			local value = (math.abs(dx) > math.abs(dy)) and dx or dy
			dCoords[direction] = (value > 0) and 1 or -1

			minigameMechanics.swipe(map, dCoords.x, dCoords.y, function() win(minigameId, levelId) end)
		end
		return true
	end)

end)
return scene
