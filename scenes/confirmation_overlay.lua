local scene = composer.newScene()
scene:addEventListener("create", function(event)
	local background = display.newImageRect(scene.view, C.confirmationOverlayImage, C.confirmationScreenWidth, C.confirmationScreenHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local shift = C.menuButtonHeight / 2 + 3*C.pixelSize

	confirmButton = widget.newButton({
		x = display.contentCenterX - shift,
		y = display.contentCenterY + 4 * C.pixelSize,
		width = C.menuButtonHeight,
		height = C.menuButtonHeight,
		defaultFile = "sprites/button/button_yes.png",
		overFile = "sprites/button/button_yes_pressed.png",
		onPress = function() 
			if (system.getPreference("app", "sound", "boolean")) then
				audio.play(buttonPressSound)
			end
		end,
		onRelease = function()
			if (system.getPreference("app", "sound", "boolean")) then
				audio.play(buttonReleaseSound)
			end
			composer.hideOverlay()
			if event.params.onConfirm then
				event.params.onConfirm()
			end
		end
	})
	scene.view:insert(confirmButton)

	denyButton = widget.newButton({
		x = display.contentCenterX + shift,
		y = display.contentCenterY + 4 * C.pixelSize,
		width = C.menuButtonHeight,
		height = C.menuButtonHeight,
		defaultFile = "sprites/button/button_no.png",
		overFile = "sprites/button/button_no_pressed.png",
		onPress = function() 
			if (system.getPreference("app", "sound", "boolean")) then
				audio.play(buttonPressSound)
			end
		end,
		onRelease = function()
			if (system.getPreference("app", "sound", "boolean")) then
				audio.play(buttonReleaseSound)
			end
			composer.hideOverlay()
			if event.params.onDeny then
				event.params.onDeny()
			end
		end
	})
	scene.view:insert(denyButton)
end)
return scene