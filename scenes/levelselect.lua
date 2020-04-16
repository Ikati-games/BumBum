local composer = require("composer")
local widget = require("widget")
local C = require("constants")



-- Levels

local minigamesLevels = {
	[1] = {
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
	},
	[2] = {
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
}



-- Constants

local firstButtonY = 10



-- The scene

local scene = composer.newScene()
scene:addEventListener("create", function(event)
	local background = display.newImageRect(scene.view, C.menuBackgroundImage, display.contentWidth, display.contentHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	levels = minigamesLevels[event.params.minigameId]
	local currentY = C.menuButtonHeight / 2 + firstButtonY
	for i = 1, #levels do
		local button = widget.newButton(C.menuButtonOptions(
			currentY, 
			levels[i].img, 
			levels[i].imgPressed,
			function ()
	    		composer.gotoScene("scenes.level", {
	    			params = {
	    				minigameId = event.params.minigameId,
	    				levelId = levels[i].id
	    			}
	    		})
	    	end
		))
		scene.view:insert(button)
    	currentY = currentY + C.menuButtonHeight + C.menuButtonInterval
    end
end)
return scene
