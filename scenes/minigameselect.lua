local composer = require("composer")



-- Constants

local minigames = {
	{
		name = "Minigame 1",
		id = 1
	},
	{
		name = "Minigame 2",
		id = 2
	},
}
local buttonInterval = 20
local buttonSize = 44
local buttonColor = 0.75, 0.78, 1
local menuHeight = #minigames * buttonSize + (#minigames - 1) * buttonInterval
local firstButtonY = (display.contentHeight - menuHeight) / 2



-- The scene

local scene = composer.newScene()
scene:addEventListener("create", function()
	local currentY = firstButtonY
	for i = 1, #minigames do
		local button = display.newText(scene.view, minigames[i].name, display.contentCenterX, currentY, native.systemFont, buttonSize)
    	button:setFillColor(buttonColor)
    	button:addEventListener("tap", function ()
    		composer.gotoScene("scenes.levelselect", {
    			params = {
    				minigameId = minigames[i].id
    			}
    		})
    	end)
    	currentY = currentY + buttonSize + buttonInterval
    end
end)
return scene
