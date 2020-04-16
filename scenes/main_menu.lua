local composer = require("composer")
local widget = require("widget")
local C = require("constants")



-- Buttons

function continueGame()

end

local buttons = {
	{
		img = "sprites/button/button_play.png",
		imgPressed = "sprites/button/button_play_pressed.png",
		func = continueGame,
	},
	{
		img = "sprites/button/button_levels.png",
		imgPressed = "sprites/button/button_levels_pressed.png",
		func = function() composer.gotoScene("scenes.minigame_select") end,
	},
	{
		img = "sprites/button/button_settings.png",
		imgPressed = "sprites/button/button_settings_pressed.png",
		func = function() composer.gotoScene("scenes.settings") end,
	},
}



-- Constants

local menuHeight = #buttons * C.menuButtonHeight + (#buttons - 1) * C.menuButtonInterval
local firstButtonY = (display.contentHeight - menuHeight) / 2



-- The scene

local scene = composer.newScene()
scene:addEventListener("create", function (event)
	local background = display.newImageRect(scene.view, C.menuBackgroundImage, display.contentWidth, display.contentHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY
	
	local currentY = C.menuButtonHeight / 2 + firstButtonY
	for i = 1, #buttons do
		local button = widget.newButton(C.menuButtonOptions(currentY, buttons[i].img, buttons[i].imgPressed, buttons[i].func))
		scene.view:insert(button)
    	currentY = currentY + C.menuButtonHeight + C.menuButtonInterval
    end
end)
return scene
