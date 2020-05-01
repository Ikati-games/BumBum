local scene = composer.newScene()
scene.collectibleIndicators = {}
scene:addEventListener("create", function(event)
	scene.params = event.params
end)
scene:addEventListener("show", function(event)
	drawBackground(scene.view)
	drawTopPanel(scene.view)
	drawCollectiblesAmount(scene.view)

	-- allow scrolling
	scrollView = widget.newScrollView({
		top = C.topPanelHeight,
		left = 0,
		width = display.contentWidth,
		height = display.contentHeight - C.topPanelHeight,
		horizontalScrollDisabled = true,
		hideBackground = true,
		topPadding = C.levelSelectInterval,
		bottomPadding = C.levelSelectInterval,
	})
	scene.view:insert(scrollView)

	-- manage open/closed levels
	local lastLevelOpened = system.getPreference("app", "lastLevelOpened_"..scene.params.minigameId, "number") or 1

	-- for each level
	local xIndex = -1
	local y = C.menuButtonHeight / 2
	for i = 1, C.levelsAmount[scene.params.minigameId] do
		local levelId = i

		local button
		if (levelId <= lastLevelOpened) then
			-- button to go to level
			button = widget.newButton({
				width = C.menuButtonHeight,
				height = C.menuButtonHeight,
				defaultFile = "sprites/button/button_"..i..".png",
				overFile = "sprites/button/button_"..i.."_pressed.png",
				onRelease = function()
					composer.gotoScene("scenes.level", {
						params = {
							minigameId = scene.params.minigameId,
							levelId = levelId
						}
					})
				end
			})
		else
			-- static image for closed levels
			button = display.newImageRect(scene.view, "sprites/button/button_"..i..".png", C.menuButtonHeight, C.menuButtonHeight)
			button.fill.effect = "filter.desaturate"
			button.fill.effect.intensity = 0.9
		end
		button.x = display.contentCenterX + xIndex * (C.levelSelectInterval + C.menuButtonHeight)
		button.y = y
		scrollView:insert(button)

		-- collectible indicator
		for _, levelWithCollectible in pairs(C.collectibles[scene.params.minigameId]) do
			if (i == levelWithCollectible) then
				local collectibleIndicatorImage = (system.getPreference("app", "collectibleCollected_"..scene.params.minigameId.."_"..levelId, "boolean")) and C.collectibleCollectedImage or C.collectibleUncollectedImage
				local collectibleIndicator = display.newImageRect(scene.view, collectibleIndicatorImage, C.menuButtonHeight / 2, C.menuButtonHeight / 2)
				collectibleIndicator.x = button.x + C.menuButtonHeight / 2.5
				collectibleIndicator.y = button.y + C.menuButtonHeight / 2.5
				if (levelId > lastLevelOpened) then
					collectibleIndicator.fill.effect = "filter.desaturate"
					collectibleIndicator.fill.effect.intensity = 0.9
				end
				scrollView:insert(collectibleIndicator)
				scene.collectibleIndicators[i] = collectibleIndicator
				break
			end
		end

		if (xIndex >= 1) then
			xIndex = -1
			y = y + C.levelSelectInterval + C.menuButtonHeight
		else
			xIndex = xIndex + 1
		end
	end
end)
scene.previousScene = "scenes.minigame_select"
return scene