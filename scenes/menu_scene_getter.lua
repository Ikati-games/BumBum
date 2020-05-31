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
			else
				-- button is not available, show static image and price

				button = display.newImageRect(scene.buttons[i].img, C.menuButtonWidth, C.menuButtonHeight)
				button.x = display.contentCenterX
				button.y = currentY
				button.fill.effect = "filter.desaturate"
				button.fill.effect.intensity = 0.9

				--TODO: price
			end
			scene.view:insert(button)
	    	currentY = currentY + C.menuButtonHeight + C.menuButtonInterval
	    end
	end)
	return scene
end
