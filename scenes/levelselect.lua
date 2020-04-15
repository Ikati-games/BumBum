local composer = require("composer")



-- Constants

local minigamesLevels = {
	[1] = {
		{
			name = "Level 1",
			id = 1
		},
		{
			name = "Level 2",
			id = 2
		},
	},
	[2] = {
		{
			name = "Level 1",
			id = 1
		},
		{
			name = "Level 2",
			id = 2
		},
	}
}
local buttonInterval = 20
local buttonSize = 44
local buttonColor = 0.75, 0.78, 1
local firstButtonY = 10



-- The scene

local scene = composer.newScene()
scene:addEventListener("create", function(event)
	levels = minigamesLevels[event.params.minigameId]
	local currentY = firstButtonY
	for i = 1, #levels do
		local button = display.newText(scene.view, levels[i].name, display.contentCenterX, currentY, native.systemFont, buttonSize)
    	button:setFillColor(buttonColor)
    	button:addEventListener("tap", function ()
    		composer.gotoScene("scenes.level", {
    			params = {
    				minigameId = event.params.minigameId,
    				levelId = levels[i].id
    			}
    		})
    	end)
    	currentY = currentY + buttonSize + buttonInterval
    end
end)
return scene
