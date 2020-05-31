return function (buttonsGetter, firstButtonY)
	local scene = composer.newScene()
	scene:addEventListener("create", function(event)
		scene.buttons = buttonsGetter(event.params)

		drawBackground(scene.view)
		drawTopPanel(scene.view)
		drawCollectiblesAmount(scene.view)

		local menuHeight = #scene.buttons * C.menuButtonHeight + (#scene.buttons - 1) * C.menuButtonInterval
		local firstButtonY = (display.contentHeight - menuHeight) / 2
		local currentY = C.menuButtonHeight / 2 + firstButtonY
		for i = 1, #scene.buttons do
			local button
			if (not scene.buttons[i].price or scene.buttons[i].price < (system.getPreference("app", "points", "number") or 0)) then
				-- button available, show button
				button = widget.newButton({
					x = display.contentCenterX, 
					y = currentY,
					width = C.menuButtonWidth,
					height = C.menuButtonHeight,
					defaultFile = scene.buttons[i].img,
					overFile = scene.buttons[i].imgPressed,
					onRelease = function()
						scene.buttons[i].func()
					end
				})
				scene.view:insert(button)
			else
				-- button is not available, show static image and price

				image = display.newImageRect("sprites/button/button_long_empty.png", C.menuButtonWidth, C.menuButtonHeight)
				image.x = display.contentCenterX
				image.y = currentY
				image.fill.effect = "filter.desaturate"
				image.fill.effect.intensity = 0.9
				scene.view:insert(image)

				local collectibleImage = display.newImageRect(scene.view, C.collectibleCollectedImage, C.menuButtonHeight, C.menuButtonHeight)
				local amountGroup = drawInt(scene.buttons[i].price)

				collectibleImage.x = display.contentCenterX - collectibleImage.width / 2 + amountGroup.width / 2 + C.pixelSize * 3.5
				collectibleImage.y = currentY

				amountGroup.x = collectibleImage.x - collectibleImage.width / 2 - C.pixelSize
				amountGroup.y = currentY
				scene.view:insert(amountGroup)
			end
	    	currentY = currentY + C.menuButtonHeight + C.menuButtonInterval
	    end
	end)
	return scene
end
