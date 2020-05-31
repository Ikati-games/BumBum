local scene = composer.newScene()
scene:addEventListener("create", function(event)

	-- background
	local background = display.newImageRect(scene.view, C.loseOverlayImage, C.winScreenWidth, C.winScreenHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	-- variables
	local minigameId = event.params.minigameId
	local levelId = event.params.levelId

	-- repeat button
	local repeatButton = widget.newButton({
		x = display.contentCenterX - C.winScreenWidth / 2 + C.menuButtonHeight / 2 + 3 * C.pixelSize,
		y = display.contentCenterY + C.winScreenHeight / 2 - C.menuButtonHeight / 2 - 2 * C.pixelSize,
		width = C.menuButtonHeight,
		height = C.menuButtonHeight,
		defaultFile = "sprites/button/button_repeat.png",
		overFile = "sprites/button/button_repeat_pressed.png",
		onRelease = function()
			composer.hideOverlay()
			composer.removeScene("scenes.level")
			composer.gotoScene("scenes.level", {
				params = {
					minigameId = minigameId,
					levelId = levelId,
				}
			})
		end
	})
	scene.view:insert(repeatButton)

	-- level select button
	local levelSelectButton = widget.newButton({
		width = C.settingsButtonWidth,
		height = C.menuButtonHeight,
		defaultFile = "sprites/button/button_menu.png",
		overFile = "sprites/button/button_menu_pressed.png",
		onRelease = function()
			backButton.isVisible = true
			composer.hideOverlay()
			composer.removeScene("scenes.level")
			composer.gotoScene("scenes.level_select", {
				params = {
					minigameId = minigameId,
				}
			})
		end
	})
	levelSelectButton.x = display.contentCenterX + C.winScreenWidth / 2 - C.settingsButtonWidth / 2 - 2* C.pixelSize
	levelSelectButton.y = repeatButton.y
	scene.view:insert(levelSelectButton)
end)
return scene