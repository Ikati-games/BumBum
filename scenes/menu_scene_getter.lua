return function (buttonsGetter, firstButtonY)
	local scene = composer.newScene()
	scene:addEventListener("create", function(event)
		buttons = buttonsGetter(event.params)

		local background = display.newImageRect(scene.view, C.menuBackgroundImage, display.contentWidth, display.contentHeight)
		background.x = display.contentCenterX
		background.y = display.contentCenterY


		local menuHeight = #buttons * C.menuButtonHeight + (#buttons - 1) * C.menuButtonInterval
		local firstButtonY = (display.contentHeight - menuHeight) / 2
		local currentY = C.menuButtonHeight / 2 + firstButtonY
		for i = 1, #buttons do
			local button = widget.newButton({
				x = display.contentCenterX, 
				y = currentY,
				width = C.menuButtonWidth,
				height = C.menuButtonHeight,
				defaultFile = buttons[i].img,
				overFile = buttons[i].imgPressed,
				onPress = function() 
					if (system.getPreference("app", "sound", "boolean")) then
						audio.play(buttonPressSound)
					end
				end,
				onRelease = function()
					if (system.getPreference("app", "sound", "boolean")) then
						audio.play(buttonReleaseSound)
					end
					buttons[i].func()
				end
			})
			scene.view:insert(button)
	    	currentY = currentY + C.menuButtonHeight + C.menuButtonInterval
	    end
	end)
	return scene
end
