local composer = require("composer")
local widget = require("widget")
local C = require("constants")



-- Minigames

local minigames = {
	{
		img = "sprites/button/button_reach.png",
		imgPressed = "sprites/button/button_reach_pressed.png",
		id = 1
	},
	{
		img = "sprites/button/button_reach.png",
		imgPressed = "sprites/button/button_reach_pressed.png",
		id = 2
	},
}



-- Constants

local menuHeight = #minigames * C.menuButtonHeight + (#minigames - 1) * C.menuButtonInterval
local firstButtonY = (display.contentHeight - menuHeight) / 2



-- The scene

local scene = composer.newScene()
scene:addEventListener("create", function()
	local background = display.newImageRect(scene.view, C.menuBackgroundImage, display.contentWidth, display.contentHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local currentY = C.menuButtonHeight / 2 + firstButtonY
	for i = 1, #minigames do
		local button = widget.newButton(C.menuButtonOptions(
			currentY, 
			minigames[i].img, 
			minigames[i].imgPressed,
			function ()
	    		composer.gotoScene("scenes.level_select", {
	    			params = {
	    				minigameId = minigames[i].id
	    			}
	    		})
	    	end
		))
		scene.view:insert(button)
    	currentY = currentY + C.menuButtonHeight + C.menuButtonInterval
    end
end)
return scene
