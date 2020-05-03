local function goBack(minigameId)
	composer.showOverlay("scenes.confirmation_overlay", {
		isModal = true,
		params = {
			onConfirm = function() 
				composer.removeScene(composer.getSceneName("current"))
				composer.gotoScene("scenes.level_select", {
					params = {
						minigameId = minigameId,
					},
				})
			end,
		}
	})
end

local backButtonEvent = function(event)
	if (event.keyName == "back" and event.phase == "up") then
		goBack(scene.minigameId)
		return true
	end
end

Runtime:addEventListener("key", backButtonEvent)



local function endGame(isWin, minigameId, levelId, randomMode, minigame)
	if (isWin) then
		-- collectible
		if (minigame.collectibleCollected and not system.getPreference("app", "collectibleCollected_"..minigameId.."_"..levelId, "boolean")) then
			-- collected for the first time
			local pref = {points = (system.getPreference("app", "points", "number") or 0) + 1} -- add point
			pref["collectibleCollected_"..minigameId.."_"..levelId] = true -- remember that it is collected
			system.setPreferences("app", pref)
		end

		-- remember that level was completed
		local lastLevelOpened = system.getPreference("app", "lastLevelOpened_"..minigameId, "number") or 1
		local pref = {}
		pref["lastLevelOpened_"..minigameId] = math.max(lastLevelOpened, levelId+1)
		system.setPreferences("app", pref)
	end

	-- show overlay
	composer.showOverlay("scenes."..(isWin and "win" or "lose").."_overlay", {
		isModal = true,
		params = {
			minigameId = minigameId,
			levelId = levelId,
			randomMode = randomMode,
		}
	})
end



local scene = composer.newScene()
scene:addEventListener("create", function(event)

	-- declare variables

	local minigameId = event.params.minigameId
	scene.minigameId = minigameId
	local levelId = event.params.levelId
	local package_path = "levels."..minigameId.."."..levelId


	-- add top panel

	drawTopPanel(scene.view)

	-- used for debug
	display.newText(scene.view, string.format("%s-%d", minigameId, levelId), display.contentCenterX, C.menuButtonInterval)

	local levelSelectButton = widget.newButton({
		x = backButton.x,
		y = backButton.y,
		width = backButton.width,
		height = backButton.height,
		defaultFile = "sprites/button/button_menu.png",
		overFile = "sprites/button/button_menu_pressed.png",
		onRelease = function()
			goBack(minigameId)
		end
	})
	scene.view:insert(levelSelectButton)
 
	local repeatButton = widget.newButton({
		top = C.pixelSize,
		left = display.contentWidth - C.menuButtonHeight - 2*C.pixelSize,
		width = C.menuButtonHeight,
		height = C.menuButtonHeight,
		defaultFile = "sprites/button/button_repeat.png",
		overFile = "sprites/button/button_repeat_pressed.png",
		onRelease = function()
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
								randomMode = randomMode,
							}
						})
					end,
				}
			})
		end
	})
	scene.view:insert(repeatButton)


	-- add minigame mechanics

	local minigame = require("minigames."..minigameId)
	minigame.collectibleCollected = false
	minigame.win = function() endGame(true, minigameId, levelId, event.params.randomMode, minigame) end
	minigame.lose = function() endGame(false, minigameId, levelId, event.params.randomMode) end


	-- load or generate map
	
	local mapData
	if (levelId > C.levelsAmount[minigameId]) then
		mapData = minigame.getRandomMapData(levelId)
	else
		mapData = require(package_path)
	end
	minigame:init(mapData)


	-- scale and place map to designated place

	local map = minigame.map
	scene.view:insert(map)
	map.xScale = display.contentWidth / map.width
	map.yScale = math.min(map.xScale, (display.contentHeight - C.topPanelHeight) / map.height)
	map.xScale = map.yScale
	map.x = display.contentCenterX - map.width * map.xScale / 2
	map.y = display.contentCenterY - map.height * map.yScale / 2 + C.topPanelHeight / 2


	-- transparent rectangle to listen for events

	eventRect = display.newRect(
		scene.view,
		display.contentCenterX,
		display.contentCenterY + C.topPanelHeight / 2,
		display.contentWidth,
		display.contentHeight - C.topPanelHeight
	)
	eventRect.alpha = 0
	eventRect.isHitTestable = true


	-- swipe event
	eventRect:addEventListener("touch", function(event)
		if (event.phase == "ended" and minigame.swipe) then
			local dx = event.x - event.xStart
			local dy = event.y - event.yStart

			if (math.max(math.abs(dx), math.abs(dy)) < C.minSwipeSize) then return end

			local dCoords = {x = 0, y = 0}
			local direction = (math.abs(dx) > math.abs(dy)) and "x" or "y"
			local value = (math.abs(dx) > math.abs(dy)) and dx or dy
			dCoords[direction] = (value > 0) and 1 or -1

			minigame:swipe(dCoords.x, dCoords.y)
		end
		return true
	end)

end)

scene:addEventListener("show", function(event)
	backButton.isVisible = false
end)

scene:addEventListener("destroy", function(event)
	backButton.isVisible = true
	Runtime:removeEventListener("key", backButtonEvent)
end)

return scene