local scene = composer.newScene()
scene:addEventListener("create", function(event)
	local background = display.newImageRect(scene.view, C.winOverlayImage, C.winScreenWidth, C.winScreenHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local minigameId = event.params.minigameId
	local levelId = event.params.levelId

	-- collectible
	for _, levelWithCollectible in pairs(C.collectibles[event.params.minigameId]) do
		if (levelId == levelWithCollectible) then
			local collectibleIndicatorImage = (system.getPreference("app", "collectibleCollected_"..minigameId.."_"..levelId, "boolean")) and C.collectibleCollectedImage or C.collectibleUncollectedImage
			local collectibleIndicator = display.newImageRect(scene.view, collectibleIndicatorImage, C.menuButtonHeight, C.menuButtonHeight)
			collectibleIndicator.x = display.contentCenterX
			collectibleIndicator.y = display.contentCenterY
			scene.view:insert(collectibleIndicator)
			break
		end
	end

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

	-- the second button
	local nextLevelButton
	local data = require("minigames."..minigameId)
	if (levelId + 1 > C.levelsAmount[minigameId] and not data.getRandomMapData) then
		-- no more levels, "to the level select" button
		nextLevelButton = widget.newButton({
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
	else
		-- next level
		nextLevelButton = widget.newButton({
			width = C.settingsButtonWidth,
			height = C.menuButtonHeight,
			defaultFile = "sprites/button/button_next.png",
			overFile = "sprites/button/button_next_pressed.png",
			onRelease = function()
				composer.hideOverlay()
				composer.removeScene("scenes.level", true)
				composer.gotoScene("scenes.level", {
					params = {
						minigameId = minigameId,
						levelId = levelId + 1,
					}
				})
			end
		})
	end

	nextLevelButton.x = display.contentCenterX + C.winScreenWidth / 2 - C.settingsButtonWidth / 2 - 2* C.pixelSize
	nextLevelButton.y = repeatButton.y
	scene.view:insert(nextLevelButton)
end)
return scene