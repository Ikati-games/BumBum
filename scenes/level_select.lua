local scene = composer.newScene()
scene.collectibleIndicators = {}
scene:addEventListener("create", function(event)
	-- background
	local background = display.newImageRect(scene.view, C.menuBackgroundImage, display.contentWidth, display.contentHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local xIndex = -1
	local y = C.levelSelectInterval + C.menuButtonHeight / 2 + C.topPanelHeight

	for i = 1, C.levelsAmount[event.params.minigameId] do
		local levelId = i

		-- button to go to level
		local button = widget.newButton({
			x = display.contentCenterX + xIndex * (C.levelSelectInterval + C.menuButtonHeight), 
			y = y,
			width = C.menuButtonHeight,
			height = C.menuButtonHeight,
			defaultFile = "sprites/button/button_"..i..".png",
			overFile = "sprites/button/button_"..i.."_pressed.png",
			onPress = function() 
				if (system.getPreference("app", "sound", "boolean")) then
					audio.play(buttonPressSound)
				end
			end,
			onRelease = function()
				if (system.getPreference("app", "sound", "boolean")) then
					audio.play(buttonReleaseSound)
				end
				composer.gotoScene("scenes.level", {
					params = {
						minigameId = event.params.minigameId,
						levelId = levelId
					}
				})
			end
		})
		scene.view:insert(button)

		-- collectible indicator
		for _, levelWithCollectible in pairs(C.collectibles[event.params.minigameId]) do
			if (i == levelWithCollectible) then
				local collectibleIndicatorImage = (system.getPreference("app", "collectibleCollected_"..event.params.minigameId.."_"..levelId, "boolean")) and "sprites/trashcan/trashcan_open.png" or "sprites/trashcan/trashcan.png"
				local collectibleIndicator = display.newImageRect(scene.view, collectibleIndicatorImage, C.menuButtonHeight / 2, C.menuButtonHeight / 2)
				collectibleIndicator.x = button.x + C.menuButtonHeight / 2.5
				collectibleIndicator.y = button.y + C.menuButtonHeight / 2.5
				scene.view:insert(collectibleIndicator)
				scene.collectibleIndicators[i] = collectibleIndicator
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