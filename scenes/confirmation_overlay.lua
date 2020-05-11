local scene = composer.newScene()
scene:addEventListener("create", function(event)
	local backgroundImage, backgroundWidth, backgroundHeight
	if event.params and event.params.backgroundImage and event.params.backgroundWidth and event.params.backgroundHeight then
		backgroundImage = event.params.backgroundImage
		backgroundWidth = event.params.backgroundWidth
		backgroundHeight = event.params.backgroundHeight
	else
		backgroundImage = C.confirmationOverlayImage
		backgroundWidth = C.confirmationScreenWidth
		backgroundHeight = C.confirmationScreenHeight
	end
	local background = display.newImageRect(scene.view, backgroundImage, backgroundWidth, backgroundHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local shift = C.menuButtonHeight / 2 + C.pixelSize * 3

	confirmButton = widget.newButton({
		x = display.contentCenterX - shift,
		y = display.contentCenterY + backgroundHeight / 2 - C.menuButtonHeight / 2 - C.pixelSize * 2,
		width = C.menuButtonHeight,
		height = C.menuButtonHeight,
		defaultFile = "sprites/button/button_yes.png",
		overFile = "sprites/button/button_yes_pressed.png",
		onRelease = function()
			composer.hideOverlay()
			if event.params and event.params.onConfirm then
				event.params.onConfirm()
			end
		end
	})
	scene.view:insert(confirmButton)

	denyButton = widget.newButton({
		width = C.menuButtonHeight,
		height = C.menuButtonHeight,
		defaultFile = "sprites/button/button_no.png",
		overFile = "sprites/button/button_no_pressed.png",
		onRelease = function()
			composer.hideOverlay()
			if event.params and event.params.onDeny then
				event.params.onDeny()
			end
		end
	})
	denyButton.x = display.contentCenterX + shift
	denyButton.y = confirmButton.y
	scene.view:insert(denyButton)
end)
return scene