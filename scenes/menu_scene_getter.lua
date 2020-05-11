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
			local button = widget.newButton({
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
	    	currentY = currentY + C.menuButtonHeight + C.menuButtonInterval
	    end
	end)
	return scene
end
