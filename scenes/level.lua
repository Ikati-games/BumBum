local tiled = require("libs.ponytiled")



local function win(minigameId, levelId)
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

	local mapData = require(package_path)
	local map = tiled.new(mapData, path)
	scene.view:insert(map)


	-- scale and place map to designated place

	map.xScale = display.contentWidth / map.width
	map.yScale = math.min(map.xScale, (display.contentHeight - C.topPanelHeight) / map.height)
	map.xScale = map.yScale
	map.x = display.contentCenterX - map.width * map.xScale / 2
	map.y = display.contentCenterY - map.height * map.yScale / 2 + C.topPanelHeight / 2


	-- add top panel

	-- used for debug
	-- display.newText(scene.view, string.format("%s-%d", minigameId, levelId), display.contentCenterX, C.menuButtonInterval)

	backButton.isVisible = false

	local levelSelectButton = widget.newButton({
		top = C.pixelSize,
		left = C.pixelSize,
		width = C.settingsButtonWidth,
		height = C.menuButtonHeight,
		defaultFile = "sprites/button/button_menu.png",
		overFile = "sprites/button/button_menu_pressed.png",
		onPress = function() 
			if (system.getPreference("app", "sound", "boolean")) then
				audio.play(buttonPressSound)
			end
		end,
		onRelease = function()
			if (system.getPreference("app", "sound", "boolean")) then
				audio.play(buttonReleaseSound)
			end
			
			composer.showOverlay("scenes.confirmation_overlay", {
				isModal = true,
				params = {
					onConfirm = function() 
						backButton.isVisible = true
						composer.gotoScene("scenes.level_select")
					end,
				}
			})
		end
	})
	scene.view:insert(levelSelectButton)

	local repeatButton = widget.newButton({
		top = C.pixelSize,
		left = display.contentWidth - C.menuButtonHeight - C.pixelSize,
		width = C.menuButtonHeight,
		height = C.menuButtonHeight,
		defaultFile = "sprites/button/button_repeat.png",
		overFile = "sprites/button/button_repeat_pressed.png",
		onPress = function() 
			if (system.getPreference("app", "sound", "boolean")) then
				audio.play(buttonPressSound)
			end
		end,
		onRelease = function()
			if (system.getPreference("app", "sound", "boolean")) then
				audio.play(buttonReleaseSound)
			end
			
			composer.showOverlay("scenes.confirmation_overlay", {
				isModal = true,
				params = {
					onConfirm = function()
						composer.hideOverlay()
						composer.removeScene("scenes.level")
						composer.gotoScene("scenes.level", {
							params = {
								minigameId = minigameId,
								levelId = event.params.levelId,
							}
						})
					end,
				}
			})
		end
	})
	scene.view:insert(repeatButton)


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