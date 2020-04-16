local composer = require("composer")
local widget = require("widget")
local C = require("constants")

return function (buttonsGetter, firstButtonY)
	local scene = composer.newScene()
	scene:addEventListener("create", function(event)
		buttons = buttonsGetter(event.params)

		local background = display.newImageRect(scene.view, C.menuBackgroundImage, display.contentWidth, display.contentHeight)
		background.x = display.contentCenterX
		background.y = display.contentCenterY

		local currentY = C.menuButtonHeight / 2 + firstButtonY
		for i = 1, #buttons do
			local button = widget.newButton(C.menuButtonOptions(
				currentY, 
				buttons[i].img, 
				buttons[i].imgPressed,
				buttons[i].func
			))
			scene.view:insert(button)
	    	currentY = currentY + C.menuButtonHeight + C.menuButtonInterval
	    end
	end)
	return scene
end
