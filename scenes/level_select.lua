function gotoLevel(minigameId, levelId)
end



local scene = composer.newScene()
scene:addEventListener("create", function(event)
	local background = display.newImageRect(scene.view, C.menuBackgroundImage, display.contentWidth, display.contentHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local xIndex = -1
	local y = C.levelSelectInterval + C.menuButtonHeight / 2

	for i = 1, C.levelsAmount[event.params.minigameId] do
		local levelId = i

		button = widget.newButton({
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

		xIndex = xIndex + 1
		if (xIndex > 1) then
			xIndex = -1
			y = y + C.levelSelectInterval + C.menuButtonHeight
		end
	end
end)
return scene