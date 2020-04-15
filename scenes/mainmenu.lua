local composer = require("composer")



-- Buttons

function continueGame()

end

local buttons = {
	{
		text = "Continue",
		func = continueGame
	},
	{
		text = "Select level",
		func = function() composer.gotoScene("scenes.minigameselect") end
	},
	{
		text = "Settings",
		func = function() composer.gotoScene("scenes.settings") end
	},
}



-- Constants

local buttonInterval = 20
local buttonSize = 44
local buttonColor = 0.75, 0.78, 1
local menuHeight = #buttons * buttonSize + (#buttons - 1) * buttonInterval
local firstButtonY = (display.contentHeight - menuHeight) / 2



-- The scene

local scene = composer.newScene()
function scene:create(event)
	local sceneGroup = self.view
	
	local currentY = firstButtonY
	for i = 1, #buttons do
		local button = display.newText(sceneGroup, buttons[i].text, display.contentCenterX, currentY, native.systemFont, buttonSize)
    	button:setFillColor(buttonColor)
    	button:addEventListener("tap", buttons[i].func)
    	currentY = currentY + buttonSize + buttonInterval
    end
end
scene:addEventListener("create", scene)
return scene
